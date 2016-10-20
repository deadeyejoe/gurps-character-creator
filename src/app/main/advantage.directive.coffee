#controller
AdvantagesAndDisadvantagesController = (SchemaService, CharacterService) ->

  init = () =>
    @character = CharacterService.current
    @advantages = SchemaService.asClonedList "advantages"
    @disadvantages = SchemaService.asClonedList "disadvantages"

  @setSelected = (description) =>
    @selected = description
    @selectedAttribute = @character.getAttribute @selected.path
    if @selectedAttribute?
      @mutator = @selectedAttribute.mutator(@character)
    else
      @mutator = null

  @addSelected = () =>
    if @selected.type == "toggle"
      @selectedAttribute = @character.attributeFactory().create @selected, {value: true}
    else
      @selectedAttribute = @character.attributeFactory().create @selected

    @character.addAttribute(@selectedAttribute)
    @mutator = @selectedAttribute.mutator(@character)

  @removeSelected = () =>
    if @selectedAttribute?
      @character.removeAttribute(@selected.path)
      @selectedAttribute = null
      @mutator = null

  @isActive = (description) =>
    @character.isActive(description.path)

  @active = () =>
    @character.getAttributes("advantages")

  @isInactive = (value) =>
    !@isActive(value.path)

  init()
  return

AdvantagesAndDisadvantagesController.$inject = ['SchemaService', 'CharacterService']

angular.module('gurpscc').directive 'advantagesAndDisadvantages', () -> {
  templateUrl: 'main/advantage.html'
  restrict: 'E'
  controller: AdvantagesAndDisadvantagesController
  controllerAs: 'advantages'
  bindToController: true
  scope: true
}
