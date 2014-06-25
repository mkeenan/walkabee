var Walkabee = angular.module('Walkabee', ['ngResource']).config(
    ['$httpProvider', function($httpProvider) {
    var authToken = angular.element("meta[name=\"csrf-token\"]").attr("content");
    var defaults = $httpProvider.defaults.headers;

    defaults.common["X-CSRF-TOKEN"] = authToken;
    defaults.patch = defaults.patch || {};
    defaults.patch['Content-Type'] = 'application/json';
    defaults.common['Accept'] = 'application/json';
}]);

Walkabee.factory('Category', ['$resource', function($resource) {
  return $resource('/categories/:id',
    {id: '@id'},
    {update: { method: 'PATCH'}});
}]);


Walkabee.controller('CategoryCtrl', ['Category', '$scope', '$sce', function(Category, $scope, $sce) {
  $scope.categories= [];

  Category.query(function(categories) {
    $scope.categories = categories;
  });

  $scope.trustSource = function(source) {
        return $sce.trustAsResourceUrl('assets/' + source );
    }

  $scope.playgame = function(playwords) {
    console.log(playwords);
    $scope.startgame = true;
    $scope.playwords = playwords;
  }


}]);