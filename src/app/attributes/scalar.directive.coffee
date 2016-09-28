ScalarDirectiveController = (SchemaService, ScoreService, Character) ->

  init = () =>
    @score = ScoreService
    @description = SchemaService.descriptionFor @path
    @character = Character

    unless currentValue()?
      @character.setValue(@path, baseValue())

    @attribute = attribute
    @contribution = contribution
    @increased = increased
    @decreased = decreased

  attribute = (value) =>
    if arguments.length && validate(value)
      @character.setValue @path, value
      @score.apply @path, contribution()
    else
      @character.getValue @path

  contribution = () =>
    (currentValue() - baseValue())* @description.pointsValue

  increased = () => attribute(currentValue() + 1)

  decreased = () => attribute(currentValue() - 1)

  currentValue = () =>
    @character.getValue(@path)

  baseValue = () =>
    @description.baseValue || 0

  validate = (value) =>
    !((@description.max? && value > @description.max) || value < (@description.min || 0))

  init()
  return

ScalarDirectiveController.$inject = ['SchemaService', 'ScoreService', 'Character']

angular.module('gurpscc.attributes').directive 'scalarStat', () -> {
  templateUrl: 'attributes/scalar.html'
  restrict: 'E'
  controller: ScalarDirectiveController
  controllerAs: 'scalar'
  bindToController: true
  scope:
    path: '@'
}
