App = angular.module("app", ["ngCookies", "ngResource", "app.controllers", "app.directives", "app.filters", "app.services", "partials"])

App.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider, config) ->
  $routeProvider.when("/todo",
    templateUrl: "/partials/todo.html"
  ).when("/calendar",
    templateUrl: "/partials/calendar.html"
  ).when("/view1",
    templateUrl: "/partials/partial1.html"
  ).when("/view2",
    templateUrl: "/partials/partial2.html"
  ).otherwise redirectTo: "/todo"
  $locationProvider.html5Mode false
]