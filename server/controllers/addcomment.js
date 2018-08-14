const {mysql} = require('../qcloud')

module.exports = async ctx => {
    const {openId, bookId, comment, phone, location} = ctx.request.body
    console.log(openId, bookId, comment, phone, location)
    try {
        await mysql('comments').insert({openId, bookId, comment, phone, location})
        ctx.state.data = {
            msg: 'success'
        }
    } catch (error) {
        ctx.state = {
            code: -1,
            data: {
                msg: '评论失败' + error.sqlMessage
            }
        }
    }
}
