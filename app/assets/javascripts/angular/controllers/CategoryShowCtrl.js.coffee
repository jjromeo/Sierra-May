@sierraMay.controller 'CategoryShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams)->
  $http.get("./categories/#{$routeParams.id}.json").success((data)->
    $scope.category = data 
    $scope.products = $scope.category.products
  )
]
