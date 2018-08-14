<template>
    <div class="comment-list" v-if="comments.length">
        <div class="page-title">评论</div>
        <div class="comment"
            v-for="(item, index) in comments"
            @click="handleClick(item.bookid)"
            :key="index">
            <div class="user">
                <div class="left">
                    <image :src="item.user_info.image" mode="aspectFit"></image>
                    {{item.user_info.nickName}}
                </div>
                <div class="right">
                    {{item.location||'未知地点'}}
                    <span class="text-primary">--</span>
                    {{item.phone||'未知型号'}}
                </div>
            </div>
            <div class="content">{{item.comment}}</div>
        </div>
    </div>
</template>

<script>
export default {
  props: {
    comments: {
      type: [Object, Array],
      default: []
    },
    type: {
      type: String,
      default: ''
    }
  },
  methods: {
    handleClick (bookid) {
      if (!this.type) return
      wx.navigateTo({
        url: '/pages/detail/main?id=' + bookid
      })
    }
  }
}
</script>

<style lang="scss" scoped>
@import "../../scss/index";
.comment-list{
    padding: 10px;
    background-color: #f2f2f2;
    .page-title{
        font-size: 16px;
        padding: 5px 0 10px 0;
    }
    .comment{
        margin-bottom: 10px;
        padding: 5px 10px;
        background-color: #fff;
        .user{
            line-height: 20px;
            border-bottom: 1px solid #f2f2f2;
            padding: 5px 0;
        }
        .left{
            font-size: 14px;
            line-height: 20px;
            display: inline-block;
            image{
                width: 20px;
                height: 20px;
                border-radius: 50%;
                display: inline-block;
                margin-right: 10px;
                vertical-align: middle;
            }
        }
        .right{
            font-size: 12px;
            float: right;
            color: #777;
        }
        .content{
            font-size: 14px;
            padding: 10px 0;
            text-indent: 2em;
        }
    }
}

</style>
