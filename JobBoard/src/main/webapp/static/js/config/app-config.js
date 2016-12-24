jbApp.constant('USER_ROLES', {
	all : '*',
	admin : 'ADMIN',
	user : 'USER'
});

jbApp.config(function($routeProvider,USER_ROLES) {

	$routeProvider.when("/", {
		templateUrl : "/JobBoard/static/templates/home.html",
		access : {
			loginRequired : false,
			authorizedRoles : [ USER_ROLES.all ]
		}
	}).when("/admin/dashboard", {
		templateUrl : "/JobBoard/static/templates/dashboard.html",
		access : {
			loginRequired : true,
			authorizedRoles : [ USER_ROLES.admin ]
		}
	}).when("/login", {
		templateUrl : "/JobBoard/static/templates/login.html",
		controller : "LoginController",
		access : {
			loginRequired : false,
			authorizedRoles : [ USER_ROLES.all ]
		}
	}).otherwise({
		redirectTo : '/error/404',
		access : {
			loginRequired : false,
			authorizedRoles : [ USER_ROLES.all ]
		}
	});
});

jbApp
		.run(function($rootScope, $location, $http, AuthSharedService, Session,
				USER_ROLES, $q, $timeout) {
			// Call when the 403 response is returned by the server
			$rootScope.$on('event:auth-forbidden', function(rejection) {
				$rootScope.$evalAsync(function() {
					$location.path('/error/403').replace();
				});
			});

			$rootScope
					.$on(
							'$routeChangeStart',
							function(event, next) {
								if (next.originalPath === "/login"
										&& $rootScope.authenticated) {
									event.preventDefault();
								} else if (next.access
										&& next.access.loginRequired
										&& !$rootScope.authenticated) {
									event.preventDefault();
									$rootScope.$broadcast(
											"event:auth-loginRequired", {});
								} else if (next.access
										&& !AuthSharedService
												.isAuthorized(next.access.authorizedRoles)) {
									event.preventDefault();
									$rootScope.$broadcast(
											"event:auth-forbidden", {});
								}
							});

			// Call when the the client is confirmed
			$rootScope
					.$on(
							'event:auth-loginConfirmed',
							function(event, data) {
								$rootScope.loadingAccount = false;
								var nextLocation = ($rootScope.requestedUrl ? $rootScope.requestedUrl
										: "/admin/dashboard");
								var delay = ($location.path() === "/loading" ? 1500
										: 0);

								$timeout(function() {
									Session.create(data);
									$rootScope.account = Session;
									$rootScope.authenticated = true;
									$location.path(nextLocation).replace();
								}, delay);

							});

			// Call when the 401 response is returned by the server
			$rootScope.$on('event:auth-loginRequired', function(event, data) {
				if ($rootScope.loadingAccount && data.status !== 401) {
					$rootScope.requestedUrl = $location.path();
					$location.path('/loading');
				} else {
					Session.invalidate();
					$rootScope.authenticated = false;
					$rootScope.loadingAccount = false;
					$location.path('/login');
				}
			});
		});