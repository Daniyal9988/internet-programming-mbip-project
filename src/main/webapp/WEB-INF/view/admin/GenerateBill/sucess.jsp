<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upload Success</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f4f4f4;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
	background-image:
		url("http://localhost:8080/Project/resources/images/homepage-pic.png");
	background-size: cover;
	background-position: center;
}

.failure-container {
	text-align: center;
	background-color: #FF6347;
	color: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.failure-container h2 {
	margin-bottom: 15px;
}

.failure-container p {
	font-size: 18px;
	line-height: 1.4;
}

.success-container {
	text-align: center;
	background-color: #4CAF50;
	color: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.success-container h2 {
	margin-bottom: 15px;
}

.success-container p {
	font-size: 18px;
	line-height: 1.4;
}
</style>
</head>
<body>
	<%
		Boolean successAttribute = (Boolean) request.getAttribute("success");
		boolean success = successAttribute != null && successAttribute;
		String email = (String) request.getAttribute("email");
	%>
	<form id="generateReportForm"
		action="http://localhost:8080/Project/admin/generateReport"
		method="post">
		<input type="hidden" name="email" value="<%=email%>">
	</form>
	<%
		if (success) {
	%>
	<div class="success-container">
		<h2>Success!</h2>
		<p>Report Generated Successfully</p>
	</div>

	<script>
			setTimeout( ()=>{document.getElementById("generateReportForm").submit();}   , 3000);
	</script>
	<%
		} else {
	%>
	<div class="failure-container">
		<h2>Upload Failed</h2>
		<p>Sorry, there was an issue with your file upload. Please try
			again.</p>
	</div>
	<script>setTimeout(function() {
			window.location.href = "http://localhost:8080/Project/admin/viewGenerateReport";
		}, 3000);</script>

	<%
		}
	%>


</body>
</html>
