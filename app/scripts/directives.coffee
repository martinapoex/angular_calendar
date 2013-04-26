# Directives
#
angular.module("app.directives", ["app.services"])
.directive("draggableResource", ->
  restrict: "A"
  link: (scope, elm, attrs) ->
    options = scope.$eval(attrs.draggableResource)
    elm.draggable options
)