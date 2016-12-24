jbApp.controller('LoginController', function($rootScope, $scope, AuthSharedService) {
	$rootScope.message = "Please Login";
	$scope.login = function() {
		$rootScope.authenticationError = false;
		AuthSharedService.login($scope.ssoId, $scope.password);
	};
});