<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
cars
<br>

<form method="post">
	<form:select id="choosen_tag" path="cars_list" style="float:left">
		<form:options items="${cars}" />
	</form:select>
	<button type="button" class="btn btn-default" id="add_tag">+</button>
	<div id="add_here"></div>
	<div>
		<input type="submit"/>
	</div>
</form>
<script>
	$("#add_tag")
			.click(
					function() {
						var unique = true;
						var value = $("#choosen_tag").val();
						$('.hidden_tag').each(function(i, obj) {
							var old_tag = $(obj).val();
							if (old_tag == value) {
								unique = false;
							}
						});
						if (unique) {
							$("#add_here")
									.append(
											'<div style="float:left;"><input name="list_cars" value='+value+' type="hidden" class="hidden_tag"><span class="tags">'
													+ value
													+ '<span class="glyphicon glyphicon-remove" data-role="remove" style="font-size:smaller;margin-left:5px;"></span></span></input><div>');
						}
					});

	$("#add_here").on('click', '[data-role=remove]', function() {
		$(this).closest('div').remove();
	});
</script>
