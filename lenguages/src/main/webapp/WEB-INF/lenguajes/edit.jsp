<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit a book</title>
    <style>
        .container-principal {
            padding: 10px;
            width: 70%;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        }
        .button{
            position: fixed;
            left: 235px;
        }
        .links{
            position: relative;
            left: 185px;
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
<form:form action="/lenguajes/${lenguaje.id}" method="post" modelAttribute="lenguaje">
    <input type="hidden" name="_method" value="put">
    <!-- <p>
        <a href="/lenguajes/${lenguaje.id}">Delete</a> 
        <a href="/lenguajes">Dashboard</a>
    </p>
    <p>
        <form:label path="name">Name</form:label>
        <form:errors path="name"/>
        <form:input path="name"/>
    </p>
    <p>
        <form:label path="creator">Description</form:label>
        <form:errors path="creator"/>
        <form:textarea path="creator"/>
    </p>
    <p>
        <form:label path="currentVersion">Version</form:label>
        <form:errors path="currentVersion"/>
        <form:input path="currentVersion"/>
    </p>
    <input type="submit" value="Submit"/> -->

    <div class="container-principal">
    <div class="mb-3 links">
        <a href="/lenguajes/${lenguaje.id}">Delete</a> 
        <a href="/lenguajes">Dashboard</a>
    </div>
    <div class="mb-3 row ">
        <form:label class="col-sm-2" path="name">Name</form:label>
        <form:errors path="name" /> 
        <div class="col-sm-4">
            <form:input path="name" />
        </div>
    </div>
      
    <div class="mb-3 row">
        <form:label class="col-sm-2" path="creator">Creator</form:label>
        <form:errors path="creator" />
        <div class="col-sm-4">
            <form:input path="creator" />
        </div>
    </div>

    <div class="mb-3 row">
        <form:label class="col-sm-2" path="currentVersion">Version</form:label>
        <form:errors path="currentVersion" />
        <div class="col-sm-4">
            <form:input path="currentVersion" />
        </div>
    </div>
    <input class="button" type="submit" value="Submit" />
    </div>

</form:form>
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
</body>
</html>