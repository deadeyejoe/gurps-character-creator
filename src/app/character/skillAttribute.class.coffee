class @SkillAttribute extends CharacterAttribute
  constructor: (@path, @description, opts) ->
    super(@path, @description, opts)
    @type = "skill"
    @baseValue = opts.baseValue
    @value ?= @baseValue

  contribution: () ->
    @pointValue(@value, @baseValue)

  pointValue: (value, base) ->
    switch
      when (value - base) < 0 then 0
      when (value - base) == 0 then 1
      when (value - base) == 1 then 2
      else (value - base - 1) * 4

  mutator: (character) ->
    new SkillMutator character, this

  @calculateBaseValue: (character, description) ->
    difficultyMod = switch description.difficulty
      when 'E' then 0
      when 'A' then 1
      when 'H' then 2

    baseStatValue = switch description.stat
      when 'ST' then character.getValue("primary.strength")
      when 'DX' then character.getValue("primary.dexterity")
      when 'IQ' then character.getValue("primary.intelligence")
      when 'HT' then character.getValue("primary.health")

    return baseStatValue - difficultyMod

class @SkillMutator extends ScalarMutator

  rebase: () ->
    newBase = SkillAttribute.calculateBaseValue @character, @description
    difference = @attribute.baseValue - newBase

    @attribute.baseValue = newBase
    @attribute.value -= difference

  valueInBounds: (value) ->
    value >= @attribute.baseValue

  reset: () ->
    @attribute.value = @attribute.baseValue
    @notifyChanged()
