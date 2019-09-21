class Server {
  constructor (baseUrl, header) {
    this.baseUrl = baseUrl
    this.header = header
  }
  fetch (url, param, methods) {
    this.url = url
    this.param = param || {}
    this.methods = methods || 'get'

    let _this = this
    return new Promise((resolve, reject) => {
      qq.request({
        url: _this.baseUrl + _this.url,
        method: _this.methods,
        header: _this.header,
        data: _this.param,
        success (res) {
          resolve(res.data);
        },
        fail(err){
          console.log('==== fetch error ====')
          reject(err)
        }
      })
    });
  }
}

export default Server ;
