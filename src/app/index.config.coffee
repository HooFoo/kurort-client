angular.module 'kurort'
  .config ($logProvider, uiGmapGoogleMapApiProvider) ->
    'ngInject'
    # Enable log
    $logProvider.debugEnabled true
    uiGmapGoogleMapApiProvider.configure
      key: ''
      v: '3.26'
      libraries: 'weather,geometry,visualization'
    return
