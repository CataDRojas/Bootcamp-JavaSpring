<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>New Person</title>
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
      <h1>New Person</h1>
      <form:form
        accept-charset="UTF-8"
        action="/persons/new"
        method="post"
        modelAttribute="person"
      >
        <p>
          <form:label path="firstName">First Name</form:label>
          <form:errors path="firstName" />
          <form:input path="firstName" />
        </p>
        <p>
          <form:label path="lastName">Last Name</form:label>
          <form:errors path="lastName" />
          <form:input path="lastName" />
        </p>

        <input type="submit" value="Create" />
      </form:form>
    </div>
  </body>
</html>
