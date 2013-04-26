App = angular.module("app", ["ui", "ngCookies", "ngResource", "app.controllers", "app.directives", "app.filters", "app.services", "partials"])

App.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider, config) ->
  $routeProvider
    .when("/calendar",
      templateUrl: "/partials/calendar.html",
      controller: 'CalendarCtrl'
    )
    .otherwise redirectTo: "/calendar"
  $locationProvider.html5Mode false
]