#controller
SkillsController = (SchemaService, CharacterService) ->

  init = () =>
    @character = CharacterService.current
    @instances = SchemaService.asClonedList "skills"

    @sortBy('label')
    @setSelected(@instances[0].name)

  @sortBy = (field) ->
    if field == @sortField
      @sortReverse = !@sortReverse
    else
      @sortField = field
      @sortReverse = false

  @setSelected = (description) =>
    @selected = description
    @selectedAttribute = @character.getAttribute @selected.path
    if @selectedAttribute?
      @mutator = @selectedAttribute.mutator(@character)
    else
      @mutator = null

  @addSelected = () =>
    @selectedAttribute = @character.attributeFactory().create @selected

    @character.addAttribute(@selectedAttribute)
    @mutator = @selectedAttribute.mutator(@character)

  @removeSelected = () =>
    if @selectedAttribute?
      @character.removeAttribute(@selected.path)
      @selectedAttribute = null
      @mutator = null

  @active = () =>
    @character.getAttributes('skills')

  @isSelected = (description) =>
    @selected == description

  @notActive = (description) => !@isActive(description)
  @isActive = (description) => @character.isActive(description)

  init()
  return

SkillsController.$inject = ['SchemaService', 'CharacterService']

angular.module('gurpscc').directive 'skills', () -> {
  templateUrl: 'main/skills.html'
  restrict: 'E'
  controller: SkillsController
  controllerAs: 'skills'
  bindToController: true
  scope: true
}
