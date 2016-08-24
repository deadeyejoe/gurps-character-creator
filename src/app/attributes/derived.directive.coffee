DerivedController = (SchemaService, ScoreService, Character) ->

  init = () =>
    @description = SchemaService.descriptionFor @path
    @character = Character

    @attribute = attribute

  attribute = () =>
    @description.formula(@character.stats)

  init()
  return

DerivedController.$inject = ['SchemaService', 'ScoreService', 'Character']

angular.module('gurpscc.attributes').directive 'derivedStat', () -> {
  templateUrl: 'attributes/derived.html'
  restrict: 'E'
  controller: DerivedController
  controllerAs: 'derived'
  bindToController: true
  scope:
    path: '@'
}
