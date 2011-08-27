window.app = {}
app.routers = {}
app.models = {}
app.collections = {}
app.views = {}

Card = require('models/card_model').Card
Deck = require('collections/deck_collection').Deck
MainRouter = require('routers/main_router').MainRouter
HomeView = require('views/home_view').HomeView
DeckView = require('views/deck_view').DeckView

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.collections.deck = new Deck([
      new Card(pip: 'A', suit: '♣')
      new Card(pip: 'A', suit: '♦')
      new Card(pip: 'A', suit: '♥')
      new Card(pip: 'A', suit: '♠')
    ])
    app.routers.main = new MainRouter()
    app.views.deck = new DeckView(collection: app.collections.deck)
    app.routers.main.navigate 'home', true if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
