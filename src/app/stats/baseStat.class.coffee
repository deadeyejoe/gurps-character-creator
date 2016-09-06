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
        opts.base_value = description.base_value
        opts.scaling = description.points_value
        return new ScalarStat (description.default_value || 0), opts
      when "toggle"
        opts.points_value = description.points_value
        return new ToggleStat opts
      when "select"
        opts.values = description.values
        return new SelectStat description.default_value, opts
      when "skill"
        return SkillStat.create character, description
