<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<head>
    <title>Language Show Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        .container-principal {
            padding: 10px;
            width: 70%;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: 20px;
        }
        .links{
            position: relative;
            left: 580px;
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
    <div class="container-principal">
        <div class="links"> 
            <a href="/lenguajes">Dashboard</a>
        </div>
            <p>
                <c:out value="${lenguaje.name}" />
            </p>
            <p>
                <c:out value="${lenguaje.creator}" />
            </p>
            <p>
                <c:out value="${lenguaje.currentVersion}" />
            </p>
            <p>
                <a href="/lenguajes/edit/${lenguaje.id}">Edit</a>
            </p>
            <p>
                <a href="/lenguajes/delete/${lenguaje.id}">Delete</a> 
            </p>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
</body>

</html>