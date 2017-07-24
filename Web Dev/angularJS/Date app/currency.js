currencyModuleRef.controller("currency", currencyConvertor);
function currencyConvertor($scope){
  $scope.amount = 0;
  console.log($scope.amount);
  $scope.currencyVal = 66.28;
  $scope.showImg = false;
  // $scope.currencies = ["Dollar", "Pound", "Euro" ];

  $scope.currencies = [
  	{name: 'Dollar', value: 64.50},
  	{name: 'Pound', value: 82.23},
  	{name: 'Euro', value: 72.16}
  ]
   $scope.selectedCurrency = $scope.currencies[0];
}  
