angular.module 'kurort'
  .directive 'kurortUserWidget', ->

    UserWidgetController = () ->
      'ngInject'
      @loggedIn = false

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/user/user.widget.html'
      controller: UserWidgetController
      controllerAs: 'userCtrl'
      bindToController: true
      link: (scope, element, attrs)->
        window.userW = element
        element.find('ul.tabs').tabs()
