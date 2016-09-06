#controller
AdvantagesAndDisadvantagesController = (SchemaService, Character) ->

  init = () =>
    @schema = SchemaService.schema
    @advantages = cloneSubSchema(@schema.advantages)
    @disadvantages = cloneSubSchema(@schema.disadvantages)

  @setSelected = (description) =>
    @selected = description
    @characterStat = @createStat()

  @createStat = (description = @selected) =>
    ActivatedStat.create Character, description

  @isExcluded = (description) =>
    for changeDescriptor in @active()
      if changeDescriptor.excluded? && changeDescriptor.excluded.indexOf(description.name) > -1
        return true
    return false

  @isActive = (description) => Character.isActive(description.path)
  @notActive = (description) => !@isActive(description)

  cloneSubSchema = (subSchema) =>
    ret = JSON.parse(JSON.stringify(subSchema))
    delete ret.path
    ret

  @active = () =>
    @actives = []
    @actives.push advantage for name, advantage of Character.changes.advantages
    @actives.push disadvantage for name, disadvantage of Character.changes.disadvantages
    @actives

  init()
  return

AdvantagesAndDisadvantagesController.$inject = ['SchemaService', 'Character']

angular.module('gurpscc').directive 'advantagesAndDisadvantages', () -> {
  templateUrl: 'main/advantage.html'
  restrict: 'E'
  controller: AdvantagesAndDisadvantagesController
  controllerAs: 'advantages'
  bindToController: true
  scope: true
}
