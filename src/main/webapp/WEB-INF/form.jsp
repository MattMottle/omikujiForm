<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>
<link rel="stylesheet" type="text/css" href="/css/form.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Send an Omikuji</h1>
		</div>
		<div class="form">
			<form action="/omikuji/processForm" method="POST">
				<div>
					<label>Pick any number from 5 to 25:</label>
					<input type="number" name="number" style= "width=25px;">
				</div>	
				<div>
					<label>Enter the name of any city:</label>
					<input type="text" name="city">
				</div>
				<div>
					<label>Enter the name of any real person:</label>
					<input type="text" name="person">
				</div>	
				<div>
					<label>Enter professional endeavor or hobby:</label>
					<input type="text" name="hobby">
				</div>
				<div>
					<label>Enter any type of living thing:</label>
					<input type="text" name="thing">
				</div>
				<div>
					<label>Say something nice to someone:</label>
					<textarea name="message" rows="3"></textarea>
				</div>
				<div>
					<p>Send and show a friend</p>
				</div>
				<div>
					<button>Send</button>
				</div>
			</form>
		</div>	
	</div>
</body>
</html>