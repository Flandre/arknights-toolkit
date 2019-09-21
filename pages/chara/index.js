//index.js
//获取应用实例
const app = getApp()
const http = require('../../public/http');

Page({
  data: {
    charaData: [],
    typeFilter: {
      "PIONEER": false,
      "TANK": false,
      "CASTER": false,
      "SNIPER": false,
      "WARRIOR": false,
      "MEDIC": false,
      "SUPPORT": false,
      "SPECIAL": false,
    },
    rareFilter : {
      '1': false,
      '2': false,
      '3': false,
      '4': false,
      '5': false,
      '6': false,
    }
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
          Object.values(res).map((c, i) => {
            if(c.potentialItemId || c.name == '暴行') {
              data.push(Object.assign({
                charaIndex: i,
                fixName: c.appellation.replace(/'/g, ''),
                encodeName: encodeURI(c.appellation)
              }, c))
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
  changeFilter(e) {
    let { type } = e.currentTarget.dataset
    this.setData({
      [`typeFilter.${type}`] : !this.data.typeFilter[type]
    })
    this.filter()
  },
  changeRareFilter(e) {
    let { rare } = e.currentTarget.dataset
    console.log(rare)
    this.setData({
      [`rareFilter.${rare}`] : !this.data.rareFilter[rare]
    })
    this.filter()
  },
  filter(){
    let data = app.globalData.charaData
    if(Object.values(this.data.typeFilter).filter(x => x).length) {
      data = data.filter(x => this.data.typeFilter[x.profession])
    }
    if(Object.values(this.data.rareFilter).filter(x => x).length) {
      data = data.filter(x => this.data.rareFilter[x.rarity + 1])
    }
    this.setData({
      'charaData': data
    })
  },
  tapChara(e) {
    let { index } = e.currentTarget.dataset
    qq.navigateTo({
      "url": `/pages/charaDetail/index?i=${index}`
    })
  }
})
