class @SelectStat extends BaseStat
  constructor: (@default, @options = {}) ->
    super(@default, @options)
    @values = @options.values

  select: (value) ->
    @value = value
    @callback(@value)

  reset: () ->
    @select(@default)

  contribution: () ->
    @values[@value].points_value
