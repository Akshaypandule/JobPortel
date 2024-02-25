<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Job</title>
<%@ include file="allcomp/all_css.jsp" %>
</head>
<body style="background-color: #f7f7f7;">


<%@ include file="allcomp/navbar.jsp" %>
<div class="container p-2">
	<div class="col-md10 offset-md-1">
	<div class="card">
		<div class="card-body">
		<div class="text-center text success">
		<i class="fa-solid fa-user-group" style="color: #7be029;"></i>
		<% String message = (String) session.getAttribute("msg"); %>
<% if (message != null) { %>
   <div class="alert alert-success" role="alert">
      <%= message %>
   </div>
<% } %>
		<h5 style="color: green">Add Job</h5>
		</div>
		
		<form action="Addjob" method="post">
			<div class="form-group">
			<label>Enter Title</label>
			<input type="text" name="title" required class="form-control">
			</div>
			<div class="form-row">
			<div class="form-group col-md-4">
			<label>Location</label>
			<select name="Location" class="custom-select" id=inlineFormCustomselectPref>
				<option selected>Choose..</option>
				<option value="Pune">Pune</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Chenni">Chenni</option>
				<option value="Bangaluru">Bangaluru</option>
				<option value="Hydrabad">Hydrabad</option>
				<option value="Delhi">Delhi</option>
				<option value="Bhopal">Bhopal</option>
				<option value="Kolkata">Kolkata</option>
				<option value="Nagpur">Nagpur</option>
				<option value="Kochi">Kochi</option>
				<option value="Agra">Agra</option>
			</select>
			</div>
			<div class="form-group col-md-4">
			 <label>Category</label>
			 <select class="custom-select" id="inlineFormCustomSelectPref" name="category">
			 <option selected>Choose..</option>
			 <option value="IT">IT</option>
			 <option value="Banking">Banking</option>
			 <option value="Maintance">Maintance</option>
			 <option value=" Mecahnical Engginner"> Mechanical Enginner</option>
			 <option value=" electrical Engginner"> Electrical Enginner</option>
			 <option value=" Chemical Engginner"> Chemical Enginner</option>
			 <option value=" Education"> Education</option>
			 <option value="Quality Engg">Quality Engg</option>		 
			 </select>
			</div>
			<div class="form-group col-md-4">
			<label>Status</label>
			<select class="form-control" name="status">
			<option class="Active" value="Active">Active </option>
			<option class="Inactive" value="Inactive">Inactive </option>
			</select>
			</div>
			</div>
			
			<div class="form-group">
			<label>Enter Description</label>
			<textarea required rows="6" cols="" name="desc"
			class="form-control"></textarea>
			</div>
			
			<div>
			<button class="btn btn-success">Publish job</button>
			</div>
			
		</form>
		
		</div>
	</div>
		
	</div>
  </div>
</body>
</html>