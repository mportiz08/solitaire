Card = require('models/card_model').Card

class exports.Deck extends Backbone.Collection
  model: Card
