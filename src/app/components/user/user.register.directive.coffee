angular.module 'kurort'
  .directive 'kurortUserRegister', (Auth)->

    UserRegisterController = () ->
      'ngInject'

      @user =
        username: ''
        email: ''
        password: ''
        password_confirmation: ''

      @isFormComplete = false

      @submit = ()->

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/user/user.register.html'
      controller: UserRegisterController
      controllerAs: 'registerCtrl'
      bindToController: true
