<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <h1>New Product</h1>
      <form:form action="/categories/new" method="post" modelAttribute="category">
        <div class="mb-3 row">
          <form:label class="col-sm-2" path="name">Name:</form:label>
          <form:errors path="name" />
          <div class="col-sm-4">
            <form:input path="name" />
          </div>
        </div>
        
        <input type="submit" value="Create" />
        
      </form:form>
    </div>
  </body>
</html>
