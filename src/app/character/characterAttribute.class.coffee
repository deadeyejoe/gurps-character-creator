class @CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    {@value, @note, @subtype, @tech_level} = opts
    @value ?= @description.defaultValue

  subtyped: () ->
    false

  contribution: () -> 0

  mutator: (character) ->
