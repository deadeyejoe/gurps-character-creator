class @ScalarStat
  constructor: (@base, @value = @base, @min = 0, @max = null) ->
    @callback = ->

  set: (value) ->
    if value >= @min and not @max? or value <= @max
      @value = value
      @callback(@value)

  increment: () ->
    if not @max? or (@value == @max)
      @value += 1
      @callback(@value)

  decrement: () ->
    unless @value == @min
      @value -= 1
      @callback(@value)

  onChange: (callback) ->
    @callback = callback
    @callback(@value)

  reset: () ->
    @value = @base
    @callback(@value)

  contribution: () -> 0
