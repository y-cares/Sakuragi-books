// 新增图书
// 1. 获取豆瓣图书信息
// https://developers.douban.com/wiki/?title=book_v2#get_isbn_book
// https://api.douban.com/v2/book/isbn/9787115275790
// 2， 入库

const https = require('https')
const {mysql} = require('../qcloud')

module.exports = async ctx => {
    const {isbn, openId} = ctx.request.body
    if (isbn && openId) {
        // 查询逻辑，避免重复添加书籍
        const findRes = await mysql('books').select().where('isbn', isbn)
        if (findRes.length) {
            ctx.state = {
                code: -1,
                data: {
                    msg: '图书已存在'
                }
            }
            return
        }
        let url = 'https://api.douban.com/v2/book/isbn/' + isbn
        let bookinfo = await getJSON(url)
        const rate = bookinfo.rating.average
        const {title, image, alt, publisher, summary, price} = bookinfo
        const tags = bookinfo.tags.map(v => `${v.title} ${v.count}`).join(',')
        const author = bookinfo.author.join(',')
        try {
            await mysql('books').insert({
                isbn,
                openId,
                rate,
                title,
                image,
                alt,
                publisher,
                summary,
                price,
                tags,
                author
            })
            ctx.state.data = {
                title,
                msg: 'success'
            }
        } catch (err) {
            ctx.state = {
                code: -1,
                data: {
                    msg: '新增失败：' + err.sqlMessage
                }
            }
        }
    }
}

function getJSON (url) {
    return new Promise((resolve, reject) => {
        https.get(url, res => {
            let urlData = ''
            res.on('data', data => {
                urlData += data
            })
            res.on('end', data => {
                const bookinfo = JSON.parse(urlData)
                if (bookinfo.title) {
                    resolve(bookinfo)
                }
                reject(bookinfo)
            })
        })
    })
}
