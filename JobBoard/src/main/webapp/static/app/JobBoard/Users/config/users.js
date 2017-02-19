'use strict';

define(['app'], function(app) {
	app.config(['$stateProvider', function($stateProvider) {
		$stateProvider
		   .state('userLogin', {
			  url : '/login',
			  templateUrl : '/JobBoard/static/app/JobBoard/Users/views/login.html',
			  controller : 'UserCtrl',
			  data : {
				  role : 'guest'
			  }
		   });
	}]);
	
	
	app.run(['$http','$rootScope','$state','userService', function($http, $rootScope, $state, userService) {
		$rootScope.$on('$stateChangeStart', function (event, toState, toParams, fromState, fromParams) {
            if (typeof toState.data !== 'undefined') {
                console.log('Role needed: ' + toState.data.role);
                var role = toState.data.role;

                if (role == 'user') {
                    if ($rootScope.user === undefined) {
                    	$rootScope.user = false;
                        event.preventDefault();
                        $state.transitionTo('userLogin');
                    } else if ($rootScope.user == false) {
                        event.preventDefault();

                        $state.transitionTo('userLogin', {
                            locale: locale
                        });
                    }
                }
            }
        });
	}]);
});