#controller
PrimaryController = (SchemaService, CharacterService) ->

  init = () =>
    @character = CharacterService.current
    @derived = SchemaService.asClonedList "derived"
    @primary =  packageMutators @character.getAttributes("primary")
    @image_and_status = packageMutators @character.getAttributes("image_and_status")

  packageMutators = (attributes) =>
    for attribute in attributes
      {
        attribute: attribute
        mutator: attribute.mutator(@character)
      }

  init()
  return

PrimaryController.$inject = ['SchemaService', 'CharacterService']

angular.module('gurpscc').directive 'primary', () ->
  templateUrl: 'main/primary.html'
  restrict: 'E'
  controller: PrimaryController
  controllerAs: 'primary'
  bindToController: true
  scope: true
