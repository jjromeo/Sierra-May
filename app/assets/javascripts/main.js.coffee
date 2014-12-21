@sierraMay = angular.module('sierraMay', ['ngRoute'])

@sierraMay.config(['$routeProvider', ($routeProvider)->
  $routeProvider.
    when('/categories', {
      templateUrl: '../templates/categories/index.html',
      controller: 'CategoryIndexCtrl'
    }).
    when('/categories/:id', {
      templateUrl: '../templates/categories/show.html',
      controller: 'CategoryShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })

])
