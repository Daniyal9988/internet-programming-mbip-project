<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/profile.css'/>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
</head>
<body>

<jsp:include page="customer/header/header.jsp" />
<% List<User> userList = (List<User>) request.getAttribute("userList"); %>

<div class="container">
    <h1>Edit Profile</h1>
    <form action="<%= request.getContextPath() %>/view/updateUser" method="post">
        <% for (User user : userList) { %>
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" value="<%= user.getFullname() %>" required>

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" value="<%= user.getDob() %>" required>

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" value="<%= user.getPhone() %>" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="<%= user.getAddress() %>" required>

           

            <!-- Add other form fields as needed -->

        <% } %>
        <button type="submit">Save Changes</button>
    </form>
</div>
<jsp:include page="customer/footer/footer.jsp" />
</body>
</html>
