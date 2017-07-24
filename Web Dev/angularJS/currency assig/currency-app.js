var app = angular.module("currency-mod", []);
app.controller("currCtrl", function($scope){
  $scope.currencies = [{
    "name": "Ruppee",
    "sym": "&#8377;",
    "val": 1
  }];
  $scope.currencyName = "";
  $scope.currency = {
    "name": "",
    "sym": "",
    "val": 0
  };
  $scope.selectedCurrency = $scope.currencies.first
  $scope.addObj = function(){
    $scope.currencies.push($scope.currency);
    console.log($scope.currencies);
  }
  $scope.remove = ""
  $scope.removeObj = function(){
    var i = 0;
    while($scope.currencies.length > i){ 
      if ($scope.currencies[i].name == $scope.remove) {
        index = i;
      }
      i++;
    }
    $scope.currencies.splice(index)
    console.log($scope.currencies)
  }
  $scope.changeText = function(){

  }
  $scope.currSym = "";
  $scope.value = 0;
});