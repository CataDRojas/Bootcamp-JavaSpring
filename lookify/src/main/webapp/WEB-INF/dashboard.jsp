<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
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
      table {
        width: 100%;
        border: 1px solid;
        border-collapse: collapse;
      }
      td,
      th {
        border: 1px solid;
        padding: 5px;
      }
      tr:nth-child(even) {
        background-color: #eeeeee;
      }
      th {
        text-align: left;
        background-color: #cccccc;
      }
    </style>
  </head>
  <body>
    <nav class="navbar">
        <div class="container-fluid">
            <a href="/songs/new">Add New</a>
            <a href="/search/topTen">Top Songs</a>
          <form class="d-flex" role="search" action="/songs/searchbytitle" method="POST" class="d-flex">
            <input type="text" class="form-control me-2" placeholder="Search Artist" name="artist" />
            <button class="btn btn-outline-secondary" type="submit">Search</button>
          </form>
        </div>
      </nav>

    <div class="container mt-4">
      <table>
        <thead >
          <tr>
            <th>Name</th>
            <th>Rating</th>
            <th>Actions</th>
          </tr>
        </thead>

        <tbody>
          <c:forEach items="${songs}" var="song">
            <tr>
              <td>
                <a href="/songs/${song.id}"><c:out value="${song.title}" /></a>
              </td>
              <td><c:out value="${song.rating}" /></td>
              <td>
                <a href="/songs/delete/${song.id}">Delete</a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
