angular.module 'kurort'
  .directive 'kurortNavbar', ->

    NavbarController = () ->
      'ngInject'
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
