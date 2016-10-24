class CharacterService
  constructor: (@schema_service) ->
    @current = @createNewCharacter()

  createNewCharacter: () ->
    character = new Character()
    attributeFactory = character.attributeFactory()

    for key, value of @schema_service.asClonedList "primary"
      character.addAttribute(attributeFactory.create(value))

    for key, value of @schema_service.asClonedList "image_and_status"
      character.addAttribute(attributeFactory.create(value))

    character

angular.module('gurpscc').service 'CharacterService', ['SchemaService', CharacterService]
