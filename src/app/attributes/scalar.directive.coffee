ScalarDirectiveController = () ->

  init = () =>
    @description = @attribute.description

  @value = (newValue) =>
    if arguments.length
      @mutator.set(newValue)
    else
      @attribute.value

  init()
  return

ScalarDirectiveController.$inject = []

angular.module('gurpscc.attributes').directive 'scalarStat', () -> {
  templateUrl: 'attributes/scalar.html'
  restrict: 'E'
  controller: ScalarDirectiveController
  controllerAs: 'scalar'
  bindToController: true
  scope:
    attribute: '='
    mutator: '='
}
