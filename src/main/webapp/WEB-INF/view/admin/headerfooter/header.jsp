<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/header.css' />">
</head>
<body>
    <nav>
        <div class="dropdown">
            <button class="dropbtn">Our Services</button>
            <div class="dropdown-content">
                <a class="drop" href="http://localhost:8080/Project/admin/">Home</a>
                <a class="drop" href="http://localhost:8080/Project/admin/add">Add Activity</a>
                <a class="drop" href="http://localhost:8080/Project/admin/view-activities">View Activity</a>
                <a class="drop" href="http://localhost:8080/Project/admin/approveBills">View Bill Approval</a>
                <a class="drop" href="http://localhost:8080/Project/admin/viewGenerateReport">View Report Generator</a>
            </div>
        </div>
        <div class="mbip-icon">
            <a> <img src="<c:url value='/resources/images/mbip-icon.png' />"></a>
        </div>
        <h4>MBIP</h4>
        <div class="user-button dropdown">
            <a>
                <img src="<c:url value='/resources/images/user-icon.png' />">USER
            </a>
            <div class="dropdown-content" style="margin-top: 0px">
                <a class="drop" href="http://localhost:8080/Project/admin/user">Profile</a>
                <a class="drop" href="http://localhost:8080/Project/logout">Logout</a>
            </div>
        </div>
    </nav>
</body>
</html>
