class @CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    {@value, @notes, @subtype, @tech_level} = opts
    @value ?= @description.defaultValue

  subtyped: () ->
    @description.subtypes? || @description.techLevel?

  contribution: () -> 0

  mutator: (character) ->
