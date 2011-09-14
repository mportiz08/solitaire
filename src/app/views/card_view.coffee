cardTemplate = require('templates/card')

class exports.CardView extends Backbone.View
  tagName:   'div'
  className: 'card'

  render: ->
    $(@el).html cardTemplate(card: @model)
    $(@el).draggable({
      stack:        '.card'
      revert:       'invalid'
      snap:          '.pile'
      snapTolerance: 5
      start: (event, ui) ->
        # TODO: check for right card
        $('.foundation.pile').droppable('option', 'disabled', false)
      stop: (event, ui) ->
        $('.foundation.pile').droppable('option', 'disabled', true)
    })
    $(@el).css position: 'absolute'
    @
