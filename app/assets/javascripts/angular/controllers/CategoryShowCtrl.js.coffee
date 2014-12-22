@sierraMay.controller 'CategoryShowCtrl', ['$scope', '$http', '$routeParams', '$location', ($scope, $http, $routeParams, $location)->
  $http.get("./categories/#{$routeParams.id}.json").success((data)->
    $scope.category = data 
    $scope.products = $scope.category.products
  )
  $scope.viewProduct = (categoryId, id)->
    $location.url "/categories/#{categoryId}/products/#{id}"
]
