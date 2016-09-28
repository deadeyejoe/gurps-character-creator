class @BaseMutator
  constructor: (@character, @attribute) ->
    @description = @attribute.description

  onChange: (callback) ->
    @callback = callback

  notifyChanged: () ->
    @callback(@attribute.value)
