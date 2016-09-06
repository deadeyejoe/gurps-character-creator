#controller
ActivatedAttributeDirectiveController = (SchemaService) ->

  init = () =>
    @characterStat.stat.on() if @characterStat.description.type == "toggle"

  init()
  return

ActivatedAttributeDirectiveController.$inject = ['SchemaService']

angular.module('gurpscc.attributes').directive 'activatedAttribute', () -> {
  templateUrl: 'attributes/activatedAttribute.html'
  restrict: 'E'
  controller: ActivatedAttributeDirectiveController
  controllerAs: 'activatedAttribute'
  bindToController: true
  scope:
    characterStat: '='
}
