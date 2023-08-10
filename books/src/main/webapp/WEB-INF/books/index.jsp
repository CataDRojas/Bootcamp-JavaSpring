<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All books</title>
    <link rel="stylesheet" href="mostrar2/src/resources/static/CSS/index.css">
    <style>
        body {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        table, td, th {
            border: 1px solid;
        }
    </style>
</head>
<body>
 
<h1>All Books</h1>
<table>
    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.description}"/></td>
            <td><c:out value="${book.language}"/></td>
            <td><c:out value="${book.numberOfPages}"/></td>
        </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/books/new">New Book</a>


</body>
</html>