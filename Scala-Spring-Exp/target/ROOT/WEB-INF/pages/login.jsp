<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>

</head>
<body>









	<form name='loginForm'
		action="<c:url value='/j_spring_security_check' />" method='POST'
		class="form-signin">
		<h2 class="form-signin-heading">Login with your Email and
			Password:</h2>
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		
		<input type='text' name='username' placeholder="Email"
			class="form-control" /> <br /> <input type='password'
			name='password' placeholder="Password" class="form-control" /> <br />

		<input name="submit" type="submit" value="Log In"
			class="btn btn-lg btn-primary btn-block" /> <br /> <input
			type="button" value="Sign up"
			class="btn btn-lg btn-primary btn-block"
			onclick="window.location.href='${pageContext.request.contextPath}/userService/signUpPage'" />


		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

	</form>


</body>
</html>