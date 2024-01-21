<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/header.css' />" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <nav>
      <div class="dropdown">
        <button
          style="font-style: italic; font-weight: bold; margin-top: 1vh"
          class="dropbtn"
        >
          Our Services
        </button>
        <div class="dropdown-content">
          <a class="drop" href="http://localhost:8080/Project/">Home</a>
          <a class="drop" href="http://localhost:8080/Project/register/"
            >Registration</a
          >
          <a class="drop" href="http://localhost:8080/Project/recycle"
            >Recycling Activity
          </a>
          <a class="drop" href="http://localhost:8080/Project/electricity"
            >ElectricityConsumtion
          </a>
          <a class="drop" href="http://localhost:8080/Project/water">
            Water Management
          </a>
          <a
            class="drop"
            href="http://localhost:8080/Project/view-customer-bill"
            >View Bills</a
          >
           <a
            class="drop"
            href="http://localhost:8080/Project/view-carbon"
            >View Report</a
          >
          <a
            class="drop"
            href="http://localhost:8080/Project/view-activities"
            >View Activities</a
          >
        </div>
      </div>
      <div class="mbip-icon">
        <a> <img src="<c:url value='/resources/images/mbip-icon.png' />" /></a>
      </div>
      <h4>MBIP(Majlis Bandaraya Iskandar Puteri)</h4>
      <div class="user-button dropdown">
        <a>
          <img src="<c:url value='/resources/images/user-icon.png' />" />USER
        </a>
        <div class="dropdown-content" style="margin-top: 0px">
          <a class="drop" href="http://localhost:8080/Project/view/user"
            >Profile</a
          >
          <a class="drop" href="http://localhost:8080/Project/logout">Logout</a>
        </div>
      </div>
    </nav>
  </body>
</html>
