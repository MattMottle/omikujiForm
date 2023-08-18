<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="/css/show.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Here's Your Omikuji</h1>
		</div>
		<div class="results">
			<p> In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with 
			<c:out value="${person}"/> as your roommate, selling <c:out value="${hobby}"/> for a living.
			The next time you see a <c:out value="${thing}"/>, you will have good luck. Also, 
			<c:out value="${message}"/> </p>
		</div>
		<div>
			<a href="http://localhost:8080/omikuji">Go Back</a>
		</div>
	</div>
</body>
</html>