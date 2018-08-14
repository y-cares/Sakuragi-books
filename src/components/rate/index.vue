<template>
    <div class="rate">
        <span>☆☆☆☆☆☆</span>
        <div class="hollow" :style="style">★★★★★★</div>
    </div>
</template>

<script>
// /vue-tiny-rate
export default {
  props: {
    value: {
      type: [String, Number],
      default: 0
    }
  },
  computed: {
    style () {
      return `width: ${this.value / 2}em`
    }
  }

}
</script>

<style lang="scss" scoped>
.text-primary{
    color: #87CEFF;
}
.rate{
    position: relative;
    display: inline-block;
    .hollow{
        position: absolute;
        display: inline-block;
        top: 0;
        left: 0;
        width: 2.5em;
        overflow: hidden;
    }
}
</style>
