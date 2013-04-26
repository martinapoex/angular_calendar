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
]).controller("CalendarCtrl", ["$scope", ($scope) ->
  $scope.events = []
  $scope.calendarOptions = 
    height: 650
    editable: true
    defaultView: 'agendaWeek'
    timeFormat: 'H(:mm)'
    agenda: 'h:mm{ - h:mm}'
    droppable: true
    dropAccept: '.resource'
    drop: (date, allDay, jsEvent, ui) ->
      $scope.addEvent({ title: $(jsEvent.target).data('name'), start: date, allDay: allDay })
      $('.calendar').fullCalendar( 'refetchEvents' )

  $scope.eventSource =
    #url: "http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic"

  $scope.resources = ['Unddel' ,'Tyor' ,'Tasale' ,'Torild' ,'Aromo' ,'Lugesy' ,'Itch' ,'Samor' ,'Untount' ,'Kimlerdan' ,'Arducer' ,'Umaugh' ,'Mitaiar' ,'Analedra']
  
  $scope.eventSources = [$scope.events, $scope.eventSource]

  $scope.addEvent = (data) ->
    $scope.events.push
      title: data.title
      start: new Date(data.start)
      allDay: data.allDay
])