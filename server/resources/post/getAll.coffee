isObjectId = require '../../lib/isObjectId'
db = require '../../db'
Post = db.model 'Post'

module.exports = (req, res, next) ->
  #return res.status(403).end() unless req.isAuthenticated()

  # return all
  q = Post.find()
  q = q.limit 100

  q.exec (err, posts) ->
    return next err if err?
    console.log err, posts
    res.status(200).json posts
