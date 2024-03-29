window.app = {}
app.routers = {}
app.models = {}
app.functions = {}
app.collections = {}
app.views = {}

Card = require('models/card_model').Card
Deck = require('collections/deck_collection').Deck
MainRouter = require('routers/main_router').MainRouter
HomeView = require('views/home_view').HomeView
DeckView = require('views/deck_view').DeckView
FooterView = require('views/footer_view').FooterView

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.functions.shuffle = (obj) ->
      shuffled = []
      rand = null
      _.each obj, (value, index, list) ->
        if index == 0
          shuffled[0] = value
        else
          rand = Math.floor(Math.random() * (index + 1))
          shuffled[index] = shuffled[rand]
          shuffled[rand] = value
      shuffled
    
    app.collections.deck = new Deck(app.functions.shuffle [
      new Card(pip: 'A', suit: '♣')
      new Card(pip: 'A', suit: '♦')
      new Card(pip: 'A', suit: '♥')
      new Card(pip: 'A', suit: '♠')
      new Card(pip: '2', suit: '♣')
      new Card(pip: '2', suit: '♦')
      new Card(pip: '2', suit: '♥')
      new Card(pip: '2', suit: '♠')
      new Card(pip: '3', suit: '♣')
      new Card(pip: '3', suit: '♦')
      new Card(pip: '3', suit: '♥')
      new Card(pip: '3', suit: '♠')
      new Card(pip: '4', suit: '♣')
      new Card(pip: '4', suit: '♦')
      new Card(pip: '4', suit: '♥')
      new Card(pip: '4', suit: '♠')
      new Card(pip: '5', suit: '♣')
      new Card(pip: '5', suit: '♦')
      new Card(pip: '5', suit: '♥')
      new Card(pip: '5', suit: '♠')
      new Card(pip: '6', suit: '♣')
      new Card(pip: '6', suit: '♦')
      new Card(pip: '6', suit: '♥')
      new Card(pip: '6', suit: '♠')
      new Card(pip: '7', suit: '♣')
      new Card(pip: '7', suit: '♦')
      new Card(pip: '7', suit: '♥')
      new Card(pip: '7', suit: '♠')
      new Card(pip: '8', suit: '♣')
      new Card(pip: '8', suit: '♦')
      new Card(pip: '8', suit: '♥')
      new Card(pip: '8', suit: '♠')
      new Card(pip: '9', suit: '♣')
      new Card(pip: '9', suit: '♦')
      new Card(pip: '9', suit: '♥')
      new Card(pip: '9', suit: '♠')
      new Card(pip: '10', suit: '♣')
      new Card(pip: '10', suit: '♦')
      new Card(pip: '10', suit: '♥')
      new Card(pip: '10', suit: '♠')
      new Card(pip: 'J', suit: '♣')
      new Card(pip: 'J', suit: '♦')
      new Card(pip: 'J', suit: '♥')
      new Card(pip: 'J', suit: '♠')
      new Card(pip: 'Q', suit: '♣')
      new Card(pip: 'Q', suit: '♦')
      new Card(pip: 'Q', suit: '♥')
      new Card(pip: 'Q', suit: '♠')
      new Card(pip: 'K', suit: '♣')
      new Card(pip: 'K', suit: '♦')
      new Card(pip: 'K', suit: '♥')
      new Card(pip: 'K', suit: '♠')
    ])
    app.routers.main = new MainRouter()
    app.views.deck = new DeckView(collection: app.collections.deck)
    app.views.footer = new FooterView()
    app.routers.main.navigate 'home', true if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
