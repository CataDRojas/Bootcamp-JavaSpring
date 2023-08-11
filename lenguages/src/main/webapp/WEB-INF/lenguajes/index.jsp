<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Languages</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />

    <style>
        .container-principal {
            padding-top: 10px;
            width: 70%;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        }
        .new {
            padding: 25px 0 0 80px;
        }
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
    <div class="container-principal">
    <div class="container">
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Creator</th>
            <th>Version</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${lenguajes}" var="lenguaje">
            <tr>
              <td>
                <a href="/lenguajes/${lenguaje.id}"
                  ><c:out value="${lenguaje.name}"
                /></a>
              </td>
              <td><c:out value="${lenguaje.creator}" /></td>
              <td><c:out value="${lenguaje.currentVersion}" /></td>
              <td>
                <a href="/lenguajes/delete/${lenguaje.id}">Delete</a>
                <a href="/lenguajes/edit/${lenguaje.id}">Edit</a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

    <div class="container new">
    <form:form
      accept-charset="UTF-8"
      action="/lenguajes"
      method="post"
      modelAttribute="lenguaje"
    >
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
     


    </form:form>
    </div>

</div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
