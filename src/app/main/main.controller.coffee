MainController = (SchemaService, CharacterService, $scope) ->

  init = () =>
    @character = CharacterService.current
    @schema = SchemaService.schema

  init()
  return


MainController.$inject = ['SchemaService', 'CharacterService', '$scope']

angular.module('gurpscc').controller 'MainController', MainController
