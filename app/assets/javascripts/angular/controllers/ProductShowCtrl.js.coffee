@sierraMay.controller 'ProductShowCtrl', ['$scope', '$http','$routeParams', ($scope, $http, $routeParams)->
  $http.get("./categories/#{$routeParams.categories_id}/products/#{$routeParams.id}.json").success((data)->
    $scope.product = data
  )
  
]
