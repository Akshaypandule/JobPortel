<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Job</title>
<%@ include file="allcomp/all_css.jsp" %>
</head>
<body style="background-color: #f7f7f7;">


<%@ include file="allcomp/navbar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h5 class="text-center text primary">All Jobs</h5>
			<div class="card mt-2">
			<div class="card-body">
				<div class="text-center text-primary">
				<i class="fa-solid fa-clipboard fa-2x"></i>
				</div>
				<%
					jobDAO da=new jobDAO(DBConnect.getconn());
					List<Jobs> list=dao.getAllJobs();
					for(Jobs j:list)
					{
						
					}
				%>
				
				
				
				
				<h6>Title</h6>
				<p>Description</p>
				<br>
				<div class="form-row">
					<div class="form-group col-md-3">
					<input type="text" class="form-control form-control-sm" value="Location:" readonly>
					</div>
					<div class="form-group col-md-3">
					<input type="text" class="form-control form-control-sm" value="Category:" readonly>
					</div>
					<div class="form-group col-md-3">
					<input type="text" class="form-control form-control-sm" value="Status:" readonly>
					</div>
				</div>
				<h6>Publish Date:2023-04-22</h6>
				<div class="text-center">
				<a href="#" class="btn btn-sm bg-success text-white">Edit</a>
				<a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
				 </div>
			</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>