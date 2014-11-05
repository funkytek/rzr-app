fission = require '../app'

module.exports =

  fission.model
    props:
      _id: 'string'
      images: 'array'
      title: 'string'
    url: '/v1/posts'