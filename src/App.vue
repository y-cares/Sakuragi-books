<script>
// 小程序的入口 App.vue 没有 template 模板
export default {
  created () {
    console.log('小程序启动')
  }
}
</script>

<style lang="scss">
*{
    color: #333;
}
.btn{
    color: #fff;
    background: #87CEFF;
    margin-bottom: 20rpx;
    padding-left: 30rpx;
    border: none;
    border-radius: 4rpx;
    font-size: 32rpx;
    line-height: 80rpx;
    height: 80rpx;
    width: 100%;
}
.btn:active{
    background: #63B8FF;
}
</style>
