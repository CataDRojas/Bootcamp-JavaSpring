<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
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
  <body>
    <h1>All Students</h1>
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Age</th>
          <th>Address</th>
          <th>City</th>
          <th>State</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${contactInfo}" var="contact">
          <tr>
            <td>${contact.student.firstName} ${contact.student.lastName}</td>
            <td>${contact.student.age}</td>
            <td>${contact.address}</td>
            <td>${contact.city}</td>
            <td>${contact.state}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
