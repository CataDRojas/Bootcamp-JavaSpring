<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details</title>
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
            <div class="p-5">
                <h1><c:out value="${person.firstName}"></c:out> <c:out value="${person.lastName}"></c:out></h1>
                <div class="row mb-3">
                    <label class="col-sm-4">License Number:</label>
                    <div class="col-sm-8">
                        <c:out value="${person.license.id}"></c:out>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-4">State:</label>
                    <div class="col-sm-8">
                        <c:out value="${license.state}"></c:out>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-4">Expiration Date:</label>
                    <div class="col-sm-8">
                        <c:out value="${license.expirationDate}"></c:out>
                    </div>
                </div>
            </div>
    </div>
        
</body>
</html>