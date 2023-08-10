<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src=""></script>
    <link rel="stylesheet" href="CSS/home.css">
    <title>Document</title>
  </head>
  <body>
  
 <p>You have visited <span>http://localhost:8080/</span> <c:out value="${count}"/> times</p>
 <a href="http://localhost:8080/">Test another visit?</a>
    
  </body>
</html>

