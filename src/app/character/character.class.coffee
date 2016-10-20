class @Character
  constructor: () ->
    @contribution = 0

    @pathed_attributes = {}
    @categorised_attributes = {
      primary: {}
      image_and_status: {}
      advantages: {}
      disadvantages: {}
      skills: {}
    }

  addAttribute: (attribute) ->
    @pathed_attributes[attribute.path] = attribute
    @categorised_attributes[attribute.path.split('.')[0]][attribute.path] = attribute
    @recalculateContribution()

  removeAttribute: (path) ->
    delete @pathed_attributes[path]
    delete @categorised_attributes[path.split('.')[0]][path]
    @recalculateContribution()

  isActive: (path) ->
    @pathed_attributes[path]?

  getAttribute: (path) ->
    @pathed_attributes[path]

  getAttributes: (category) ->
    attribute for path, attribute of @categorised_attributes[category]

  rebaseSkills: () ->
    for path, attribute of @categorised_attributes.skills
      attribute.mutator(this).rebase

  getValue: (path) ->
    @pathed_attributes[path]?.value

  recalculateContribution: () ->
    newContribution = 0
    for path, attribute of @pathed_attributes
      newContribution += attribute.contribution()

    @contribution = newContribution

  attributeFactory: () ->
    new AttributeFactory(this)
