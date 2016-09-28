MainController = (SchemaService, Character, $scope) ->

  init = () =>
    @character = Character
    @schema = SchemaService.schema

    @cschema = new CharacterSchema @schema.primary, @schema.image_and_status, @schema.advantages, @schema.disadvantages, @schema.skills
    
    @primary = [
      "primary.strength"
      "primary.dexterity"
      "primary.intelligence"
      "primary.health"
    ]
    @derived = [
      "derived.hp"
      "derived.will"
      "derived.perception"
      "derived.fp"
      "derived.lift"
      "derived.speed"
    ]

    @image_and_status = []
    for key, advantage of @schema.image_and_status
      @image_and_status.push advantage.path unless key == "path"

    @advantages = []
    for key, advantage of @schema.advantages
      @advantages.push advantage.path unless key == "path"

    @disadvantages = []
    for key, advantage of @schema.disadvantages
      @disadvantages.push advantage.path unless key == "path"

  init()
  return


MainController.$inject = ['SchemaService', 'Character', '$scope']

angular.module('gurpscc').controller 'MainController', MainController
