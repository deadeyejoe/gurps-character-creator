aliases =
  ST:'strength-related'
  DX:'dexterity-related'
  IQ:'iq-related'
  HT:'health-related'

angular.module('gurpscc').directive 'relatedStat', () -> {
  restrict: 'A'
  scope:
    relatedStat: '='
  link: (scope, element, attr)->

    element.addClass aliases[scope.relatedStat]
}
