<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="image" required="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<img src="<c:url value="/resources/images/${image}.png" />" />