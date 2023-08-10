<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/app2.js"></script>
    <link rel="stylesheet" href="CSS/time.css">
    <title>Time</title>
</head>
<body>
    
    
    <h1 class="time">
    <c:out value="${dateTime}"/>
    <h1/>
    
</body>
</html>