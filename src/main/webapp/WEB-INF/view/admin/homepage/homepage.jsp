<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Montserrat:ital@1&family=Roboto+Mono:ital@1&family=Roboto:ital,wght@1,900&family=Rubik+Burned&family=Sora:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value='/resources/css/homepage.css' />">
</head>
<body>

	<jsp:include page="../headerfooter/header.jsp" />


	<div class="homepage-pic-container">
		<img src="<c:url value='/resources/images/homepage-pic.png' />"
			class="homepage-pic">
		<h1>
			LOW CARBON <br> MONITORING SYSTEM
		</h1>
		<h2>Low carbon initiatives, a global exchange.</h2>
		

	</div>


	<h3>OBJECTIVES</h3>
	<div class="image-objective-container">
		<img src="<c:url value='/resources/images/objectives-pic.png' />">
		<p>IMELC is a program with the objective of increasing awareness
			of the Low Carbon Society (LCS) among students, teachers, and
			families in Iskandar Malaysia to achieve the carbon reduction target
			by 2025. In addition to this, the e-Lestari initiative was developed
			in 2022, specifically for the JPNJ, to monitor low carbon emission
			initiatives in schools. The e-Lestari system, which is relatively
			new, focuses on integrating sustainability elements into the
			curriculum and co-curricular activities, improving sustainability
			education, managing and evaluating integrated sustainability
			programs, raising sustainability awareness and building capacity, and
			conducting energy audits. With data from 1180 schools, the system is
			capable of evaluating district performance, electricity and energy
			savings, and categorizing schools as Showcase Schools/Transition
			Schools. The JPNJ officers have provided positive feedback on the
			system's ability to report yearly performance on environmental and
			sustainability education.</p>
	</div>


	<div class="apply-container">
		<h3>HOW TO APPLY?</h3>
	</div>


	<div class="events-container">
		<div class="event">
			<h4>1. Register</h4>
			<p>Join our platform by creating an account and registering your
				details.</p>
		</div>

		<div class="event">
			<h4>2. Document Submission and Validation</h4>
			<p>Submit relevant documents and undergo a validation process to
				ensure accuracy.</p>
		</div>

		<div class="event">
			<h4>3. Update Carbon Footprint</h4>
			<p>Regularly update your carbon footprint data to track changes
				over time.</p>
		</div>

		<div class="event">
			<h4>4. Track Carbon Reduction Process</h4>
			<p>Monitor and track the progress of your carbon reduction
				initiatives.</p>
		</div>

		<div class="event">
			<h4>5. Generate Carbon Footprint Calculator</h4>
			<p>Create a customized carbon footprint calculator tailored to
				your needs.</p>
		</div>

		<div class="event">
			<h4>6. Winner</h4>
			<p>Celebrate success! The participant with the most significant
				carbon reduction achievements is the winner.</p>
		</div>
	</div>

	<jsp:include page="../headerfooter/footer.jsp" />
</body>
</html>