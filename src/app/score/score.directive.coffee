ScoreDirectiveController = (ScoreService, CharacterService) ->

  init = () =>
    @character = CharacterService.current
    @totalPoints = 150

  @spentPoints = () =>
    @character.contribution

  @currentPoints = () =>
    @totalPoints - @spentPoints()

  init()

ScoreDirectiveController.$inject = ['ScoreService', 'CharacterService']

angular.module('gurpscc').controller('ScoreDirectiveController', ScoreDirectiveController)

ScoreDirective = () -> {
  templateUrl: 'score/score.html'
  restrict: 'E'
  controller: 'ScoreDirectiveController'
  controllerAs: 'score'
}

angular.module('gurpscc').directive('score', ScoreDirective)
