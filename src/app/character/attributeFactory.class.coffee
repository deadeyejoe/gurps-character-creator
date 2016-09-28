class @AttributeFactory
  constructor: (@character) ->

  create: (path, description)
    switch description.type
      when 'scalar'
        new ScalarAttribute path, description
      when 'toggle'
        new ToggleAttribute path, description
      when 'select'
        new SelectAttribute path, description
      when 'skill'
        base = SkillAttribute.calculateBaseValue(character, description)
        new SkillAttribute path, description, {baseValue: base}
