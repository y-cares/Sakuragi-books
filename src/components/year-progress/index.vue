<template>
    <div class="progressbar">
        <progress :percent="precent" activeColor="#87CEFF" active="true"/>
        <p>{{year}}已经过去了{{days}}天，<span>{{precent}}%</span></p>
    </div>
</template>

<script>
export default {
  computed: {
    year () {
      return new Date().getFullYear()
    },
    days () {
      const start = new Date()
      start.setMonth(0)
      start.setDate(1)
      // 相隔时间戳
      const disTime = new Date().getTime() - start.getTime()
      return parseInt(disTime / 1000 / 3600 / 24) + 1
    },
    precent () {
      return ((this.days / this.getDayOfYear()) * 100).toFixed(1)
    }
  },
  methods: {
    // 是否是瑞年
    isLeapYear () {
      const year = new Date().getFullYear()
      if (year % 400 === 0) {
        return true
      } else if (year % 4 === 0 && year % 100 !== 0) {
        return true
      } else {
        return false
      }
    },
    // 一年多少天
    getDayOfYear () {
      return this.isLeapYear() ? 366 : 365
    }
  }
}
</script>

<style lang="scss" scoped>
.progressbar{
    text-align: center;
    margin-top: 20px;
    margin-bottom: 50px;
    width: 100%;
    progress{
        margin-bottom: 15px;
        font-size: 15px;
    }
    p{
        font-size: 15px;
        color: #777;
        span{
            color: #87CEFF;
        }
    }
}
</style>

