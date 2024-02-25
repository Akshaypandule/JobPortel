<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
<%@ include file="allcomp/all_css.jsp" %>
</head>
<body style="background-color: #f7f7f7;">
<%@ include file="allcomp/navbar.jsp"%>

<div class="continer-fluid">
 <div class="row p-5">
 	<div class="col-md-5 offset-md-4">
 	<div class="card">
 	<div class="card-body">
 		<div class="text-center">
 		<i class="fa-solid fa-user-plus fa-2x" aria-hidden="true"></i>
		<h5>Registration</h5>	
 		</div>
 		
 		<form action="register" method="post">
 		<div class="form-group">
 		<label>Enter Full Name</label>
 		<input type="text" required="required" class="form-control" id="exampleInputEmail"
 		aria-describedby="emailhelp" name="name">
 		</div>
 		
 		<div class="form-group">
 		<label>Enter Qualification</label>
 		<input type="text" required="required" class="form-control" 
 		aria-describedby="emailHelp" name="qua">
 		</div>
 		<div class="form-group">
 		<label>Enter Email</label>
 		<input type="email" required="required" class="form-control" id="exampleInputEmail"
 		aria-describedby="emailHelp" name="email">
 		</div>
 		<div class="form-group">
 		<label>Password</label>
 		<input type="password" required="required" class="form-control" id="exampleInputPassword" 
 		name="pass"> 		
 		</div>
 		<button type="submit" class="btn btn-primary badge-pill btn-block">Registration
 		</button>
 		</form>
 	</div>
 	
 	</div>
 	</div>
 </div>
</div>

</body>
</html>