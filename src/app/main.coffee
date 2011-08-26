window.app = {}
app.routers = {}
app.models = {}
app.collections = {}
app.views = {}

Card = require('models/card_model').Card
MainRouter = require('routers/main_router').MainRouter
HomeView = require('views/home_view').HomeView
CardView = require('views/card_view').CardView

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.routers.main = new MainRouter()
    app.views.home = new HomeView()
    app.views.card = new CardView(model: new Card(color: 'r'))
    app.routers.main.navigate 'home', true if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
