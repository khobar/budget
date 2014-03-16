<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="<c:url value="/resources/js/bootstrap-tagsinput.js" />"></script>
cars
<br>

<form method="post">
	<form:select id="choosen_tag" path="cars" style="float:left">
		<form:options items="${cars}" />
	</form:select>
	<button type="button" class="btn btn-default" id="add_tag">+</button>
	<div id="add_here"></div>

</form>
<script>
	$("#add_tag").click(
			function() {
				var value = $("#choosen_tag").val();
				alert("value:" + value);
				$("#add_here").append(
						"<input name=\"list_cars\">" + value + "</input>");
			});
</script>
