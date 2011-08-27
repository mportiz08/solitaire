class exports.Card extends Backbone.Model      
  defaults:
    pip:   'A'
    suit:  '♠'
    color: 'b'
  
  suits: ->
    suits =
      '♣': 'clubs'
      '♦': 'diamonds'
      '♥': 'hearts'
      '♠': 'spades'
      
  rows: ->
    rows =
       'A':  [0, 0, 0]
       '2':  [0, 2, 0]
       '3':  [0, 3, 0]
       '4':  [2, 0, 2]
       '5':  [2, 1, 2]
       '6':  [3, 0, 3]
       '7':  [3, 1, 3]
       '8':  [3, 2, 3]
       '9':  [4, 1, 4]
       '10': [4, 2, 4]
       'J':  [0, 0, 0]
       'Q':  [0, 0, 0]
       'K':  [0, 0, 0]
    rows[@get('pip')]
