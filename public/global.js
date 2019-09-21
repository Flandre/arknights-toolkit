module.exports = {
  toast(msg, icon = 'none', dur = 2000) {
    let message = msg ? typeof msg === 'string' ? msg : JSON.stringify(msg) : '没有错误信息'
    qq.showToast({
      title: msg,
      icon: icon,
      duration: dur
    })
  }
}