<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form class="form" method="post" modelAttribute="signupForm">
	<h2 class="form-heading">Please Sign Up</h2>
	<form:errors path="" element="p" class="text-danger" />

	<form:input path="email" class="form-control"
		placeholder="Email address" />
	<form:errors path="email" element="p" class="text-danger" />

	<form:password path="password" class="form-control"
		placeholder="Password" />
	<form:errors path="password" element="p" class="text-danger" />

	<form:password path="confirmPassword" class="form-control"
		placeholder="Confirm password" />
	<form:errors path="confirmPassword" element="p" class="text-danger" />

	<form:input path="name" class="form-control" placeholder="Name" />
	<form:errors path="name" element="p" class="text-danger" />

	<form:input path="surname" class="form-control"
		placeholder="Surname" />
	<form:errors path="surname" element="p" class="text-danger" />

	<button class="btn btn-large btn-primary" type="submit">Sign
		Up</button>
	<p class="form-text">
		Already have an account? <a href='<s:url value="/signin"/>'>Sign
			In</a>
	</p>
</form:form>
