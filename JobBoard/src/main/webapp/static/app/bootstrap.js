define([
    'require',
    'angular',
    'app'
], function (require, angular, app) {
    require(['domReady!'], function (document) {
        angular.bootstrap(document, ['app']);
    });
});