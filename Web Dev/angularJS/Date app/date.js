dateModuleRef.controller("date", dateFunc);
function dateFunc($scope) {
  $scope.dateob = new Date();
}