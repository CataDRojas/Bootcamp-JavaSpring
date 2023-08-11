
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 7</title>
    <style>
        td,
      th {
        border: 1px solid;
        padding: 5px;
      }
      table {
        width: 60%;
        border: 1px solid;
        border-collapse: collapse;
      }
      tr:nth-child(even) {
        background-color: #eeeeee;
      }
      th {
        text-align: left;
        background-color: #cccccc;
      }
      .button{
        position: fixed;
        left: 295px;
      }
    </style>
</head>
<body>
    <h3>Ciudades de Argentina dentro del distrito de Buenos Aires y con poblacion mayor a 500.000</h3>
<table class="table">
    <thead>
        <th>Nombre del Pa�s</th>
        <th>Nombre de la Ciudad</th>
        <th>Distrito</th>
        <th>Poblacion</th>
    </thead>
    <tbody>
        <c:forEach var="row" items="${table}">                
        <tr>
            <td>${row[0]}</td>
			<td>${row[1]}</td>
			<td>${row[2]}</td>
			<td>${row[3]}</td>
        </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
