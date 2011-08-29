footerTemplate = require('templates/footer')

class exports.FooterView extends Backbone.View
  id: 'footer'
  
  render: ->
    $(@el).html footerTemplate()
    @
