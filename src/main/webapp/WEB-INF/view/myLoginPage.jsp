<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Security Custom Login Form</title>
</head>
<body>
	<h1>Spring Security Custom Login Form App</h1> <hr><br>
	
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		<!-- Check For Login Error : url?error -->
		<c:if test="${param.error != null}">
			<i style="color: red;">Invalid Credentials, Please check again</i>
		</c:if>
		<c:if test="${param.logout != null}">
			<i style="color: green;">You have been logged out</i>
		</c:if>
		
		<p>User Name : <input type="text" name="username"/> </p>
			
		<p>Password : <input type="password" name="password"/> </p>
			
		<input type="submit" value="Login">
				
	</form:form>
</body>
</html>