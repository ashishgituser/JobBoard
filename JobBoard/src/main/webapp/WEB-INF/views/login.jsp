<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<h4>Please Login</h4>
<c:url var="loginUrl" value="/login" />
<form name="login" method="post" action="${loginUrl}">
<label>Username : </label>
<input type="text" name="username" />
<br />
<label>Password : </label>
<input type="password" name="password" />
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<br />
<input type="submit" name="submit" value="Login" />
</form>
</body>
</html>