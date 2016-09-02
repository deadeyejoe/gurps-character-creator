angular.module('gurpscc').directive 'difficultyLabel', () -> {
  restrict: 'E'
  controller: () ->
  controllerAs: 'difficulty'
  bindToController: true
  scope:
    value: '='
  template: '
<td ng-switch="difficulty.value">
  <div ng-switch-when="E">Easy</div>
  <div ng-switch-when="A">Average</div>
  <div ng-switch-when="H">Hard</div>
</td>
'
}
