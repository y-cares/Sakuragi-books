import Vue from 'vue'
import App from './App'

// 关掉生产环境下的提示
Vue.config.productionTip = false

// 新建一个Vue对象
const app = new Vue(App)

// 挂载到小程序的语法中
app.$mount()

// 配置小程序的基本配置
// https://developers.weixin.qq.com/miniprogram/dev/quickstart/basic/file.html#json-%E9%85%8D%E7%BD%AE
export default {
  config: {
    pages: [
      // 设置首页
      '^pages/books/main'
    ],
    window: {
      backgroundTextStyle: 'light',
      navigationBarBackgroundColor: '#87CEFF',
      navigationBarTitleText: '樱木图书',
      navigationBarTextStyle: '#333'
    },
    tabBar: {
      color: '#333',
      selectedColor: '#87CEFF',
      backgroundColor: '#fff',
      list: [
        {
          pagePath: 'pages/books/main',
          text: '图书',
          iconPath: 'static/img/book.png',
          selectedIconPath: 'static/img/book-active.png'
        }, {
          pagePath: 'pages/comments/main',
          text: '评论',
          iconPath: 'static/img/todo.png',
          selectedIconPath: 'static/img/todo-active.png'
        }, {
          pagePath: 'pages/me/main',
          text: '个人中心',
          iconPath: 'static/img/me.png',
          selectedIconPath: 'static/img/me-active.png'
        }
      ]
    }
  }
}
