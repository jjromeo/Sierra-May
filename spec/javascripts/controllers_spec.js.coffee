describe "SierraMay controllers", ->
  $httpBackend = null
  beforeEach module('sierraMay')

  someCategories = [
                    {"id":5,"name":"Shoes","url":"http://localhost:3000/categories/5.json"},
                    {"id":6,"name":"Underwear","url":"http://localhost:3000/categories/6.json"},
                    {"id":7,"name":"Accessories","url":"http://localhost:3000/categories/7.json"}
                  ]
  beforeEach inject(($injector)->
    $httpBackend = $injector.get('$httpBackend')
    categoryHandler = $httpBackend.when('GET', './categories.json').respond(someCategories)
    $rootScope = $injector.get('$rootScope')
    $controller = $injector.get('$controller')

    createController = ->
      $controller('CategoryIndexCtrl', {'$scope' : $rootScope})
  )

  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  describe "CategoryIndexCtrl", ->
    it 'should set categories to an empty array', inject(($controller)->
      scope = {}
      ctrl = $controller("CategoryIndexCtrl", 
        $scope: scope
      )
      expect(scope.categories.length).toBe 0
      $httpBackend.flush()
    )

    it 'should be able to grab categories from json', inject(($controller)->
      scope = {}
      ctrl = $controller("CategoryIndexCtrl",
        $scope: scope 
      )
      expect(scope.categories.length).toBe 0
      $httpBackend.flush()
      expect(scope.categories.length).toBe 3
    )
