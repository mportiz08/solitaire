cardTemplate = require('templates/card')

class exports.CardView extends Backbone.View
  tagName:   'div'
  className: 'card'

  render: ->
    $(@el).html cardTemplate(card: @model)
    $(@el).draggable(stack: '.card', revert: 'invalid', snap: '.pile', snapTolerance: 5)
    $(@el).css position: 'absolute'
    @
