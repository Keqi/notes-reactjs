window.Colours = {}

Colours.data = ->
  colours_array = ["#56ED51", "#1DB6F2", "#ffc", "#E88BD7"]

  validColours: (colour) ->
    _.reject(colours_array, (n) ->
      n == colour
    )
