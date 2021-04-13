<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Secret Code</title>
</head>
<body>
    <div class="row align-items-center mt-4">
        <div class="col">
        </div>
        <div class="col">
                <h2>What is the Code?</h2>
                      <p class="text-danger"><c:out value="${error}"/></p>
                <form method="POST" action="/code">
                    <div class="mb-3">
                      <input type="text" class="form-control" name="codeText"/>
                    </div>
                    <button class="btn btn-primary">Try Code</button>
                  </form>
        </div>
        <div class="col">
        </div>
      </div>
</body>
</html>