#controller
ToggleDirectiveController = (SchemaService, ScoreService, Character) ->

  init = () =>
    @score = ScoreService
    @character = Character
    @description = SchemaService.descriptionFor @path

    unless currentValue()?
      @character.setValue(@path, false)

    @attribute = attribute
    @contribution = contribution

  currentValue = () =>
    @character.getValue(@path)

  pointsValue = (value) =>
    @description.points_value

  attribute = (value) =>
    if arguments.length
      @character.setValue @path, value
      @score.apply @path, contribution()
    else
      @character.getValue @path

  contribution = () =>
    if currentValue() then pointsValue() else 0


  init()
  return

ToggleDirectiveController.$inject = ['SchemaService', 'ScoreService', 'Character']

angular.module('gurpscc.attributes').directive 'toggleStat', () -> {
  templateUrl: 'attributes/toggle.html'
  restrict: 'E'
  controller: ToggleDirectiveController
  controllerAs: 'toggle'
  bindToController: true
  scope:
    path: '@'
}
