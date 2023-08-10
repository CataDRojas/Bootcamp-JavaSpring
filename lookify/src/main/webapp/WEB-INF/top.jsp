<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
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
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="mt-2 d-flex justify-content-between">
                <h4>Top ten songs</h4>
                <a href="/dashboard">Dashboard</a>
            </div>
            <div class="col-8 mt-4">
                <table class="table">
                    <thead>
                        <tr>
                            <th >Rating</th>
                            <th >Title</th>
                            <th >Artist</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="song" items="${topten}">
                            <tr>
                                <td>
                                    <c:out value="${song.rating}" />
                                </td>
                                <td>
                                    <c:out value="${song.title}" />
                                </td>
                                <td>
                                    <c:out value="${song.artist}" />
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
</body>
</html>