<template>
    <div class="comment-page">
        <CommentList type="comment" :comments="comments"></CommentList>
    </div>
</template>

<script>
import {get} from '@/util'
import CommentList from '@/components/comment-list'

export default {
  data () {
    return {
      comments: [],
      userInfo: {},
      books: []
    }
  },
  components: {
    CommentList
  },
  onPullDownRefresh () {
    this.init()
    wx.stopPullDownRefresh()
  },
  onShow () {
    this.userInfo = wx.getStorageSync('userInfo') || {}
    if (this.userInfo) this.init()
  },
  methods: {
    init () {
      wx.showNavigationBarLoading()
      this.getComments()
      this.getBooks()
      wx.hideNavigationBarLoading()
    },
    async getBooks () {
      const res = await get('/weapp/booklist', {openId: this.userInfo.openId})
      this.books = res.data.list
    },
    async getComments () {
      try {
        const res = await get('/weapp/commentlist', {openId: this.userInfo.openId})
        this.comments = res.data.list || []
      } catch (error) {

      }
    }
  }
}
</script>

<style lang="scss" scoped>
</style>

