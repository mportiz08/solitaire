cardTemplate = require('templates/card')

class exports.CardView extends Backbone.View
  tagName:   'div'
  className: 'card'

  render: ->
    $(@el).html cardTemplate(card: @model)
    $(@el).draggable(stack: @el, snap: '.pile', snapMode: 'inner')
    $(@el).css position: 'absolute'
    @
