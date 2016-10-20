class @ScalarAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    super(@path, @description, opts)
    @type = 'scalar'

  contribution: () ->
    (@value - @description.baseValue) * @description.pointsValue

  mutator: (character) ->
    new ScalarMutator character, this

class @ScalarMutator extends BaseMutator
  set: (value) ->
    if @valueInBounds(value)
      @attribute.value = value
      @notifyChanged()

  increment: () ->
    if @valueInBounds(@attribute.value + 1)
      @attribute.value += 1
      @notifyChanged()

  decrement: () ->
    if @valueInBounds(@attribute.value - 1)
      @attribute.value -= 1
      @notifyChanged()

  reset: () ->
    @attribute.value = @description.defaultValue
    @notifyChanged()

  valueInBounds: (value) ->
    value >= (@description.min || 1) and not @description.max? or value <= @description.max
