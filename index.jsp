<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NY API</title>



  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> 
   
   
<script>


var app=angular.module("afrm",[]);

app.controller("fetchdata",function($scope, $http)
{


	$http.get("http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=187140cae9694e1fb05e755f09091207").then(function (response) {$scope.apiVal = response.data.results;});

});

</script>


<style>
.txtstl{
align:right;
}
</style>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
  
  

</head>
<body>
			<div ng-app="afrm" ng-controller="fetchdata">

					    <div id="sticker" class="header-area">
						      <div class="container">
						        <div class="row">
						          <div class="col-md-12 col-sm-12">
						
						           
						            <nav class="navbar navbar-default">
						              <!-- Brand and toggle get grouped for better mobile display -->
						              
										                 <div> <h1><span>NYTimes</span></h1></div>
										                  
										                 
									</nav>
									
									
										              
						    	 </div>
						    	 
						    	 <div class="col-md-12 col-sm-12">
						    	 
						    		<div>
									<div class="float-right"><input type="text" ng-model="srch"   placeholder="keyword search" ><br> </div>
									</div>
						    	 </div>
						    	  <div class="col-md-12 col-sm-12">
									<div class="panel-group" id="accordion" >
		      			
		      			
						      			 <div class="panel panel-default"  ng-repeat="val in apiVal | orderBy : views : true | filter:srch">
										            <div class="panel-heading">
										                <h4 class="panel-title">
										                    <a data-toggle="collapse" data-parent="#accordion" href='{{"#collapse"+$index}}'  >{{val.title}}  <span style="color:blue;font-weight:bold;font-size:10px;">&nbsp;&nbsp;Views : {{ val.views}}</span></a>
										                </h4>
										            </div>
									      			<div id='{{"collapse"+$index}}' class="panel-collapse collapse">
										                <div class="panel-body">
										                    <p>{{val.abstract}}. <a href="{{val.url}}" target="_blank">Read more.</a></p>
										                </div>
									            	</div>
						        		</div>
					        		
					        		
		     						</div>
     					</div>
						    	</div>
						      </div>	
   						</div> 	
					
                  	                 	
              </div>


</body>
</html>