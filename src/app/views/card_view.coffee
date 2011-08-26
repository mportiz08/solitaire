cardTemplate = require('templates/card')

class exports.CardView extends Backbone.View
  tagName:   'div'
  className: 'card'

  render: ->
    $(@el).html cardTemplate()
    @
