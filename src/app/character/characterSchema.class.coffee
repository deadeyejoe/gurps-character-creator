class @CharacterSchema
  constructor: (primary, image_and_status, advantages, disadvantages, skills) ->
    @schema =
      type: 'root'
      primary: primary
      image_and_status: image_and_status
      advantages: advantages
      disadvantages: disadvantages
      skills: skills

    @pathify(@schema)

  pathify: (schema, path_prefix = '') ->
    switch schema.type
      when 'root'
        for name, subSchema of schema
          @pathify(subSchema, name)
      when 'category'
        for name, subSchema of schema
          @pathify(subSchema, path_prefix + '.' + name)
    schema.path = path_prefix

  lookup: (path) ->
    value = @schema
    for segment in path.split('.')
      value = value?[segment]
    return value
