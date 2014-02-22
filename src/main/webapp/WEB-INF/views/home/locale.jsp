<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form class="form" method="post" modelAttribute="localeForm">
Current Locale : ${pageContext.response.locale} <br />

	<button class="btn btn-large btn-primary" name="language" value="en" type="submit">English</button>
	<button class="btn btn-large btn-primary" name="language" value="de" type="submit">German</button>
	<button class="btn btn-large btn-primary" name="language" value="pl" type="submit">Polish</button>
<!-- 	<button class="btn btn-large btn-primary"   type="submit">English</button> -->


</form:form>
