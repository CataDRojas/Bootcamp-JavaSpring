<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>New Student</title>
    <style>
      .container {
        font-family: "Comic Sans MS", cursive;
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

    <div class="container mt-3">
      <h1>New Student</h1>
      <form:form
        accept-charset="UTF-8"
        action="/api/students/create"
        method="post"
        modelAttribute="student"
      >
        <div class="mb-3 row">
          <form:label class="col-sm-2" path="firstName">First Name:</form:label>
          <form:errors path="firstName" />
          <div class="col-sm-4">
            <form:input path="firstName" />
          </div>
        </div>
        <div class="mb-3 row">
          <form:label class="col-sm-2" path="lastName">Last Name:</form:label>
          <form:errors path="lastName" />
          <div class="col-sm-4">
            <form:input path="lastName" />
          </div>
        </div>
        <div class="mb-3 row">
          <form:label class="col-sm-2" path="age">Age:</form:label>
          <form:errors path="age" />
          <div class="col-sm-4">
            <form:input path="age" />
          </div>
        </div>
        <input type="submit" value="Create" />
        
      </form:form>
    </div>
  </body>
</html>
