<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@ include file="allcomp/all_css.jsp" %>
</head>
<body style="background-color: #f7f7f7;">
<%@ include file="allcomp/navbar.jsp" %>
		<div class="continer-fluid">
			<div class="row p-5">
				<div class="col-md-4 offset-md-4">
					<div class="card">
					<div class="card-body">
					<div class="text-center">
					<i class="fa-solid fa-user-plus fa-2x" aria-hidden="true"></i>
					<h5>Login Page</h5>
					</div>
					<form action="login" method="post" >
					<div class="form-group">
					<label>Enter Email</label>
					<input type="email" required="required" class="form-control" 
					id="exampleInputEmail" aria-describedby="emailHelp" name="email">
					</div>
					<div class="form-group">
					<label for="exampleInputPassword">Enter Password</label>
					<input required="required" type="password"  class="form-control" id="exampleInputpassword"
					name="password">
					</div>
					<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
					</form>
					</div>
					</div>
			  </div>
			</div>
		</div>
</body>
</html>