"use strict"

describe "MenuCtrl", ->
  scope = undefined
  ctrl = undefined
  $httpBackend = undefined
  accessToken = 'ZeeAccessToken'

  beforeEach ->
    @addMatchers
      toEqualData: (expected)->
        angular.equals @actual, expected
    return

  beforeEach(module('myServices'));

  beforeEach inject (_$httpBackend_, $rootScope, $controller) ->
    $httpBackend = _$httpBackend_
    $httpBackend.expectGET("api/menu?access_token=" + accessToken).respond [
      name: "China Fun"
    ]
    scope = $rootScope.$new()
    ctrl = $controller MenuCtrl, {$scope: scope}

    return

  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()
    return

  it 'initially has no data', ->
    expect(scope.data).toBeUndefined()
    $httpBackend.flush()
    return

  it 'should fetch "menu" from rest api', ->
    $httpBackend.flush()
    expect(scope.data).toEqualData
      name: "China Fun"
    return

  return
