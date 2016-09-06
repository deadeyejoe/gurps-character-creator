ScalarEditController = () ->

  init = () =>

  init()
  return

ScalarEditController.$inject = []

angular.module('gurpscc.attributes').directive 'selectEdit', () -> {
  templateUrl: 'attributes/selectEdit.html'
  restrict: 'E'
  controller: ScalarEditController
  controllerAs: 'selectEdit'
  bindToController: true
  scope:
    stat: '='
}
