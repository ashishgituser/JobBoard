jbApp.controller('LoginController', function($window, $rootScope, $scope, AuthSharedService) {
	$rootScope.message = "Please Login";	
	$scope.login = function() {
		$rootScope.authenticationError = false;
		AuthSharedService.login($scope.ssoId, $scope.password);
	};
});

jbApp.controller('dashboardController', function($rootScope, $scope, Session) {
	$scope.username = Session.firstName;
});