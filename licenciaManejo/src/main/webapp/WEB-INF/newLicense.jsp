<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>New License</title>
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
  <h1>New License</h1>
  <form:form accept-charset="UTF-8" action="/licenses/new" method="post" modelAttribute="license">
      <p>
       Person
         <select name="person" id="person">
         <c:forEach items="${persons}" var="person">
               <option value="${person.id}">${person.firstName} ${person.lastName}</option>
          </c:forEach>
      </select>
      </p>
      <p>
          <form:label path="state">State</form:label>
          <form:errors path="state"/>
          <form:input path="state"/>
      </p>
        <p>
          <form:label path="expirationDate">Expiration Date</form:label>
          <form:errors path="expirationDate"/>
          <input type="date" id="expirationDate" name="expirationDate">
      </p>
  
      <input type="submit" value="Create"/>
  </form:form>    
  </div>

</body>
</html>