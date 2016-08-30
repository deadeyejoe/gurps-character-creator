#controller
AdvantagesAndDisadvantagesController = (SchemaService) ->

  init = () =>
    @schema = SchemaService.schema
    @advantages = cloneSubSchema(@schema.advantages)
    @disadvantages = cloneSubSchema(@schema.disadvantages)
    @active = {}

  @clearCharacter = () =>
    @character = []

  @addToCharacter = (statSchema) =>
    @active[statSchema.path] = statSchema

  @select = (statSchema) =>
    @selected = statSchema

  @removeFromCharacter = (statSchema) =>
    delete @active[statSchema.path]

  @isActive = (statSchema) =>
    return @active[statSchema.path]?

  @isExcluded = (statSchema) =>
    for path, activeDescription of @active
      if activeDescription.excluded? && activeDescription.excluded.indexOf(statSchema.name) > -1
        return true
    return false

  cloneSubSchema = (subSchema) =>
    ret = JSON.parse(JSON.stringify(subSchema))
    delete ret.path
    ret

  init()
  return

AdvantagesAndDisadvantagesController.$inject = ['SchemaService']

angular.module('gurpscc').directive 'advantagesAndDisadvantages', () -> {
  templateUrl: 'main/advantage.html'
  restrict: 'E'
  controller: AdvantagesAndDisadvantagesController
  controllerAs: 'advDis'
  bindToController: true
  scope: true
}
