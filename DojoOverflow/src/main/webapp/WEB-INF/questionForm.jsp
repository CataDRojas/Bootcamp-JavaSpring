<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>New Question</title>
	<style>
		.container {
		  font-family: "Comic Sans MS", cursive;
		}
	  </style>
	  <link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
		crossorigin="anonymous"
	  />
</head>
<body>
	<div class="container mt-3">
		<h1>What is your question?</h1>
		<form:form accept-charset="UTF-8" action="/questions/new" method="post" modelAttribute="question">
			<div>
				<label for="quest">Question:</label>
				<form:textarea path="quest" rows="3" cols="40" required="true" />
			</div>
		  <div>
			<label for="tagsInput">Tags (comma separated and lowercase, max 3):</label>
   			<form:input type="text" path="tagsInput" required="true" />
		</div>
		<div>
			<input type="submit" value="Submit" />
		</div>
		  
		</form:form>
	  </div>
	  
</body>
</html>