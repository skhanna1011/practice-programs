mainModuleRef.controller("information", informationFunc);
function informationFunc($scope) {
  $scope.name = "Date Application";
  $scope.created = "25 June 2017";
  $scope.showMsg = function(){
  	alert("Wow! AngularJs is cool!!")
  }
}