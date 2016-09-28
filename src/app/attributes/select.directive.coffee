SelectController = (SchemaService, ScoreService, Character) ->

  init = () =>
    @score = ScoreService
    @character = Character
    @description = SchemaService.descriptionFor @path

    unless currentValue()?
      @character.setValue(@path, @description.baseValue)

    @attribute = attribute
    @contribution = contribution

  currentValue = () =>
    @character.getValue(@path)

  pointsValue = (value) =>
    @description.values[value]?.pointsValue

  attribute = (value) =>
    if arguments.length
      @character.setValue @path, value
      @score.apply @path, contribution()
    else
      @character.getValue @path

  contribution = () =>
    pointsValue(currentValue())

  init()
  return

SelectController.$inject = ['SchemaService', 'ScoreService', 'Character']

angular.module('gurpscc.attributes').directive 'selectStat', () -> {
  templateUrl: 'attributes/select.html'
  restrict: 'E'
  controller: SelectController
  controllerAs: 'select'
  bindToController: true
  scope:
    path: '@'
}
