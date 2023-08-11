
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 4</title>
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
    <table class="table">
        <h3>Obtener todos los lenguajes en cada pais con un porcentaje mayor a 89%</h3>
        <thead>
            <th>Nombre del Pa�s</th>
            <th>Lenguaje</th>
            <th>Porcentaje</th>
        </thead>
        <tbody>
            <c:forEach var="row" items="${table}">                
            <tr>
                <td>${row[0].name}</td>
                <td>${row[1].language}</td>
                <td>${row[1].percentage}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>

