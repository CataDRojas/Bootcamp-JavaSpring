<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>New Contact</title>
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
  <h1>Contact Info</h1>
  <form:form accept-charset="UTF-8" action="/api/contacts/create" method="post" modelAttribute="contact">
        	
          <div class="mb-3 row ">
            <label for="student">Student:</label>
            <div class="col-sm-4">
              <select name="student" id="student">
            		<c:forEach items="${persons}" var="person">
                		<option value="${person.id}">${person.firstName} ${person.lastName}</option>
        		    </c:forEach>
		        </select>
            </div>
          </div>
          <div class="mb-3 row ">
            <form:label class="col-sm-2" path="address">Address:</form:label>
            <form:errors path="address" /> 
            <div class="col-sm-8">
                <form:input path="address" />
            </div>
          </div>
          <div class="mb-3 row ">
            <form:label class="col-sm-2" path="city">City:</form:label>
            <form:errors path="city" /> 
            <div class="col-sm-4">
                <form:input path="city" />
            </div>
          </div>
          <div class="mb-3 row ">
            <form:label class="col-sm-2" path="state">State:</form:label>
            <form:errors path="state" /> 
            <div class="col-sm-4">
                <form:input path="state" />
            </div>
          </div>
          

            <input type="submit" value="Create" />
        </form:form> 
  </div>

</body>
</html>