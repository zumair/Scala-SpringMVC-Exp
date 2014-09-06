<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Sign up</title>

</head>

<body>
	
		<div>
			
			<form:form name="userForm" method="POST" commandName="userDTO"
				action="/userService/saveUser"
				cssClass="form-signin"
				>
				<h2 class="form-signin-heading">Quick Sign up:</h2>
				<br/>
				
				<form:errors cssClass="error" path="emailAlreadyExists" />
				<form:errors cssClass="error" path="user.email" />
				<form:input path="user.email"  
					placeholder="Email address"
					cssClass="form-control"
					
				/>
				<br />
				
				<form:errors cssClass="error" path="user.password"  />
				<form:password path="user.password"  
					placeholder="Password"
					cssClass="form-control"
					/>
				<br />
				
				<form:errors cssClass="error" path="validPasswordConfirmation" />
				<form:errors cssClass="error" path="passwordConfirmation" />
				<form:password path="passwordConfirmation"  
					placeholder="Confirm password"
					cssClass="form-control"
					/>
				<br />
				
				<input type="submit" value="Sign me up!"
				 class="btn btn-lg btn-primary btn-block" />
				<br/>
				<input type="button" value="Login" class="btn btn-lg btn-primary btn-block" />
				<br />
			</form:form>
		</div>
	
</body>

</html>