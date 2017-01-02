'use strict';

define(['app'], function(app) {
	app.config(['$stateProvider', function($stateProvider) {
		
		$stateProvider
		     .state('home', {
		    	url : '/',
		    	templateUrl : '/JobBoard/static/app/JobBoard/Homepage/views/homepage.html',
		    	controller : 'HomepageCtrl'
		     });		
	}]);
});