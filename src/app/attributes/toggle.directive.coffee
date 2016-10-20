#controller
ToggleDirectiveController = ($scope) ->

  init = () =>
    @description = @attribute.description
    @currentValue = @attribute.value

    $scope.$watch 'toggle.attribute', (newVal, oldVal) => @currentValue = newVal.value

  init()
  return

ToggleDirectiveController.$inject = ['$scope']

angular.module('gurpscc.attributes').directive 'toggleStat', () ->
  templateUrl: 'attributes/toggle.html'
  restrict: 'E'
  controller: ToggleDirectiveController
  controllerAs: 'toggle'
  bindToController: true
  scope:
    attribute: '='
    mutator: '='
