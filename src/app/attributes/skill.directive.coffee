#controller
SkillEditController = (SchemaService, Character, $scope) ->

  init = () =>


  init()
  return

SkillEditController.$inject = ['SchemaService', 'Character', '$scope']

angular.module('gurpscc.attributes').directive 'skillEdit', () -> {
  templateUrl: 'attributes/skill.html'
  restrict: 'E'
  controller: SkillEditController
  controllerAs: 'skill'
  bindToController: true
  scope:
    characterStat: '='
}
