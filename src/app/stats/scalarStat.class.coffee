class @ScalarStat extends BaseStat
  constructor: (@default, @options = {}) ->
    super(@default, @options)
    {@min = 1, @max, @baseValue = @min, @scaling = 1} = @options

  set: (value) ->
    if value >= @min and not @max? or value <= @max
      @value = value
      @callback(@value)

  increment: () ->
    if not @max? or (@value != @max)
      @value += 1
      @callback(@value)

  decrement: () ->
    unless @value == @min
      @value -= 1
      @callback(@value)

  reset: () ->
    @value = @default
    @callback(@value)

  contribution: () ->
    (@value - @baseValue) * @scaling
