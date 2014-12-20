@sierraMay = angular.module('sierraMay', ['ngRoute'])

@sierraMay.config(['$routeProvider', ($routeProvider)->
  $routeProvider.
    when('/categories', {
      templateUrl: '../templates/categories/index.html',
      controller: 'CategoryIndexCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })

])
