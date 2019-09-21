import Fetch from '../com/ajax'
const global = require('../public/global')

const baseUrl = 'https://flandrescarlet.gitee.io/ark'
const header = { Accept: 'application/json' }
const middle = new Fetch(baseUrl, header)

module.exports = {
  baseUrl,
  param: new Map(),
  get(url, param = {}) {
    qq.showNavigationBarLoading()
    return new Promise((resolve, reject) => {
      middle.fetch(url, param)
        .then(res => {
          this.fetchSuccess(res, resolve)
        })
        .catch(err => {
          this.fetchError(err, reject)
        })
    })
  },
  post() {

  },
  fetchSuccess(res, resolve) {
    console.log('==== 请求成功 ====')
    qq.hideNavigationBarLoading()
    resolve(res)
  },
  fetchError(err, reject) {
    console.log('==== 请求失败 ====')
    qq.hideNavigationBarLoading()
    if (err.errMsg === 'request:fail') {
      global.toast('网络连接错误')
    } else if (err.errMsg === 'request:fail timeout'){
      global.toast('网络超时，请重试')
    }
    reject(err)
  },
}