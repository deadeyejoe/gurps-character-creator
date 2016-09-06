class @ToggleStat extends BaseStat
  constructor: (@options) ->
    super(false, @options)
    @points_value = @options.points_value

  toggle: () ->
    @value = !@value
    @callback(@value)

  on: () ->
    @value = true
    @callback(@value)

  isOn: () -> @value

  off: () ->
    @value = false
    @callback(@value)

  isOff: () -> !@value

  reset: () -> @off()

  contribution: () -> if @value then @points_value else 0
