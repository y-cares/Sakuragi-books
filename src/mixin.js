// 微信小程序客户端腾讯云增强 SDK
// 本 项目是 Wafer2 的组成部分，为小程序客户端开发提供 SDK 支持会话服务和信道服务。
import qcloud from 'wafer2-client-sdk'
import config from '@/config'
import {showSuccess} from '@/util'

export const loginMixin = {
  methods: {
    doLogin () {
      return new Promise((resolve, reject) => {
        const session = qcloud.Session.get()
        qcloud.setLoginUrl(config.loginUtl)
        if (session) {
          // 第二次登录
          // 或者本地已经有登录态
          // 可使用本函数更新登录态
          qcloud.loginWithCode({
            success: res => {
              wx.setStorageSync('userInfo', res)
              resolve(res)
              console.log('登录信息：', res)
            },
            fail: err => {
              console.error(err)
              reject(err)
            }
          })
        } else {
          // 首次登录
          qcloud.login({
            success: res => {
              wx.setStorageSync('userInfo', res)
              resolve(res)
              showSuccess('登录成功')
              console.log('登录信息：', res)
            },
            fail: err => {
              console.error(err)
              // showModal('登录失败')
              reject(err)
            }
          })
        }
      })
    }
  }
}
