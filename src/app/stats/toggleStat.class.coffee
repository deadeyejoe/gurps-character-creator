class @ToggleStat extends BaseStat
  constructor: (@options) ->
    super(false, @options)
    @pointsValue = @options.pointsValue

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

  contribution: () -> if @value then @pointsValue else 0
