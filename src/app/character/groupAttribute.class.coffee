class @GroupAttribute extends CharacterAttribute
  constructor: (@path, @description, opts = {}) ->
    {@type} = description
    {@attributes} = opts

  subtyped: () -> true

  hasMember: (qualifier) -> getMember(qualifier)?

  getMember: (qualifier) ->
    {subtype, techLevel} = qualifier
    return null unless subtype? && techLevel?

    for attribute in @attributes
      subtypeMatch = attribute.subtype? && attribute.subtype == subtype
      techLevelMatch = attribute.techLevel? && attribute.techLevel == techLevel

      return attribute if subtypeMatch && techLevelMatch

    return null

  contribution: () ->
    ret = 0
    for attribute in @attributes
      ret += @attribute.contribution()
    ret

  mutator: (character) ->
    new GroupMutator character, this

class @GroupMutator extends BaseMutator

  add: (qualifier) ->
    {subtype, techLevel} = qualifier
    newAttribute = new AttributeFactory(@character).create @attribute.path, @attribute.description
    newAttribute.subtype = subtype
    newAttribute.techLevel = techLevel

    @attribute.attributes.push newAttribute

    return newAttribute

  remove: (qualifier) ->
    {subtype, techLevel} = qualifier
