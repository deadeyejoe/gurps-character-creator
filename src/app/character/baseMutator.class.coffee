class @BaseMutator
  constructor: (@character, @attribute) ->
    @description = @attribute.description

  notifyChanged: () ->
    @character.recalculateContribution()
