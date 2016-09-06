#controller
SkillsController = (SchemaService, Character) ->

  init = () =>
    @schema = SchemaService.schema

    @instances = objToArray(@schema.skills)
    @instances.pop() #remove the 'path'

    @sortBy('label')
    @setSelected(@instances[0].name)

  @sortBy = (field) ->
    if field == @sortField
      @sortReverse = !@sortReverse
    else
      @sortField = field
      @sortReverse = false

  objToArray = (obj) =>
    ret = []
    ret.push value for key, value of obj
    ret

  @createStat = (description = @selected) =>
    ActivatedStat.create Character, description

  @setSelected = (name) =>
    @selected = @descriptionFor(name)
    @characterStat = @createStat()

  @isSelected = (name) => @selected.name == name
  @descriptionFor = (name) => @schema.skills[name]

  @notActive = (description) => !@isActive(description)
  @isActive = (description) => Character.isActive(description.path)

  @active = () =>
    @actives = []
    @actives.push skill for name, skill of Character.changes.skills
    @actives

  @selectAndToggle = (description) =>
    @setSelected(description.name)
    if @characterStat.isActive() then @characterStat.deactivate() else @characterStat.activate()

  init()
  return

SkillsController.$inject = ['SchemaService', 'Character']

angular.module('gurpscc').directive 'skills', () -> {
  templateUrl: 'main/skills.html'
  restrict: 'E'
  controller: SkillsController
  controllerAs: 'skills'
  bindToController: true
  scope: true
}
