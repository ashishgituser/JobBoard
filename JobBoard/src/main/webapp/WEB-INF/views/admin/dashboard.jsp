<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/static/lib/bootstrap/css/bootstrap.min.css' />" rel="stylesheet"></link>
<link href="<c:url value='/static/css/main.css' />" rel="stylesheet"></link>
<title>Login</title>
</head>
<body ng-app="jbApp">

	<div class="container">

	    
	    welcome to admin dashboard
		<div ng-view=""></div>
		
		<footer class="footer">
           <p>&copy; Company 2014</p>
      </footer>
	</div>
	
<!-- Library -->
<script type="text/javascript" src="<c:url value='/static/lib/jquery/jquery-3.1.1.min.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/lib/angular/angular.min.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/lib/angular/angular-route.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/lib/angular/angular-resource.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/lib/angular/http-auth-interceptor.js' />" ></script>

<!-- Application Config -->
<script type="text/javascript" src="<c:url value='/static/js/app.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/js/config/app-config.js' />" ></script>

<!-- Services -->
<script type="text/javascript" src="<c:url value='/static/js/service/login-service.js' />" ></script>

<!-- Controllers -->
<script type="text/javascript" src="<c:url value='/static/js/controller/login-controller.js' />" ></script>
</body>
</html>