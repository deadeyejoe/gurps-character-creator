MainController = (SchemaService, Character, $scope) ->

  init = () =>
    @character = Character
    @schema = SchemaService
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

    @advantages = []
    for key, advantage of schema.advantages
      @advantages.push advantage.path

  init()
  return


MainController.$inject = ['SchemaService', 'Character', '$scope']

angular.module('gurpscc').controller 'MainController', MainController
