ScoreService = () ->

  @register = (keeper) ->
    @keeper = keeper

  @apply = (path, contribution) ->
    @keeper.apply(path, contribution)

  return

ScoreService.$inject = []

angular.module('gurpscc').service 'ScoreService', ScoreService
