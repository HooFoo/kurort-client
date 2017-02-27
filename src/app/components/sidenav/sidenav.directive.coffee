angular.module 'kurort'
  .directive 'kurortSidenav', ->

    SidenavController = () ->
      'ngInject'

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/sidenav/sidenav.html'
      controller: SidenavController
      controllerAs: 'vm'
      bindToController: true
