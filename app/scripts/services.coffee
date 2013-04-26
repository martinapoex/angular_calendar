# Sevices
#
angular.module("app.services", []).factory("version", ->
  "0.1"
).factory("Calendar", ($resource) ->
  return $resource('https://apoex-meeting-room-api.herokuapp.com/calendar', {})

)
