// TODO: Add angular application module and routes.
//= require_self
//= require_tree ./services/main
//= require_tree ./filters/main
//= require_tree ./controllers/main
//= require_tree ./directives/main

var StoreFront = angular.module('StoreFront',['ngRoute']);

// Angular routes
StoreFront.config(['$routeProvider', function($routeProvider){

// Route for '/product/new'
    $routeProvider.when('/product/new',{
        templateUrl: '../assets/mainCreateProduct.html',
        controller: 'CreateProductCtrl'
     });

    // Route to retrieve one product
    // '/product/:productId
    $routeProvider.when('/product/:productId',{
        templateUrl: '../assets/mainProduct.html',
        controller: 'ProductCtrl'
    });

    // Default Route
    $routeProvider.otherwise({
        templateUrl: '../assets/mainIndex.html',
        controller: 'IndexCtrl'
    });
}]);





