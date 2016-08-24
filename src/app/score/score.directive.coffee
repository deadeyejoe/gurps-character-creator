ScoreDirectiveController = (ScoreService) ->

  init = () =>
    @totalPoints = 150
    @currentPoints = @totalPoints
    @spentPoints = 0
    @spent = {}

    @updateTotal = updateTotal
    @apply = apply

    ScoreService.register this

  updateTotal = () =>
    @currentPoints = @totalPoints - @spentPoints

  apply = (path, contribution) =>
    @spent[path] = contribution

    total = 0
    total += contribution for path, contribution of @spent

    @spentPoints = total
    @currentPoints = @totalPoints - @spentPoints

  init()

ScoreDirectiveController.$inject = ['ScoreService']

angular.module('gurpscc').controller('ScoreDirectiveController', ScoreDirectiveController)

ScoreDirective = () -> {
  templateUrl: 'score/score.html'
  restrict: 'E'
  controller: 'ScoreDirectiveController'
  controllerAs: 'score'
}

angular.module('gurpscc').directive('score', ScoreDirective)
