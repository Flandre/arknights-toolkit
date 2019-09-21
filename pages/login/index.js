//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    motto: 'Hello World',
    userInfo: {},
    hasUserInfo: false,
    canIUse: qq.canIUse('button.open-type.getUserInfo')
  },
  onLoad: function () {
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    } else if (this.data.canIUse) {
      // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
      // 所以此处加入 callback 以防止这种情况
      app.userInfoReadyCallback = res => {
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
        console.log('==== 授权成功 1 ====')
        qq.switchTab({
          url: '/pages/index/index'
        })
      }
    } else {
      // 在没有 open-type=getUserInfo 版本的兼容处理
      qq.navigateTo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          this.setData({
            userInfo: res.userInfo,
            hasUserInfo: true
          })
          console.log('==== 授权成功 2 ====')
          qq.switchTab({
            url: '/pages/index/index'
          })
        }
      })
    }
  },
  getUserInfo: function (e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
    console.log('==== 授权成功 3 ====')
    qq.switchTab({
      url: '/pages/index/index',
      success() {
        console.log('调用成功')
      },
      fail(err) {
        console.log('调用失败')
        console.log(err)
      }
    })
  }
})
