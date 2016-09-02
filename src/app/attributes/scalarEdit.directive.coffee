ScalarEditController = () ->

  init = () =>

  init()
  return

ScalarEditController.$inject = []

angular.module('gurpscc.attributes').directive 'scalarEdit', () -> {
  templateUrl: 'attributes/scalarEdit.html'
  restrict: 'E'
  controller: ScalarEditController
  controllerAs: 'scalarEdit'
  bindToController: true
  scope:
    stat: '='
}
