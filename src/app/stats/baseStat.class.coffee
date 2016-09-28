class @BaseStat
  constructor: (@default, @options = {}) ->
    @value = @options.value || @default
    @callback = ->

  onChange: (callback) ->
    @callback = callback

  changed: () ->
    @callback(@value)

  @create: (character, description) ->
    opts = {}
    if (change = character.getChangeValue(description.path))
      opts.value = change.value

    switch description.type
      when "scalar"
        opts.min = description.min
        opts.max = description.max
        opts.baseValue = description.baseValue
        opts.scaling = description.pointsValue
        return new ScalarStat (description.defaultValue || 0), opts
      when "toggle"
        opts.pointsValue = description.pointsValue
        return new ToggleStat opts
      when "select"
        opts.values = description.values
        return new SelectStat description.defaultValue, opts
      when "skill"
        return SkillStat.create character, description
