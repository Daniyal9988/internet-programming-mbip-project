<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://localhost:8080/Project/resources/css/approve.css" />
</head>
<body>
	<jsp:include page="../headerfooter/header.jsp" />
	<%
		List<User> list = (List<User>) request.getAttribute("list");
	%>
	
	<div class="report-container">
		<input type="text" id="searchInput" oninput="filterTable()"
			placeholder="Search by Name">
		<div class="report-box">
			<table>
				<thead>
					<th>FullName</th>
					<th>Email</th>
					<th>Date-Of-Birth</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Generate Report</th>
				</thead>
				<tbody>
					<%
						for (User user : list) {
					%>
					<tr>
						<td><%=user.getFullname()%></td>
						<td><%=user.getEmail()%></td>
						<td><%=user.getDob()%></td>
						<td><%=user.getPhone()%></td>
						<td><%=user.getAddress()%></td>
						<td>
							<form
								action="http://localhost:8080/Project/admin/generateReport"
								method="post">
								<input type="hidden" name="email" value="<%=user.getEmail()%>">
								<input type="submit" value="Generate Report">
							</form>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<script>
		function filterTable() {
			// Get input value and convert to lowercase for case-insensitive search
			var input = document.getElementById("searchInput").value
					.toLowerCase();

			// Get table rows
			var rows = document.querySelectorAll("table tbody tr");

			// Loop through rows and hide those that don't match the search input
			rows.forEach(function(row) {
				var fullName = row.querySelector("td:nth-child(1)").textContent
						.toLowerCase();
				var email = row.querySelector("td:nth-child(2)").textContent
						.toLowerCase();
				var dob = row.querySelector("td:nth-child(3)").textContent
						.toLowerCase();
				var phone = row.querySelector("td:nth-child(4)").textContent
						.toLowerCase();

				if (fullName.includes(input) || email.includes(input)
						|| dob.includes(input) || phone.includes(input)) {
					row.style.display = "";
				} else {
					row.style.display = "none";
				}
			});
		}
	</script>
	<jsp:include page="../headerfooter/footer.jsp" />
</body>
</html>
