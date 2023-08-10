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
            <div class="mt-2 d-flex justify-content-end">
                <a href="/dashboard">Dashboard</a>
            </div>

            <div class="col-6 p-5">
                <div class="row mb-3">
                    <label class="col-sm-4">Title</label>
                    <div class="col-sm-8">
                        <c:out value="${song.title}"></c:out>
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-4">Artist</label>
                    <div class="col-sm-8">
                        <c:out value="${song.artist}"></c:out>
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-4">Rating</label>
                    <div class="col-sm-8">
                        <c:out value="${song.rating}"></c:out>
                    </div>
                </div>
            </div>
    </div>
        
</body>
</html>