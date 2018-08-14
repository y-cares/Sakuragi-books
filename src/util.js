// 工具函数库
import config from './config'

// get 请求
export function get (url, data = {}, ct = 'application/json') {
  return request(url, 'GET', data, ct)
}

// post 请求
export function post (url, data = {}, ct = 'application/json') {
  return request(url, 'POST', data, ct)
}

function request (url, method, data, ct) {
  return new Promise((resolve, reject) => {
    wx.request({
      data,
      method,
      url: config.host + url,
      header: {
        'content-type': ct
      },
      complete (res) {
        resolve(res.data)
      }
    })
  })
}

// 登录成功弹窗
export function showSuccess (item) {
  wx.showToast({
    title: item,
    icon: 'success',
    mask: true
  })
}

// 显示模态弹窗
export function showModal (title, content) {
  wx.showModal({
    title,
    content,
    showCancel: false
  })
}
