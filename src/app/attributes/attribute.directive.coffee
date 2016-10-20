#controller
AttributeEditDirectiveController = (SchemaService) ->

  init = () =>
    @showNote = @attribute.note?

  init()
  return

AttributeEditDirectiveController.$inject = ['SchemaService']

angular.module('gurpscc.attributes').directive 'attributeEdit', () ->
  templateUrl: 'attributes/attribute.html'
  restrict: 'E'
  controller: AttributeEditDirectiveController
  controllerAs: 'attributeEdit'
  bindToController: true
  scope:
    attribute: '='
    mutator: '='
    character: '='
