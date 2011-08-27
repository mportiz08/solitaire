deckTemplate = require('templates/deck')
CardView = require('views/card_view').CardView

class exports.DeckView extends Backbone.View
  id: 'deck'
  
  render: ->
    $(@el).html deckTemplate()
    $(@el).append((new CardView(model: card)).render().el) for card in @collection.models
    @
