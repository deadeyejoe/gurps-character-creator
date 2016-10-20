class @CharacterSchema
  constructor: (primary, image_and_status, advantages, disadvantages, skills) ->
    @schema =
      type: 'root'
      primary: primary
      image_and_status: image_and_status
      advantages: advantages
      disadvantages: disadvantages
      skills: skills

    @pathify(@schema, '', true)

  pathify: (schema, path_prefix, root = false) ->
    if !schema.type?
      for name, subSchema of schema
        if root
          @pathify(subSchema, name)
        else
          @pathify(subSchema, path_prefix + '.' + name)
    else
      schema.path = path_prefix

  lookup: (path) ->
    value = @schema
    for segment in path.split('.')
      value = value?[segment]
    return value
