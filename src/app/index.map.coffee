angular.module 'kurort'
  .config (uiGmapGoogleMapApiProvider) ->
    uiGmapGoogleMapApiProvider.configure
      key: ''
      v: '3.26'
      libraries: 'weather,geometry,visualization'
