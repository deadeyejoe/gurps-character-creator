class @SkillStat extends ScalarStat

  contribution: () ->
    n = @value - @base
    switch
      when n <= 0 then 1
      when n == 1 then 2
      else (n - 1) * 4

  @create: (character, description) ->

    difficultyMod = 0
    difficultyMod = switch description.difficulty
      when 'E' then 0
      when 'A' then -1
      when 'H' then -2

    baseStatValue = switch description.stat
      when 'ST' then character.stats.primary.strength
      when 'DX' then character.stats.primary.dexterity
      when 'IQ' then character.stats.primary.intelligence
      when 'HT' then character.stats.primary.health

    if (change = character.getChangeValue(description.path))
      return new SkillStat(baseStatValue - difficultyMod, change.value)
    else
      return new SkillStat(baseStatValue - difficultyMod)
