class SchemaService
  constructor: (schema) ->
    @schema = @pathify(schema)

  #methods===================================
  descriptionFor: (path) ->
    value = @schema
    for segment in path.split('.')
      value = value?[segment]
    return value

  #initialization===================================
  pathify: (schema, path_prefix = '') ->
    return if @isRoot(schema)

    for key, value of schema
      if path_prefix == ''
        @pathify(value, key)
      else if key != "values"
        @pathify(value, path_prefix + "." + key)

    unless path_prefix == ''
      schema.path = path_prefix

    return schema

  isRoot: (obj) ->
    return obj != Object(obj)


angular.module('gurpscc').service 'SchemaService', ['schema', SchemaService]
