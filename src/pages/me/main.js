import Vue from 'vue'
import index from './index'

const app = new Vue(index)
app.$mount()

export default{
  config: {
    navigationBarTitleText: '个人中心'
  }
}
