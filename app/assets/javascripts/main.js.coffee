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
    when('/categories/:category_id/products/:id', {
      templateUrl: '../templates/products/show.html',
      controller: 'ProductShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })

])
