deckTemplate = require('templates/deck')
CardView = require('views/card_view').CardView

class exports.DeckView extends Backbone.View
  id: 'deck'
  
  render: ->
    $(@el).html deckTemplate()
    @collection.each (card) => $(@el).append((new CardView(model: card)).render().el)
    @
