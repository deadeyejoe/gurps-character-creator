class @SelectAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    super(@path, @description, opts)
    @type = 'select'

  contribution: () ->
    @description.values[@value].pointsValue

  mutator: (character) ->
    new SelectMutator character, this

class @SelectMutator extends BaseMutator
  set: (value) ->
    if @description.values[value]?
      @attribute.value = value
      @notifyChanged()

  reset: () ->
    @set(@description.defaultValue)
