<template>
    <a :href="detailUrl">
        <div class="book-card">
            <div class="thumb">
                <image class="img"
                        :src="book.image"
                        mode="aspectFit"
                        @click.stop="preview(book.image)"></image>
            </div>
            <ul class="detail">
                <li class="row">
                    <p class="left text-primary">{{book.title}}</p>
                    <p class="right text-primary">{{book.rate}} <rate :value="book.rate"></rate></p>
                </li>
                <li class="row">
                    <p class="left">{{book.author}}</p>
                    <p class="right text-primary">浏览量：{{book.count}}</p>
                </li>
                <li class="row">
                    <p class="left">{{book.publisher}}</p>
                    <p class="right">{{book.user_info.nickName}}</p>
                </li>
            </ul>
        </div>
    </a>
</template>

<script>
// 浏览量 添加一个新的字段
//  alter table books add column count int default 0;
import Rate from '@/components/rate'
export default {
  props: {
    book: {
      type: Object,
      default: {}
    }
  },
  computed: {
    detailUrl () {
      return '/pages/detail/main?id=' + this.book.id
    }
  },
  components: {
    Rate
  },
  methods: {
    preview (url) {
      wx.previewImage({
        current: url,
        urls: [url]
      })
    }
  }
}
</script>

<style lang="scss" scoped>
@import "../../scss/index";
.book-card{
    padding: 10px 10px 10px 5px;
    overflow: hidden;
    margin-top: 5px;
    margin-bottom: 5px;
    font-size: 14px;
    .thumb{
        width: 90px;
        height: 90px;
        float: left;
        margin: 0 auto;
        .img{
            max-width: 100%;
            max-height: 100%;
        }
    }
    .detail{
        margin-left: 100px;
        height: 76px;
        .row{
            line-height: 23px;
            margin-bottom: 3px;
            overflow: hidden;
            &:first-child{
                line-height: 35px;
                .left{
                    font-size: 15px;
                    font-weight: bold;
                }
            }
        }
        .right{
            float: right;
        }
        .left{
            float: left;
            width: 150px;
            overflow: hidden;
            text-overflow:ellipsis;
            white-space: nowrap;
        }
    }
}
</style>

