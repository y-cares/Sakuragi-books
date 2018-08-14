const { mysql } = require('../qcloud')

module.exports = async ctx => {
    const {bookId, openId} = ctx.request.query
    const mysqlSelect = mysql('comments')
                            .select('comments.*', 'csessioninfo.user_info')
                            .join('csessioninfo', 'comments.openid', 'csessioninfo.open_id')
    let comments
    if (bookId) {
        // 图书详情页的评论列表
        comments = await mysqlSelect.where('bookId', bookId)
    } else {
        // 评论详情页
        comments = await mysqlSelect.where('openid', openId)
    }
    ctx.state.data = {
        list: comments.map(v => {
            const info = JSON.parse(v.user_info)
            return Object.assign({}, v, {
                user_info: {
                    nickName: info.nickName,
                    image: info.avatarUrl
                }
            })
        })
    }
}
