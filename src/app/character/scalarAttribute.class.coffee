class @ScalarAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    super(@path, @description, opts)
    @type = 'scalar'
    @value ?= 0

  contribution: () ->
    (@value - @description.baseValue) * @description.pointsValue

  mutator: (character) ->
    new ScalarMutator character, this

class @ScalarMutator extends BaseMutator
  set: (value) ->
    if value >= @description.min and not @description.max? or value <= @description.max
      @attribute.value = value
      @notifyChanged()

  increment: () ->
    if not @description.max? or (@attribute.value != @description.max)
      @attribute.value += 1
      @notifyChanged()

  decrement: () ->
    unless @attribute.value == @min
      @attribute.value -= 1
      @notifyChanged()

  reset: () ->
    @attribute.value = @description.defaultValue
    @notifyChanged()
