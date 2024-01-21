<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Activity"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List of Activities</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/listOfActivities.css' />">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="../headerfooter/header.jsp" />


	<%
		List<Activity> activityList = (List<Activity>) request.getAttribute("activityList");
	%>
	<div class="main-container">
		<table>
			<thead>
				<tr>
					<th>Activity Name</th>
					<th>Activity Date</th>
					<th>Activity Location</th>
					<th>Activity File</th>
				</tr>
			</thead>
			<tbody>
				<%
					
				%>
				<%
					for (Activity activity : activityList) {
				%>
				<tr>
					<td><%=activity.getActivityName()%></td>
					<td><%=activity.getActivityDate()%></td>
					<td><%=activity.getActivityLocation()%></td>
					<td><a href="<%=activity.downloadPdf()%>"
						download="poster.pdf">Download</a></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>

	</div>


	<jsp:include page="../headerfooter/footer.jsp" />

</body>
</html>
