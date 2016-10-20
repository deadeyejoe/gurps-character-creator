SelectController = () ->

  init = () =>
    @description = @attribute.description

  @value = (newValue) =>
    if arguments.length
      @mutator.set(newValue)
    else
      @attribute.value

  init()
  return

SelectController.$inject = []

angular.module('gurpscc.attributes').directive 'selectStat', () ->
  templateUrl: 'attributes/select.html'
  restrict: 'E'
  controller: SelectController
  controllerAs: 'select'
  bindToController: true
  scope:
    attribute: '='
    mutator: '='
