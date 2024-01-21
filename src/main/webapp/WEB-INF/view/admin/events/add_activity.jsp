<%@ page import="java.sql.*"%>
<%@ page import="org.springframework.jdbc.core.JdbcTemplate"%>
<%@ page import="javax.sql.DataSource"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>


<html>
<head>
<title>Add Activity</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/add_activity_admin.css' />">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
</head>
<body>


	<jsp:include page="../headerfooter/header.jsp" />

	<div class="container">
		<div>
			<div class="leg">
				<legend>Add Activity</legend>
			</div>
			<form id="FormBox"
				action="http://localhost:8080/Project/admin/activity"
				enctype="multipart/form-data" method="post">

				<div class="filldata">
					<label for="activityName">Activity Name:</label> <input type="text"
						id="activityName" name="activityName" required>
				</div>
				<div class="filldata">
					<label for="activityDate">Date:</label> <input type="date"
						id="activityDate" name="activityDate" required>
				</div>
				<div class="filldata">
					<label for="activityDate">Location:</label> <input type="text"
						id="location" name="location" required>
				</div>
				<!-- impliment this button feature so admin can uplaod poster to the database -->
				<div class="buttons">
					<label for="file-input" class="custom-button">Upload Poster</label>
					<input type="file" id="file-input" name="file">


					<button type="submit" onclick="addActivity()">Add Activity</button>
				</div>


			</form>
		</div>
	</div>


	<jsp:include page="../headerfooter/footer.jsp" />
















</body>
</html>
