'use strict';

define(['app'], function(app) {
	app.config(['$stateProvider', function($stateProvider) {
		$stateProvider
		   .state('EmployerDashboard', {
			  url : '/employer/dashboard',
			  templateUrl : '/JobBoard/static/app/JobBoard/Employer/dashboard/views/dashboard.html',
			  data : {
				  role : 'EMPLOYER'
			  }
		   });
	}]);
});