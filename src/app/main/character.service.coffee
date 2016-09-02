class Character
  constructor: (SchemaService) ->
    @contribution = 0
    @flatChanges = {}
    @changes = {}
    @stats =
      primary:
        strength:10
        dexterity:10
        intelligence:10
        health:10

  getStatValue: (path) -> @getPathedValue @stats, path
  setStatValue: (path, value) -> @setPathedValue @stats, path, value
  deleteStatValue: (path) -> @deletePathedValue @stats, path
  getChangeValue: (path) -> @getPathedValue @changes, path
  setChangeValue: (path, value) -> @setPathedValue @changes, path, value
  deleteChangeValue: (path) -> @deletePathedValue @changes, path

  getPathedValue: (target, path) ->
    segments = path.split '.'
    value = target
    for segment in segments
      return null unless value[segment]?
      value = value[segment]
    return value

  setPathedValue: (target, path, value) ->
    [currentTarget, property] = @evaluateTarget(target, path)

    currentTarget[property] = value

  deletePathedValue: (target, path) ->
    [currentTarget, property] = @evaluateTarget(target, path)
    delete currentTarget[property]

  evaluateTarget: (target, path) ->
    segments = path.split '.'
    property = segments.pop()
    currentTarget = target

    for segment in segments #except final popped segment
      if currentTarget[segment]?
        currentTarget = currentTarget[segment]
      else
        currentTarget = currentTarget[segment] = {}

    [currentTarget, property]

  applyChange: (changeDescriptor) ->
    @flatChanges[changeDescriptor.path] = changeDescriptor
    @setChangeValue(changeDescriptor.path, changeDescriptor)
    @setStatValue(changeDescriptor.path, changeDescriptor.value)
    @evaluateContributions()

  removeChange: (path) ->
    delete @flatChanges[path]
    @deleteChangeValue path
    @deleteStatValue path
    @evaluateContributions()

  evaluateContributions: () ->
    newContribution = 0
    for path, change of @flatChanges
      newContribution += change.contribution
    @contribution = newContribution

  isActive: (path) ->
    @getChangeValue(path)?


angular.module('gurpscc').service 'Character', ['SchemaService', Character]
