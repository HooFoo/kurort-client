angular.module 'kurort'
  .directive 'kurortMap', ->

    MapController = (uiGmapGoogleMapApi) ->
      'ngInject'

      @user =
        position:
          latitude: 55.75370903771494
          longitude: 37.61981338262558
        options:
          icon: 'assets/images/person_pin.svg'
        marker:
          id: 'user_marker'

      @center = @user.position

      @zoom = 13

      @updateUserPosition = (cb) =>
        if navigator.geolocation
          navigator.geolocation.getCurrentPosition( (position) =>
            @user.position =
              latitude: position.coords.latitude
              longitude: position.coords.longitude
            cb.apply() if cb
          , (err) ->
            console.log("ERROR(#{err.code}): #{err.message}")
          )
        setTimeout(@updateUserPosition,1000)

      @centerToUser = =>
        @center = @user.position

      init = () =>
        uiGmapGoogleMapApi.then((maps) =>
          @gmap = maps
        )
        @updateUserPosition(@centerToUser)



      init()

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/map/map.html'
      controller: MapController
      controllerAs: 'map'
      bindToController: true
