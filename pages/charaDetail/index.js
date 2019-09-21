//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    charaInfo: null
  },
  onLoad(options) {
    let { i } = options
    this.getCharaInfo(i)
  },
  onReady() {

  },
  onShow() {
    // Do something when page show.
  },
  onHide() {
    // Do something when page hide.
  },
  onUnload() {
    // Do something when page close.
  },
  getCharaInfo(index) {
    console.log(app.globalData.charaData[index])
    this.setData({
      "charaInfo": app.globalData.charaData[index]
    })
  }
})
