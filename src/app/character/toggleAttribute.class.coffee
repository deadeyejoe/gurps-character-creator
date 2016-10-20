class @ToggleAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    super(@path, @description, opts)
    @type = 'toggle'

  contribution: () ->
    if @value then @description.pointsValue else 0

  mutator: (character) ->
    new ToggleMutator character, this

class @ToggleMutator extends BaseMutator

  set:(newValue) ->
    @attribute.value = newValue

  toggle: () ->
    @attribute.value = !@attribute.value
    @notifyChanged()

  on: () ->
    @attribute.value = true
    @notifyChanged()

  off: () ->
    @attribute.value = false
    @notifyChanged()

  reset: () -> @off()
