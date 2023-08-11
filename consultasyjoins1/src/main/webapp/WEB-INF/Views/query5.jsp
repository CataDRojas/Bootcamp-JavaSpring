
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 5</title>
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
    <h3>Todos los paises con una superficie de area inferior a 501 y poblacion mayor a 100.000</h3>
<table class="table">
    <thead>
        <th>Nombre del Pais</th>
        <th>Area de terreno del Pais</th>
        <th>Cantidad de gente en el Pais</th>
    </thead>
    <tbody>
        <c:forEach var="row" items="${table}">                
        <tr>
            <td>${row[0].name}</td>
			<td>${row[0].surface_area}</td>
			<td>${row[0].population}</td>
        </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
