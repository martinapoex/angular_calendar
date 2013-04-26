# Controllers
#
angular.module("app.controllers", []).controller("AppCtrl", ["$scope", "$location", "$resource", "$rootScope", ($scope, $location, $resource, $rootScope) ->
  $scope.$location = $location
  $scope.$watch "$location.path()", (path) ->
    $scope.activeNavId = path or "/"

  $scope.getClass = (id) ->
    if $scope.activeNavId.substring(0, id.length) is id
      "active"
    else
      ""
]).controller("MyCtrl1", ["$scope", ($scope) ->
  $scope.onePlusOne = 2

]).controller("CalendarCtrl", ["$scope", ($scope) ->
  $scope


]).controller("MyCtrl2", ["$scope", ($scope) ->
  $scope
]).controller "TodoCtrl", ["$scope", ($scope) ->
  $scope.todos = [
    text: "learn angular"
    done: true
  ,
    text: "build an angular app"
    done: false
  ]
  $scope.addTodo = ->
    $scope.todos.push
      text: $scope.todoText
      done: false

    $scope.todoText = ""

  $scope.remaining = ->
    count = undefined
    count = 0
    angular.forEach $scope.todos, (todo) ->
      count += ((if todo.done then 0 else 1))

    count

  $scope.archive = ->
    oldTodos = undefined
    oldTodos = $scope.todos
    $scope.todos = []
    angular.forEach oldTodos, (todo) ->
      $scope.todos.push todo  unless todo.done

]