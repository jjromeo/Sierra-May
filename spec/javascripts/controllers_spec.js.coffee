describe "SierraMay controllers", ->
  beforeEach module('sierraMay')

  describe "CategoryIndexCtrl", ->
    it 'should set categories to an empty array', inject(($controller)->
      scope = {}
      ctrl = $controller("CategoryIndexCtrl", 
        $scope: scope
      )
      expect(scope.categories.length).toBe 0
    )
