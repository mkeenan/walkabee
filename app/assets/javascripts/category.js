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
  return $resource('/category/:id',
    {id: '@id'},
    {update: { method: 'PATCH'}});
}]);

Walkabee.factory('Word', ['$resource', function($resource) {
  return $resource('/word/:id',
    {id: '@id'},
    {update: { method: 'PATCH'}});
}]);

Walkabee.controller('CategoryCtrl', [‘category', '$scope', function(Category, $scope) {
  $scope.categories= [];

  Category.query(function(categories) {
    $scope.categories = categories;
  }])


Walkabee.controller('WordCtrl', [‘word', '$scope', function(Word, $scope) {
  $scope.words= [];

  Word.query(function(words) {
    $scope.words = words;
  });
}])