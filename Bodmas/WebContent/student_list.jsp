<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
	<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Bodmas Academy</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="js/registration.js"></script> 
	<link rel="stylesheet" href="css/register.css">
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    


</head>
<body class="host_version"> 


 	<% 
	    
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  //Http 1.1
	    
	    response.setHeader("Pragma", "no-cache"); //Http 1.0
	    
	    response.setHeader("Expires", "0"); //Proxies
	    
	
		if(session.getAttribute("email")==null){
			
			response.sendRedirect("index.html");
		}
	%>

	<!-- Modal -->
	<div class="modal fade" id="logout" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Confirm Logout</h4>
			</div>
			<div class="modal-body customer-box">
				<!-- Nav tabs -->
			<!--  	<ul class="nav nav-tabs">
					<li><a class="active" href="#Logout" data-toggle="tab">Login</a></li>
					
				</ul> -->
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="Logout">
						<form role="form" class="form-horizontal" action="BodmasControllerServlet" method="post">
						<input type="hidden" name="command" value="LOGOUT" />
							
							
					
							<div class="row">							
								<div class="col-sm-10" class="open-btn">
									<button type="submit" class="btn btn-light btn-radius btn-brd grd1">
									Logout &amp; Continue
									</button>
									
									
								</div>
							</div>
							
						</form>
					</div>
				</div>
				</div>
				</div>
			</div>		
		</div>
			
	  
	
	
	
	<!--  Student Registration  -->
	
	
		<div class="modal fade" id="admin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Student Registration</h4>
			</div>
		<div class="modal-body customer-box">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li><a class="active" href="#Admin" data-toggle="tab">Registration</a></li>
					
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="Admin">
						<form role="form" class="form-horizontal" action="BodmasControllerServlet" method="post">
							<input type="hidden" name="command" value="S_ADD" /> 
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="name" placeholder="Name" type="text" name="name" required>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email" placeholder="Email" type="email" name="email" required>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="mobile" placeholder="Mobile" type="text" name="mobile" required>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="password" placeholder="Password" type="password" name="password" required>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="confirm_password" placeholder="Confirm Password" type="password" name="confirm_password" required>
								</div>
							</div>
							<div class="row">							
								<div class="col-sm-10" class="open-btn">
									 <button type="submit" class="btn btn-light btn-radius btn-brd grd1"  onclick="return openForm()">
										Save &amp; Continue</button>
									
									<button type="reset" class="btn btn-light btn-radius btn-brd grd1">
										Reset</button>
									<button type="button" class="btn btn-light btn-radius btn-brd grd1" onclick="window.history.back()">
										Cancel</button>
								</div>
							</div>
							
						</form>
					</div>

				</div>
			</div>
		</div>
							
						
	</div>
</div>
			
		
	<!-- end admin panel -->
	

	
	
	
	
	
	
	
    <!-- LOADER -->
	<div id="preloader">
		<div class="loader-container">
			<div class="progress-br float shadow">
				<div class="progress__item"></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->	
	
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.html">
					<img src="images/bodmas_logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="admin_dashboard.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Course </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="#">Audio </a>
								<a class="dropdown-item" href="#">Document </a>
								<a class="dropdown-item" href="video.html">Video </a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Blog </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="#">Blog </a>
								<a class="dropdown-item" href="#">Blog single </a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="teachers.html">Teachers</a></li>
						<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#admin">Student_List</a></li>    
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li><a class="hover-btn-new log orange" href="#" data-toggle="modal" data-target="#logout"><span>Logout</span></a></li>
                    </ul> 
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	
	
	
		
<br/><br/>		






			



<div class="container">
	
		<!--  put new button: Add Student -->
		
		<input type="button" value="Add Student" data-toggle="modal" data-target="#admin"
			  class="btn btn-primary" /> 
		  
		

		<br/><br/>
		<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">Password</th>
      <th scope="col">Action</th>
      <th scope="col">Type</th>
      
      
    </tr>
  </thead>
  
  
  
  
  
  <c:forEach var="tempStudent" items="${STUDENT_LIST}">
				
				<!--  set up a link for each student -->
				<c:url var="tempLink" value="BodmasControllerServlet"> 
					<c:param name="command" value="LOAD" />
					<c:param name="studentId" value="${tempStudent.id}" />
				</c:url>
				
				<!--  set up a link to delete a student  -->
				<c:url var="deleteLink" value="BodmasControllerServlet"> 
					<c:param name="command" value="DELETE" />
					<c:param name="studentId" value="${tempStudent.id}" />
				</c:url>
				<tbody>
				<tr>
					<th scope="row"> ${tempStudent.id} </th> 
					<td> ${tempStudent.name} </td>
					<td> ${tempStudent.email} </td>
					<td> ${tempStudent.mobile} </td>   
					<td> ${tempStudent.password} </td> 
					<td>
						 <a style="color:blue" href="${tempLink}">Update</a> 
						 |
						 <a style="color:blue"  href="${deleteLink}"
						 	onclick="if(!(confirm('Are you sure you want to delete this student?'))) return false">
						 	Delete</a>
						 
					</td>
				</tr>
				</tbody>
			</c:forEach>
  
  
  
  
  
  
  
  </table>
		
</div>
			
			
			
			
	
			
		 




		




<br/><br/>
	
	

	
	

  

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>About US</h3>
                        </div>
                        <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum. Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis dis montes.</p>   
						<div class="footer-right">
							<ul class="footer-links-soi">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-github"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul><!-- end links -->
						</div>						
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Blog</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">munna@bodmas.com</a></li>
                            <li><a href="#">www.bodmasacademy.com</a></li>
                            <li>Gandhichowk Rajdhanwar Giridih Jharkhand, 825412 India</li>
                            <li>+91 8709035229</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-center">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2020 <a href="#">BodmasAcademy</a> Design By : <a href="https://html.design/">Pritam Sinha</a></p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
	<script src="js/timeline.min.js"></script>
	<script>
		timeline(document.querySelectorAll('.timeline'), {
			forceVerticalMode: 700,
			mode: 'horizontal',
			verticalStartPosition: 'left',
			visibleItems: 4
		});
	</script>
</body>
</html>