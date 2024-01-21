<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>
<%@ page import="model.ElectricityBIll"%>
<%@ page import="model.WaterBill"%>
<%@ page import="model.RecycleBill"%>
<%@ page import="model.CheckBoxForm"%>
<%@ page import="model.UserReport"%>
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
	href="http://localhost:8080/Project/resources/css/generate.css" />
</head>
<body>
	<jsp:include page="../headerfooter/header.jsp" />
	<%
		List<ElectricityBIll> electricity_list = (List<ElectricityBIll>) request.getAttribute("electricity_list");
		List<WaterBill> water_list = (List<WaterBill>) request.getAttribute("water_list");
		List<RecycleBill> recycle_list = (List<RecycleBill>) request.getAttribute("recycle_list");
		List<UserReport> reports = (List<UserReport>) request.getAttribute("user_reports");
		String email = (String) request.getAttribute("email");
		
	%>




	<div class="report-container">
			<form:form modelAttribute="checkBoxForm"
					action="http://localhost:8080/Project/admin/generateReports"
					method="post" class="formformform">
					<div class="tablesofpower">
		<div class="report-search-container report-box">
			<input type="text" id="electricity-search-input" class="search-input"
				oninput="filterTable('electricity')"
				placeholder="Search by ID or Status">

				<table id="electricity">
						<thead>
							<th colspan="4" class="table-head">Electricity</th>
						</thead>
						<tbody>
						<thead>
							<th>ID</th>
							<th>Value</th>
							<th>Date</th>
							<th></th>
						</thead>
						<%
							for (ElectricityBIll electricitybill : electricity_list) {
						%>
						<tr>
							<td><%=electricitybill.getId()%></td>
							<td><%=electricitybill.getElectricity()%></td>
							<td><%=electricitybill.getSubmit_date()%></td>
							<td><form:checkbox path="electricityID"
									value="<%=electricitybill.getId()%>" /></td>
						</tr>
						<%
							}
						%>

						</tbody>
				</table>
			
		</div>


		<div class="report-search-container report-box">
			<input type="text" id="water-search-input" class="search-input"
				oninput="filterTable('water')" placeholder="Search by ID or Status">
			
				<table id="water">
										<thead>
							<th colspan="4" class="table-head">Water</th>
						</thead>
						<tbody>
						<thead>
							<th>ID</th>
							<th>Value</th>
							<th>Date</th>
							<th></th>
						</thead>
						<%
							for (WaterBill waterbill : water_list) {
						%>

						<tr>
							<td><%=waterbill.getId()%></td>
							<td><%=waterbill.getWater()%></td>
							<td><%=waterbill.getSubmit_date()%></td>
							<td><form:checkbox path="waterID"
									value="<%=waterbill.getId()%>" /></td>
						</tr>
						<%
							}
						%>

						</tbody>
				</table>
		</div>

		<div class="report-search-container report-box">
			<input type="text" id="recycle-search-input" class="search-input"
				oninput="filterTable('recycle')"
				placeholder="Search by ID or Status">
				<table id="recycle">
										<thead>
							<th colspan="4" class="table-head">Recycle</th>
						</thead>
						<tbody>
						<thead>
							<th>ID</th>
							<th>Value</th>
							<th>Date</th>
							<th></th>
						</thead>
						<%
							for (RecycleBill recyclebill : recycle_list) {
						%>

						<tr>
							<td><%=recyclebill.getId()%></td>
							<td><%=recyclebill.getRecycle()%></td>
							<td><%=recyclebill.getSubmit_date()%></td>
							<td><form:checkbox path="recycleID"
									value="<%=recyclebill.getId()%>" /></td>
						</tr>
						<%
							}
						%>

						</tbody>
				</table>
			</div>
		<div class="report-box-yoyo">
			<table>
				<thead>
					<th colspan="4" class="table-head">Report</th>
				</thead>
				<tbody>
				<thead>
					<th>ID</th>
					<th>Electricity Consumption</th>
					<th>Water Consumption</th>
					<th>Recycle Consumption</th>

				</thead>
				<%
					for (UserReport report : reports) {
				%>
				
				<tr>
					<td><%=report.getId()%></td>
					<td><%=report.getElectricity_consumtion()%></td>
					<td><%=report.getWater_consumtion()%></td>
					<td><%=report.getRecycle_consumtion()%></td>
				</tr>
				<%
					}
				%>

				</tbody>
			</table>
		</div>
		</div>
	<form:input path="email" type="hidden" value="<%=email%>" />
					<input type="submit" value="Generate">
				</form:form>
	</div>
	<script>
    function filterTable(tableId) {
        // Get input value and convert to lowercase for case-insensitive search
        var searchInput = document.getElementById(tableId + "-search-input").value.toLowerCase();

        // Get table rows
        var rows = document.querySelectorAll("#" + tableId + " tbody tr");

        // Loop through rows and hide those that don't match the search input
        rows.forEach(function (row) {
            var id = row.querySelector("td:first-child").textContent.toLowerCase();

            if (id.indexOf(searchInput) > -1) {
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