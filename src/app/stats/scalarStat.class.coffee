class @ScalarStat extends BaseStat
  constructor: (@default, @options = {}) ->
    super(@default, @options)
    @min = @options.min || 0
    @max = @options.max || null
    @base_value = @options.base_value || @min
    @scaling = @options.scaling || 1

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
    (@value - @base_value) * @scaling
