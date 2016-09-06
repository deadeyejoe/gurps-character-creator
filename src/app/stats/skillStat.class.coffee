class @SkillStat extends ScalarStat

  contribution: () ->
    @constructor.pointValue(@value, @base_value)

  @create: (character, description) ->
    defaultValue = @defaultValue(character, description)

    opts = {
      min: defaultValue
    }

    if (change = character.getChangeValue(description.path))?
      opts.value = change.value

    return new SkillStat(defaultValue, opts)

  @defaultValue: (character, description) ->
    difficultyMod = switch description.difficulty
      when 'E' then 0
      when 'A' then 1
      when 'H' then 2

    baseStatValue = switch description.stat
      when 'ST' then character.stats.primary.strength
      when 'DX' then character.stats.primary.dexterity
      when 'IQ' then character.stats.primary.intelligence
      when 'HT' then character.stats.primary.health

    return baseStatValue - difficultyMod

  @pointValue: (value, base) ->
    switch
      when (value - base) < 0 then 0
      when (value - base) == 0 then 1
      when (value - base) == 1 then 2
      else (value - base - 1) * 4

  @contribution: (character, description) ->
    if (change = character.getChangeValue(description.path))?
      baseValue = @defaultValue(character, description)
      return @pointValue(change.value, baseValue)
    else
      0
