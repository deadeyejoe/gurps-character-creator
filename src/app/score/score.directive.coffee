ScoreDirectiveController = (ScoreService, Character) ->

  init = () =>
    @character = Character
    @totalPoints = 150
    @currentPoints = @totalPoints

    @updateTotal = updateTotal

    ScoreService.register this

  @spentPoints = () =>
    @character.contribution

  updateTotal = () =>
    @currentPoints = @totalPoints - @spentPoints()

  init()

ScoreDirectiveController.$inject = ['ScoreService', 'Character']

angular.module('gurpscc').controller('ScoreDirectiveController', ScoreDirectiveController)

ScoreDirective = () -> {
  templateUrl: 'score/score.html'
  restrict: 'E'
  controller: 'ScoreDirectiveController'
  controllerAs: 'score'
}

angular.module('gurpscc').directive('score', ScoreDirective)
