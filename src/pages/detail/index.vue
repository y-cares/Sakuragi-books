<template>
    <div>
        <BookInfo :info="info"></BookInfo>
        <CommentList :comments="comments"></CommentList>
        <div class="comment" v-if="showAdd">
            <textarea v-model="comment"
                      maxlength="100"
                      placeholder="请输入100字内图书短评。"></textarea>
            
            <button class="btn" @click="addComments">评论</button>
            <div class="location">
                地理位置：
                <span class="text-primary">{{location}}</span>
                <switch color="#87ceff" :checked="location" @change="getGeo"></switch>
            </div>
            <div class="phone">
                手机型号：
                <span class="text-primary">{{phone}}</span>
                <switch color="#87ceff" :checked="phone" @change="getPhone"></switch>
            </div>
        </div>
        <p v-else class="text-footer">未登录或已经评论过了</p>
    </div>
</template>

<script>
import {get, post, showModal, showSuccess} from '@/util'
import BookInfo from '@/components/book-info'
import CommentList from '@/components/comment-list'

const ak = '0ZCtug6iYMxZ1egDLstVYvEaBEwN1bzS'
const url = 'http://api.map.baidu.com/geocoder/v2/'

export default {
  data () {
    return {
      bookId: '',
      info: {},
      userInfo: {},
      comment: '',
      location: '',
      phone: '',
      comments: []
    }
  },
  computed: {
    showAdd () {
      if (!this.userInfo.openId) return false
      const len = this.comments.filter(v => v.openid === this.userInfo.openId).length
      if (len) return false
      return true
    }
  },
  components: {
    BookInfo,
    CommentList
  },
  mounted () {
    this.bookId = this.$root.$mp.query.id
    this.getDetail()
    this.getComments()
    this.userInfo = wx.getStorageSync('userInfo') || {}
  },
  methods: {
    async getDetail () {
      const res = await get('/weapp/bookdetail', {id: this.bookId})
      // 动态修改 title
      wx.setNavigationBarTitle({
        title: res.data.title
      })
      this.info = res.data
      // console.log(this.info)
    },
    getGeo (e) {
      if (e.target.value) {
        wx.getLocation({
          success: geo => {
            wx.request({
              url,
              data: {
                ak,
                location: `${geo.latitude},${geo.longitude}`,
                output: 'json'
              },
              success: res => {
                console.log(res)
                if (res.data.status === 0) {
                  this.location = res.data.result.addressComponent.city
                } else {
                  this.location = '未知地点'
                  // console.log('出错了')
                }
              }
            })
          }
        })
      } else {
        this.location = ''
      }
    },
    getPhone (e) {
      if (e.target.value) {
        try {
          const res = wx.getSystemInfoSync()
          this.phone = res.model
        } catch (error) {
          this.phone = ''
        }
      } else {
        this.phone = ''
      }
    },
    // 添加评论
    async addComments () {
      if (!this.comment) return
      // 评论内容  手机型号  地理位置  图书id  用户openId
      const data = {
        openId: this.userInfo.openId,
        bookId: this.bookId,
        comment: this.comment,
        phone: this.phone,
        location: this.location
      }
      console.log(data)
      try {
        const res = await post('/weapp/addcomment', data)
        this.comment = ''
        this.getComments()
        // console.log(res.data.msg)
        showSuccess('评论' + res.data.msg)
      } catch (error) {
        showModal('失败', error.msg)
      }
    },
    // 获取评论列表
    async getComments () {
      try {
        const res = await get('/weapp/commentlist', {bookId: this.bookId})
        this.comments = res.data.list || []
      } catch (error) {

      }
    }
  }
}
</script>

<style lang="scss" scoped>
@import "../../scss/index";
.comment{
    padding: 20rpx 20rpx 40rpx 20rpx;
    textarea{
        background-color: #eee;
        font-size: 14px;
        width: 97.5%;
        height: 200px;
        padding: 5px;
    }
    .location, .phone{
        margin-top: 10px;
        overflow: hidden;
        font-size: 16px;
        line-height: 32px;
        switch{
            float: right;
        }
    }
}
.btn{
    margin: 20px 0;
}
</style>

