<!DOCTYPE html>
<html>
<head>


<title>Bodmas Academy</title>
  	<script src="js/registration.js"></script> 
	<link rel="stylesheet" href="css/register.css">
	
</head>
	
<body>



	
	
      <div class="form-popup" id="popupForm">
				<form class="form-container" action="BodmasControllerServlet" method="post">
							<input type="hidden" name="command" value="ADD" /> 
							<h2>Please confirm your details</h2>
								<div>
									<strong>Name:</strong><input class="form-control" type="text" value="${param.name}" name="name" readonly="readonly">
								</div>
							
								<div>
									<strong>Email:</strong><input class="form-control" type="text" value="${param.email}" name="email" readonly="readonly">
								</div>
							
								<div>
									<strong>Mobile:</strong><input class="form-control" type="text" value="${param.mobile}" name="mobile" readonly="readonly">
								</div>
							
								<div>
									<strong>Password:</strong><input class="form-control" type="text" value="${param.password}" name="password" readonly="readonly">
								</div>
							
								<div>
									<strong>Confirm Password:</strong><input class="form-control" type="text" value="${param.confirm_password}" name="confirm_password" readonly="readonly">
								</div>
							 		
							
								<div>
									<button type="submit" class="btn">
										Confirm
									</button>
									&nbsp;&nbsp; &nbsp; 
									<button type="button" class="btn cancel" onclick="window.history.back()">
										Close</button>
								</div>
							
						</form>
					</div>
					

	  
	</body>
</html>