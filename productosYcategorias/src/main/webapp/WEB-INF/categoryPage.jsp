<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Category Page</title>
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
    <div class="container">
      <h1>
        <c:out value="${categories.name}" />
      </h1>
      <h2>Products:</h2>
      <ul>
        <c:forEach items="${categories.products}" var="product">
          <li><c:out value="${product.name}" /></li>
        </c:forEach>
      </ul>
      <form:form
        accept-charset="UTF-8"
        action="/categories/${categories.id}"
        method="post"
        modelAttribute="category_product"
      >
        <p>
          Add category:
          <select name="product.id" id="category">
            <c:forEach items="${products}" var="product">
              <option value="${product.id}">${product.name}</option>
            </c:forEach>
          </select>
        </p>
        <form:input type="hidden" path="category.id" value="${categories.id}" />
        <input id="create2" type="submit" value="Add" />
      </form:form>
    </div>
  </body>
</html>
