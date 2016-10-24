DerivedController = (SchemaService, CharacterService) ->

  init = () =>
    @character = CharacterService.current

  @attribute = () =>
    @description.formula(@character)

  init()
  return

DerivedController.$inject = ['SchemaService', 'CharacterService']

angular.module('gurpscc.attributes').directive 'derivedStat', () -> {
  templateUrl: 'attributes/derived.html'
  restrict: 'E'
  controller: DerivedController
  controllerAs: 'derived'
  bindToController: true
  scope:
    description: '='
}
