#controller
AttributeDirectiveController = (SchemaService) ->

  init = () =>
    @description = SchemaService.descriptionFor @path

  @type = () =>
    @description.type

  init()
  return

AttributeDirectiveController.$inject = ['SchemaService']

angular.module('gurpscc.attributes').directive 'attribute', () -> {
  templateUrl: 'attributes/attribute.html'
  restrict: 'E'
  controller: AttributeDirectiveController
  controllerAs: 'attribute'
  bindToController: true
  scope:
    path: '@'
}
