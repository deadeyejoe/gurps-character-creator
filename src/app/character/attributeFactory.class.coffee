class @AttributeFactory
  constructor: (@character) ->

  create: (description, opts = {}) ->
    switch description.type
      when 'scalar'
        new ScalarAttribute description.path, description, opts
      when 'toggle'
        new ToggleAttribute description.path, description, opts
      when 'select'
        new SelectAttribute description.path, description, opts
      when 'skill'
        base = SkillAttribute.calculateBaseValue(@character, description)
        new SkillAttribute description.path, description, {baseValue: base}, opts
