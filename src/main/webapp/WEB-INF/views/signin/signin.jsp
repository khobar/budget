<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<form class="form" action='<s:url value="/j_spring_security_check"/>' method="post">
	<h2 class="form-heading">Please Sign In</h2>
	<c:if test="${not empty param['error']}">
  		<div class="alert alert-error">
  			Sign in error. Please try again. 
  		</div>
  	</c:if>
	<input type="text" class="form-control" placeholder="Email address" name="j_username" /> 
	<input type="password" class="form-control" placeholder="Password" name="j_password" />
	<label class="checkbox">
		<input type="checkbox" name="_spring_security_remember_me">Remember me</input>
	</label>
	<button class="btn btn-lg btn-primary" type="submit">Sign In</button>
	<p class="form-text">New here? <a href='<s:url value="/signup"/>'>Sign Up.</a></p>
	<p class="form-text">Forgot your password? <a href='<s:url value="/passrecovery"/>'>Recover password.</a></p>
</form>
