homeTemplate = require('templates/home')

class exports.HomeView extends Backbone.View
  id: 'container'

  render: ->
    $(@el).html homeTemplate()
    $(@el).append app.views.card.render().el
    @
