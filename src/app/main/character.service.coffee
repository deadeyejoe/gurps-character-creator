class Character
  constructor: (schema) ->
    @schema = schema
    @stats = {}

  getValue: (key) ->
    path = key.split '.'
    value = @stats
    for segment in path
      return null unless value[segment]?
      value = value[segment]
    return value

  setValue: (key, value) ->
    path = key.split '.'
    property = path.pop()
    target = @stats

    for segment in path #except final popped value
      if target[segment]?
        target = target[segment]
      else
        target = target[segment] = {}

    target[property] = value

  increment: (key, amount = 1) ->
    @setValue(key, (@getValue key) + amount)

  decrement: (key, amount = 1) ->
    @setValue(key, (@getValue key) - amount)


angular.module('gurpscc').service 'Character', Character
