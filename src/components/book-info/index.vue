<template>
    <div class="book-info">
        <div class="thumb">
            <image :src="info.image" mode="aspectFill"></image>
        </div>
        <div class="info">
            <image class="img" :src="info.image" mode="aspectFit"></image>
            <h2>{{info.title}}</h2>
            <p>{{info.author}}</p>
        </div>
        <div class="owner">
            <image :src="userInfo.url" mode="aspectFit"></image>
            {{userInfo.name}}
            <div class="right text-primary">{{info.rate}}分 <rate :value="info.rate"></rate></div>
        </div>
        <div class="detail">
            {{info.publisher}}
            <div class="right text-red">￥{{info.price}}</div>   
        </div>
        <ul class="tags">
            <li v-for="(item, index) in info.tags" :key="index">{{item}}</li>
        </ul>
        <div class="summary">
            <p v-for="(item, index) in info.summary" :key="index">{{item}}</p>
            <!-- <button class="btn share" open-type="share">分享</button> -->
        </div>
    </div>
</template>

<script>
import Rate from '@/components/rate'

export default {
  props: {
    info: {
      type: [Object, Array],
      default: {}
    }
  },
  computed: {
    userInfo () {
      return this.info.user_info || {}
    }
  },
  components: {
    Rate
  }
}
</script>

<style lang="scss" scoped>
@import "../../scss/index";
.book-info{
    position: relative;
    .thumb{
        width: 750rpx;
        height: 500rpx;
        overflow: hidden;
        margin-bottom: 10px;
        image{
            width: 100%;
            height: 500rpx;
            filter: blur(15px);
        }
    }
    .info{
        color: #fff;
        position: absolute;
        top: 30rpx;
        text-align: center;
        .img{
            height: 300rpx;
            margin: 0 auto;
        }
        h2{
            font-size: 20px;
            padding-top: 10px;
            padding-bottom: 5px;
        }
        p{
            font-size: 14px;
        }
    }
    .owner,.detail{
        padding: 5px 10px;
        overflow: hidden;
        font-size: 14px;
        line-height: 20px;
        .right{
            font-size: 14px;
            float: right;
        }
    }
    .owner{
        image{
            width: 20px;
            height: 20px;
            border-radius: 10px;
            vertical-align: middle;
            margin-right: 5px;
        }
    }
    .tags{
        padding: 5px 10px;
        li{
            display: inline-block;
            font-size: 12px;
            line-height: 12px;
            color: #fff;
            background-color: #87CEFF;
            padding: 5px;
            margin-right: 5px;
            margin-bottom: 5px;
            border-radius: 5px;
        }
    }
    .summary{
        padding: 10px 10px 20px 10px;
        text-align: right;
        p{
            text-indent: 2em;
            font-size: 15px;
            line-height: 30px;
            text-align: left;
        }
        .share{
            display: inline-block;
            width: 30px;
            height: 20px;
            line-height: 20px;
            font-size: 12px;
            padding: 0;
            margin: 5px 0 0 0;
        }
    }
}
</style>

