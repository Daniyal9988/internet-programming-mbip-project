<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
  <head>
    <title>Please Log In</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@0,100;1,900&family=Sora:wght@300&display=swap" rel="stylesheet">
    <link
      rel="stylesheet"
      type="text/css"
      href="http://localhost:8080/Project/resources/css/login.css"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
  </head>
  <body>
  
    <%--
    <div th:if="${param.error}">Invalid username and password.</div>
    --%> <%--
    <div th:if="${param.logout}">You have been logged out.</div>
    --%>
    <div class="login-container">
      <h2>Login</h2>
      <form   th:action="@{/login}" method="post">
        <input type="text" placeholder="Username" name="username" required>
        <input type="password" placeholder="Password" name="password" required>
    
        <div class="login-buttons">
          <input type="submit" value="Log in" />
          <input
            type="button"
            value="Register"
            onclick=" window.location.href = 'http://localhost:8080/Project/register/'"
          />
        </div>
    
      </form>
      
    </div>


    
  </body>
</html>
