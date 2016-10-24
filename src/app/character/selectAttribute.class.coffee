class @SelectAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    super(@path, @description, opts)
    @type = 'select'

  contribution: () ->
    if @description.values[@value]?
      @description.values[@value].pointsValue
    else
      0

  mutator: (character) ->
    new SelectMutator character, this

class @SelectMutator extends BaseMutator
  set: (value) ->
    if @description.values[value]?
      @attribute.value = value
      @notifyChanged()

  reset: () ->
    @set(@description.defaultValue)
