class @SelectAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    super(@path, @description, opts)
    @type = 'select'

  contribution: () ->
    @description.values[@value].pointsValue

  mutator: (character) ->
    new SelectMutator character, this

class @SelectMutator extends BaseMutator
  select: (value) ->
    if @description.values.indexOf(value) >= 0
      @attribute.value = value
      @notifyChanged()

  reset: () ->
    @select(@description.defaultValue)
