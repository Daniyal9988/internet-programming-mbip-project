<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/register.css' />">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
</head>
<body  style="background-image: url('http://localhost:8080/Project/resources/images/homepage-pic.png');  
    background-size: cover;
    background-position: center;">
<jsp:include page="../header/header.jsp" />
	  <div class="main-cotainer">
        
        <div class="title" style="margin-top: 5vh ; border-radius: 10px 10px 0 0;">
            <h1>New user Registration</h1>
        </div>
        
        <div class="user"  >
            <p class="text-wrapper2" >Choose Type of Users</p>
            <div class="user-type">
                <img src="<c:url value='/resources/images/p1.jpg' />" alt="1" >
              
                <!-- <img src="<c:url value='/resources/images/p2.jpg' />" alt="2" > -->
              
                <img src="<c:url value='/resources/images/p3.jpg' />" alt="3" >
                

            </div>
            
              
        </div>

       
        <div class="personal-details" style="margin-bottom: 5vh; border-radius: 0px 0px 10px 10px;">
            
            <form action="<%= request.getContextPath() %>/register/createUser" method="post">
               <div class="user-type-radio">
					<input id="wow" type="radio" name="authority" value="TECHNICAL">
                	<input id="mao" type="radio" name="authority" value="participant">
				</div>
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>
        
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required>
        
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required
                    title="Please enter a 10-digit phone number">
        
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
        
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
        
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
        
                <a href="Login.html"><button type="submit">Submit</button></a>
            </form>

        </div>

    </div>
   
<jsp:include page="../footer/footer.jsp" />	
	
</body>
</html>