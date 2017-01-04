'use strict';

define([ 'app' ], function(app) {
	app.controller('UserCtrl', [
			'$scope',
			'$rootScope',
			'$state',
			'$window',
			'userService',
			function($scope, $rootScope, $state, $window, userService) {
				$scope.login = function(ssoId, password) {
					userService.login(ssoId, password)
					  .success(
							function(data, status) {								
								$window.alert(JSON.stringify(data));
								$rootScope.user = data;
								$state.transitionTo('EmployerDashboard');
							}
					  );
				};
			} 
	]);
});