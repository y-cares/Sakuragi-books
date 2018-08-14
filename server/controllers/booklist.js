const { mysql } = require('../qcloud')

module.exports = async ctx => {
    // 分页
    const {page, openId} = ctx.request.query
    const size = 10

    const mysqlSelect = mysql('books')
        .select('books.*', 'csessioninfo.user_info')
        .join('csessioninfo', 'books.openid', 'csessioninfo.open_id')
        .orderBy('books.id', 'desc')
    let books
    if (openId) {
        // 根据openid过滤
        books = await mysqlSelect.where('books.openid', openId)
    } else {
        // 全部图书分页
        books = await mysqlSelect.limit(size).offset(Number(page) * size)
    }
    ctx.state.data = {
        list: books.map(v => {
            const info = JSON.parse(v.user_info)
            return Object.assign({}, v, {
                user_info: {
                    nickName: info.nickName
                }
            })
        })
    }
}
