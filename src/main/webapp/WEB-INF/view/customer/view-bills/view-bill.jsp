<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStream" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="model.ElectricityBIll"%>
<%@ page import="model.WaterBill"%>
<%@ page import="model.RecycleBill"%>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Activities</title>
  	 <link rel="stylesheet" href="<c:url value='/resources/css/listOfActivities.css' />">
</head>
<body >



<%
List<ElectricityBIll> electricity_list = (List<ElectricityBIll>) request.getAttribute("eBill");
List<WaterBill> water_list = (List<WaterBill>) request.getAttribute("wBill");
List<RecycleBill> recycle_list = (List<RecycleBill>) request.getAttribute("rBill");
%>
<header>
	<jsp:include page="../header/header.jsp" />
</header>
<div class="main-container">
		<table>
    <thead>
        <tr>
            <th>Bill Name</th>
            <th>Bill date</th>
            <th>Bill Status</th>
        </tr>
    </thead>
    <tbody>
    <% %>
        <% for (ElectricityBIll activity : electricity_list) { %>
            <tr>
                <td><%= activity.getBillName() %></td>
                <td><%= activity.getSubmit_date() %></td>
                <td><%= activity.getVstatus() %></td>
            </tr>
        <% } %>
    </tbody>
    <tbody>
    <% %>
        <% for (WaterBill activity : water_list) { %>
            <tr>
                <td><%= activity.getBillName() %></td>
                <td><%= activity.getSubmit_date() %></td>
                <td><%= activity.getVstatus() %></td>
            </tr>
        <% } %>
    </tbody>
    <tbody>
    <% %>
        <% for (RecycleBill activity : recycle_list) { %>
            <tr>
                <td><%= activity.getBillName() %></td>
                <td><%= activity.getSubmit_date() %></td>
                <td><%= activity.getVstatus() %></td>
            </tr>
        <% } %>
    </tbody>
</table>
		
</div>

<footer>
	<jsp:include page="../footer/footer.jsp" />
</footer>



</body>
</html>
