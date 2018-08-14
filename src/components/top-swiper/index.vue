<template>
    <div class="swiper">
        <swiper :indicator-dots="true"
                indicator-color="#87CEFF"
                :autoplay="true"
                :interval="6000"
                :duration="1000"
                :circular="true">
            <div v-for="(item, index) in imgUrl" :key="index">
                <swiper-item>
                    <image v-for="(top, id) in item"
                           :key="id"
                           mode="aspectFit"
                           :src="top.image"
                           class="slide-image"
                           @click="bookDetail(top)"/>
                </swiper-item>
            </div>
        </swiper>
    </div>
</template>

<script>
export default {
  props: {
    tops: {
      type: [Object, Array],
      default: {}
    }
  },
  computed: {
    imgUrl () {
      // 如果通用，就用 chunk 函数
      // 比如 lodash 的 chunk 方法
      let res = this.tops
      return [res.slice(0, 3), res.slice(3, 6), res.slice(6, 9)]
    }
  },
  methods: {
    bookDetail (item) {
      wx.navigateTo({
        url: '/pages/detail/main?id=' + item.id
      })
    }
  }
}
</script>

<style lang="scss" scoped>
.swiper{
    margin-top: 10px;
    .slide-image{
        width: 33%;
        height: 150px;
    }
}
</style>


