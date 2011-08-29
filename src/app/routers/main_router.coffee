class exports.MainRouter extends Backbone.Router
  routes :
    "home": "home"

  home: ->
    $('body').html app.views.deck.render().el
    $('body').append app.views.footer.render().el
