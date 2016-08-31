#controller
SkillsController = (SchemaService) ->

  init = () =>
    @colors = 
      ST:'#ca6464'
      DX:'#4946e6'
      IQ:'#9a539e'
      HT:'#46e67f'
      
    @schema = SchemaService.schema
    @instances = cloneSubSchema(@schema.skills)

  @colorFor = (description) =>
    @colors[description.stat]
    
  cloneSubSchema = (subSchema) =>
    ret = JSON.parse(JSON.stringify(subSchema))
    delete ret.path
    ret
    
  init()
  return

SkillsController.$inject = ['SchemaService']

angular.module('gurpscc').directive 'skills', () -> {
  templateUrl: 'main/skills.html'
  restrict: 'E'
  controller: SkillsController
  controllerAs: 'skills'
  bindToController: true
  scope: true
}