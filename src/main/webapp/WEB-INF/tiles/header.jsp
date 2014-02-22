<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href='<c:url value="/"/>'>Home Budget</a>
		</div>
		<div class="navbar-collapse collapse">

			<security:authorize access="isAuthenticated()">
				<ul class="nav navbar-nav">
					<li class=""><a href='<c:url value="/"/>'><span
							class="glyphicon glyphicon-home" style="color: white;"> </span> <s:message
								code="menu.home" text="Home" /></a></li>
					<li class=""><a href='<c:url value="/cars"/>'"><s:message
								code="menu.car" text="Cars" /></a></li>
					<li class=""><a href='<c:url value="/Income"/>'"><s:message
								code="menu.income" text="Income" /></a></li>
				</ul>
			</security:authorize>
			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href='<c:url value="/admin"/>'"><span
							class="glyphicon glyphicon-wrench" style="color: white;">
						</span> <s:message code="main.adminPanel" text="Admin Panel" /></a></li>
				</security:authorize>

				<security:authorize access="!isAuthenticated()">
					<li><a href='<s:url value="/signin"></s:url>'>Sign in</a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
					<ul class="nav navbar-nav navbar-right">
						<li><a href='<s:url value="/logout"></s:url>'><span
								class="glyphicon glyphicon-off"> </span> <s:message
									code="main.logout" text="Logout" /></a></li>
					</ul>
				</security:authorize>
			</ul>
		</div>
	</div>
	<!--/.nav-collapse -->
</div>