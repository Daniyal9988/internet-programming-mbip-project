<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="resources/css/generatereport.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
  </head>
  <body>
    <jsp:include page="../header/header.jsp" />

    <div class="report-container">
      <div class="report-box">
        <div class="generate-report-list">
          <form action="">
            <input type="submit" value="View Report" />
          </form>
        </div>
        <div class="approved-bills"></div>
        <div class="older-report"></div>
      </div>
    </div>

    <jsp:include page="../footer/footer.jsp" />
  </body>
</html>
