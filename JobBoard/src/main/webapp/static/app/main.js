'use strict';

require.config({
    waitSeconds: 200,
	//paths to the library
	paths: {
		'jQuery' : '/JobBoard/static/lib/jquery/jquery-3.1.1.min',
		'angular' : '/JobBoard/static/lib/angular/angular',
		'angular-resource' : '/JobBoard/static/lib/angular/angular-resource',
		'angular-ui-router' : '/JobBoard/static/lib/angular/angular-ui-router',
		'domReady' : '/JobBoard/static/lib/domready/domready'
	},
	
	//modules and dependencies
	shim: {
		'angular-ui-router': {
			'exports': 'angular-ui-router',
			deps: ['angular']
		},
        'angular': {
            'exports': 'angular',
            deps: ['jQuery']
        },
        'jQuery': {
            'exports': 'jQuery'
        },
        'angular-resource': {
        	'exports': 'angular-resource',
        	deps: ['angular']
        },
        'domReady': {
        	'exports': 'domReady',
        	deps: ['angular']
        }
	},
	
	//kick start application
	deps: [
		'./JobBoard/Homepage/jobBoardHomepage',
		'./bootstrap'
	],
	
	priority: [
	    "angular"
	]
});