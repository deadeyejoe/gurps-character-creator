#controller
DifficultyLabelController = () ->

  init = () =>
    @label = switch @value
      when "E" then "Easy"
      when "A" then "Average"
      when "H" then "Hard"

  init()
  return

DifficultyLabelController.$inject = [ ]

angular.module('gurpscc').directive 'difficultyLabel', () -> {
  template: '<div class="difficulty-label">{{difficulty.label}}</div>'
  restrict: 'E'
  controller: DifficultyLabelController
  controllerAs: 'difficulty'
  bindToController: true
  scope:
    value: '='
}
