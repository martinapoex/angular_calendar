# Filters
#
angular.module("app.filters", []).filter "interpolate", ["version", (version) ->
  (text) ->
    String(text).replace /\%VERSION\%/g, version
]