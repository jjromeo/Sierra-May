describe "SierraMay CategoryShowCtrl", ->
  beforeEach module('sierraMay')

  categoryShowUrl = "./categories/5.json"
  shoesCategory = {
                "id":5,"name":"Shoes","created_at":"2014-12-21T01:04:18.348Z",
                "updated_at":"2014-12-21T01:04:18.348Z",
                "products":[
                  {"id":2,"name":"Mockersons","category_id":5,"created_at":"2014-12-21T01:04:18.356Z","updated_at":"2014-12-21T01:04:18.356Z","description":"Classic great shoe"},
                  {"id":3,"name":"High heels","category_id":5,"created_at":"2014-12-21T01:04:18.358Z","updated_at":"2014-12-21T01:04:18.358Z","description":"Painful but worth it!"}
                ]
              }

  beforeEach inject(($injector)->
    @$httpBackend = $injector.get('$httpBackend')
    @$httpBackend.when('GET', categoryShowUrl).respond(shoesCategory)
    @$rootScope = $injector.get('$rootScope')
    @$controller = $injector.get('$controller')

    @createController = ->
      @$controller('CategoryShowCtrl', {'$scope' : @$rootScope})
  )

  afterEach ->
    @$httpBackend.verifyNoOutstandingExpectation()
    @$httpBackend.verifyNoOutstandingRequest()

  describe "CategoryShowCtrl", ->
    it 'should set categories to an empty array', inject(()->
      @$httpBackend.expectGet('./categories/5.json')
      @createController()
      expect(@$rootScope.category).toBe null
      @$httpBackend.flush()
    )

