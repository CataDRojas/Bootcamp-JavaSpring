<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <style>
      body {
        font-family: "Comic Sans MS", cursive;
      }
      table {
        width: 100%;
        border: 1px solid;
        border-collapse: collapse;
      }
      td,
      th {
        padding: 5px;
      }
      th {
        text-align: left;
        background-color: #cccccc;
      }
	  li{
		border: 1px solid black;
	  }
    </style>
</head>
<body>
	<div class="container mt-3">
		<h1>${question.quest}</h1>
		<div class="row">
			<h2>Select Tags:</h2>
			<ul class="list-group list-group-horizontal">
				<c:forEach var="tag" items="${question.tags}">
					<li class="list-group-item">${tag.subject}</li>
				</c:forEach>
			</ul>
		</div>
		<div class="row">
			<div class="col-6">
				<c:if test="${not empty answers}">
					<table>
						<thead>
							<tr>
								<th>Answers:</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${answers}" var="answer">
								<tr>
									<td>${answer.answerText}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
			<div class="col-6">
				<h2>Add your answer</h2>
				<form:form action="/questions/${question.id}/post" method="post"
					modelAttribute="answer">
					<div>
						<label for="answerText">Your Answer:</label>
						<form:input type="text" path="answerText" required="true" />
					</div>
					<div>
						<input type="submit" value="Answer It">
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>

