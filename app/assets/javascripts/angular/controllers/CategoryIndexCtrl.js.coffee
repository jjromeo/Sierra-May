@sierraMay.controller 'CategoryIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http)->
  $scope.categories = []
  $http.get('./categories.json').success((data)->
    $scope.categories = data
  )
  $scope.viewCategory = (id)->
    $location.url "/categories/#{id}"
]
