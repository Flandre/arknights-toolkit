//index.js
//获取应用实例
const app = getApp()
const http = require('../../public/http');

Page({
  data: {
    charaData: []
  },
  onLoad: function () {
    this.initData()
  },
  initData() {
    let data = app.globalData.charaData
    if(data) {
      this.setData({
        'charaData': data
      })
    } else {
      http.get('/data/character_table.json')
        .then(res => {
          let data = []
          Object.values(res).map(c => {
            if(c.potentialItemId || c.name == '暴行') {
              data.push(Object.assign({encodeName: encodeURI(c.appellation)}, c))
            }
          })
          app.globalData.charaData = data
          this.setData({
            'charaData': data
          })
        })
        .catch(err => {
          console.log(err)
        })
    }
  },
  tapChara(e) {
    let { index } = e.currentTarget.dataset
    qq.navigateTo({
      "url": `/pages/charaDetail/index?i=${index}`
    })
  }
})
