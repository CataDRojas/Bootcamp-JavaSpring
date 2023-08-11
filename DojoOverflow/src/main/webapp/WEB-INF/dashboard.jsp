<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Questions Dashboard</title>
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
        border: 1px solid;
        padding: 5px;
      }
      tr:nth-child(even) {
        background-color: #eeeeee;
      }
      th {
        text-align: left;
        background-color: #cccccc;
      }
    </style>
</head>
<body>
	<div class="container mt-4">
		<h1>Questions Dashboard</h1>
		<table>
		  <thead >
			<tr>
			  <th>Name</th>
			  <th>Tags</th>
			</tr>
		  </thead>
  
		  <tbody>
			<c:forEach items="${questions}" var="question">
				<tr>
					<td><a href="/questions/${question.id}"><c:out
								value="${question.quest}" /></a></td>
					<td><c:forEach items="${question.tags}" var="tag"
							varStatus="loop">
                        ${tag.subject}<c:if test="${not loop.last}">, </c:if>
						</c:forEach></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		<a href="/questions/new">New question!</a>
	  </div>
</body>
</html>