const app = getApp()
const http = require('../../public/http')

Page({
  data: {
    charaInfo: null,
    rangeArr: null,
  },
  onLoad(options) {
    qq.showShareMenu({
      showShareItems: ['qq', 'qzone']
    })
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
    this.getRange(app.globalData.charaData[index].phases.map(d => d.rangeId))
  },
  getRange(rangeArr) {
    if(rangeArr.length <= 0) return
    let rangeData = app.globalData.rangeData
    if(rangeData) {
      this.renderRangeData(rangeArr.map(rangeId => rangeData[rangeId].grids))
    } else {
      http.get('/data/range_table.json')
        .then(rangeData => {
          app.globalData.rangeData = rangeData
          this.renderRangeData(rangeArr.map(rangeId => rangeData[rangeId].grids))
        })
        .catch(err => {
          console.log(err)
        })
    }
  },
  renderRangeData(rangeGrids) {
    let rangeArr = Array(7).fill(0).map(x => Array(9).fill(0))
    rangeArr[3][3] = 1
    rangeGrids.forEach((grid, phaseIdx) => {
      grid.forEach(rangeObj => {
        let y = 3 + rangeObj.row, x = 3 + rangeObj.col
        if(rangeArr[y][x] == 0) {
          rangeArr[y][x] = phaseIdx + 2
        }
      })
    })
    console.log(rangeArr)
    this.setData({
      "rangeArr": rangeArr
    })
  }
})
