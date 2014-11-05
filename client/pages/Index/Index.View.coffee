fission = require("../../app")
Post = require '../../models/Post'
#wook = require '../../vendor/jquery.wookmark'
{h1, ul, li, div, img} = fission.React.DOM

item = fission.modelView
  model: Post
  render: ->
    li {},
      img {src: @model.images[0], width: 200}

module.exports = fission.collectionView
  model: Post
  itemView: item
  mounted: ->
    console.log "mounted"
    $images = $('.images')
    #$images.imagesLoaded ->
    #  console.log "images loaded"

  render: ->
    setTimeout ->
      $('.images li').wookmark
        autoResize: true 
    , 100
    console.log @collection
    div {},
      ul {className: 'images'},
        @items.map (i) -> i