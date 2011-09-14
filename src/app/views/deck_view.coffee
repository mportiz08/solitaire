deckTemplate = require('templates/deck')
CardView = require('views/card_view').CardView

class exports.DeckView extends Backbone.View
  id: 'container'
  
  events:
    'pile.addCard': 'addToPile'
  
  render: ->
    $(@el).html deckTemplate()
    
    deck_pile = @collection.models[0..23]
    pile_1 = @collection.models[24..24]
    pile_2 = @collection.models[25..26]
    pile_3 = @collection.models[27..29]
    pile_4 = @collection.models[30..33]
    pile_5 = @collection.models[34..38]
    pile_6 = @collection.models[39..44]
    pile_7 = @collection.models[45..51]
    
    # don't allow dragging cards into deck (or empty piles)
    that = this
    $(@el).find('.pile').not('.empty, .deck, .foundation').droppable({
      drop: (event, ui) ->
        that.addToPile this, ui
    })
    
    # enforce correct ordering of foundation cards
    $(@el).find('.foundation.pile').droppable({
      disabled: true
      drop: (event, ui) ->
        that.addToPile this, ui
    })
    
    $(@el).find('.deck.pile').append((new CardView(model: card)).render().el) for card in deck_pile
    $(@el).find('.one.pile').append((new CardView(model: card)).render().el) for card in pile_1
    $(@el).find('.two.pile').append((new CardView(model: card)).render().el) for card in pile_2
    $(@el).find('.three.pile').append((new CardView(model: card)).render().el) for card in pile_3
    $(@el).find('.four.pile').append((new CardView(model: card)).render().el) for card in pile_4
    $(@el).find('.five.pile').append((new CardView(model: card)).render().el) for card in pile_5
    $(@el).find('.six.pile').append((new CardView(model: card)).render().el) for card in pile_6
    $(@el).find('.seven.pile').append((new CardView(model: card)).render().el) for card in pile_7
    @
  
  addToPile: (pile, ui) ->
    c = $(ui.draggable).detach()
    $(pile).prepend(c)
    c.css({top: 0, left: 0})
