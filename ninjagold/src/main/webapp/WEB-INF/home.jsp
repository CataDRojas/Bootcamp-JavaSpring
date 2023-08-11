<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <style>
      body {
        font-family: "Comic Sans MS", cursive;
      }
      .col {
        text-align: center;
        border: 2px solid black;
        margin: 15px;
        padding: 10px;
      }
    </style>
</head>
<body>
    <div class="container mt-3">
        <div class="row">
            <h3>Your Gold:</h3>
            <p>${count}</p>
            <form action="/reset" method="post">
            	<button>reset</button>
            </form>
        </div>
        <div class="row">
            <div class="col">
                <h2>Farm</h2>
                <h4>(earn 10-20 gold)</h4>
                <form action="/farm" method="post">
                    <button type="submit">Find Gold!</button>
                </form>
            </div>
            <div class="col">
                <h2>Cave</h2>
                <h4>(earn 5-10 gold)</h4>
                <form action="/cave" method="post">
                    <button type="submit">Find Gold!</button>
                </form>
            </div>
            <div class="col">
                <h2>House</h2>
                <h4>(earn 2-5 gold)</h4>
                <form action="/house" method="post">
                    <button type="submit">Find Gold!</button>
                </form>
            </div>
            <div class="col">
                <h2>Casino!</h2>
                <h4>(earns/takes 0-50 gold)</h4>
                <form action="/casino" method="post">
                    <button id="find" type="submit">Find Gold!</button>
                </form>
            </div>
            <div class="col">
                <h2>Spa</h2>
                <h4>(earn takes 5-20 gold)</h4>
                <form action="/spa" method="post">
                    <button type="submit">Find Gold!</button>
                </form>
            </div>
        </div>
        <div class="row">
            <h3> Activities:</h3>
            <div class="col">
	            <c:forEach var="message" items="${msg}">
	                <p class="${message}">${message}</p>
	            </c:forEach>            
            </div>
        </div>
    </div>
</body>
</html>