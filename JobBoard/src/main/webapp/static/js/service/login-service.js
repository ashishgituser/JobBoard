jbApp.service('Session', function($window) {
	this.create = function(data) {
		this.id = data.id;
		this.ssoId = data.SSO_ID;
		this.firstName = data.FIRST_NAME;
		this.lastName = data.LAST_NAME;
		this.email = data.email;
		this.userRoles = [];
		angular.forEach(data.userProfiles, function(value, key) {
			this.push(value.type);
		}, this.userRoles);
	};
	this.invalidate = function() {
		this.id = null;
		this.ssoId = null;
		this.firstName = null;
		this.lastName = null;
		this.email = null;
		this.userRoles = null;
	};
	return this;
});

jbApp.service('AuthSharedService', function($window, $rootScope, $http,
		authService, Session) {
	return {
		login : function(ssoId, password) {
			var config = {
				params : {
					ssoId : ssoId,
					password : password
				},
				ignoreAuthModule : 'ignoreAuthModule'
			};
			$http.post('authenticate', '', config).success(
					function(data, status, headers, config) {
						authService.loginConfirmed(data);
					}).error(function(data, status, headers, config) {
				$rootScope.authenticationError = true;
				Session.invalidate();
			});
		},

		isAuthorized : function(authorizedRoles) {
			if (!angular.isArray(authorizedRoles)) {
				if (authorizedRoles == '*') {
					return true;
				}
				authorizedRoles = [ authorizedRoles ];
			}

			var isAuthorized = false;
			angular.forEach(authorizedRoles, function(authorizedRole) {
				var authorized = (!Session.ssoId && Session.userRoles
						.indexOf(authorizedRole) !== -1);
				if (authorized || authorizedRole == '*') {
					isAuthorized = true;
				}
			});

			return isAuthorized;
		}

	};
});