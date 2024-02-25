<%@page import="java.sql.Connection"%>
<%@page import="Com.ConnectDB.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="allcomp/all_css.jsp" %>
<style type="text/css">
.back-img{
background: url("img/jp1.jpg");
width: 100x;
height: 80vh;
background-repeat: no-repeat;
background-size: cover;
}

</style>
</head>
<body>
<%@ include file="allcomp/navbar.jsp" %>

	<div class="container-fluid back-img">  <!-- Image add class -->
			<div class="text-center">

				<h1 class="text-white p-4">
					<i class="fa fa-book" aria-hidden="true"></i>  <!--  Center writing -->
						Online Job Portal
				</h1>
			</div>
	</div>
	
<%@ include file="allcomp/footer.jsp" %>  <%-- FOOTER ADDED BY INCLUDE  --%>
</body>
</html>