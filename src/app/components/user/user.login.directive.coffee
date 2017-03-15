angular.module 'kurort'
  .directive 'kurortUserLogin', (Auth)->

    UserLoginController = ()->
      'ngInject'

      @user =
        email: ''
        password: ''

      @isFormComplete = false

      submit: ()->

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/user/user.login.html'
      controller: UserLoginController
      controllerAs: 'loginCtrl'
      bindToController: true
