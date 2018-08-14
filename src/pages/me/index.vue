<template>
    <div class="container">
        <div class="user-info" @click="login">
            <img :src="userInfo.avatarUrl">
            <p>{{userInfo.nickName}}</p>
        </div>
        <YearProgreess></YearProgreess>
        <button v-if="userInfo.openId" @click="scanBook" class="btn">添加图书</button>
    </div>
</template>

<script>
import {loginMixin} from '@/mixin'
import {post, showModal} from '@/util'
import YearProgreess from '@/components/year-progress'

export default {
  data () {
    return {
      userInfo: {
        avatarUrl: '/static/img/unlogin.png',
        nickName: '点击头像'
      }
    }
  },
  computed: {
    isLogin () {
      return !!wx.getStorageSync('userInfo')
    }
  },
  components: {
    YearProgreess
  },
  mixins: [loginMixin],
  created () {
    if (this.isLogin) this.userInfo = wx.getStorageSync('userInfo')
  },
  methods: {
    // 扫码图书
    scanBook () {
      wx.scanCode({
        success: (res) => {
          if (res.result) {
            this.addBook(res.result)
          }
        }
      })
    },
    async addBook (isbn) {
      console.log(isbn)
      const res = await post('/weapp/addbook', {
        isbn,
        openId: this.userInfo.openId
      })
      if (res.code === 0 && res.data.title) {
        showModal('添加成功', `${res.data.title}添加成功`)
      } else {
        showModal('添加失败', `${res.data.msg}`)
      }
    },
    async login () {
      this.userInfo = await this.doLogin()
    }
  }
}
</script>

<style lang="scss" scoped>
@import "../../scss/index";
.container{
    padding: 0 15px;
    .user-info{
        margin-top: 50px;
        text-align: center;
        img{
            width: 75px;
            height: 75px;
            margin: 10px;
            border-radius: 50%;
        }
        p{
            color: #333;
        }
    }
}
</style>



