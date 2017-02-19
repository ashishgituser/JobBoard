'use strict';

define(['app'], function(app) {
	app.service('userService', ['$http', function($http) {
		return {
			login : function(ssoId, password) {
				var url = '/JobBoard/authenticate';
				var data = {
						ssoId : ssoId,
						password : password
				};
				
				return $http({
					url : url,
					data : $.param(data),
					method : 'POST',
					headers : {"Content-Type": "application/x-www-form-urlencoded"}
				});
			}
		};
	}]);
});