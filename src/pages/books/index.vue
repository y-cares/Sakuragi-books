<template>
    <div>
        <TopSwiper :tops="tops"></TopSwiper>   
        <Card v-for="(item, index) in books" :key="index" :book="item"></Card>   
        <p class="text-footer" v-if="!more">没有更多数据......</p>
    </div>
</template>

<script>
import {get} from '@/util'
import Card from '@/components/card'
import TopSwiper from '@/components/top-swiper'

export default {
  data () {
    return {
      books: [],
      page: 0,
      more: true,
      tops: []
    }
  },
  mounted () {
    this.getList()
    this.getTop()
  },
  components: {
    Card,
    TopSwiper
  },
  // 下拉刷新
  onPullDownRefresh () {
    console.log('下拉')
    this.getList()
    this.getTop()
  },
  // 上拉加载更多
  onReachBottom () {
    if (!this.more) {
      return false
    }
    this.page = this.page + 1
    this.getList(this.page)
  },
  methods: {
    async getList (page = 0) {
      if (page === 0) this.more = true
      // 在当前页面显示导航条加载动画。
      wx.showNavigationBarLoading()
      const books = await get('/weapp/booklist', {page: page})
      if (books.data.list.length < 10 && this.page > 0) this.more = false
      if (page === 0) {
        this.books = books.data.list
        // 停止当前页面下拉刷新。
        wx.stopPullDownRefresh()
      } else {
        this.books = this.books.concat(books.data.list)
      }
      // 在当前页面隐藏导航条加载动画。
      wx.hideNavigationBarLoading()
    },
    async getTop () {
      const tops = await get('/weapp/top')
      this.tops = tops.data.list
    }
  }
}
</script>

<style lang="scss" scoped>
.text-footer{
    font-size: 13px;
    line-height: 30px;
    color: #777;
    text-align: center;
    border-top: 1px solid #ebebeb;
}
</style>

