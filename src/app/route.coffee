"use strict"

angular.module('gurpscc').config ($stateProvider, $urlRouterProvider) ->

  #Check out the ui-router documentation!
  $stateProvider
    .state 'main', {
      url: '/'
      views:
        "content":
          templateUrl: 'main/main.html'
          controller: 'MainController'
          controllerAs: 'main'
    }

  $urlRouterProvider.otherwise('/')
