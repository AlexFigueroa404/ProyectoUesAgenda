<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page session="true"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid ms-3">
        <a class="navbar-brand" href="#">
            <img alt="" height="35" src="https://image.flaticon.com/icons/png/512/3652/3652191.png" width="35">
            Agenda
        </a>
        <div class="d-flex">
            <div class="dropdown dropdown-menu-end me-4">
                <button class="btn btn-outline-primary dropdown-toggle me-4" type="button" id="dropdownMenuButton1"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    nombre de usuario
                </button>
                <ul class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton1">
                    <li class="dropdown-item" href="#">
                        <img src="user.png" height="60" width="60"/>
                    </li>
                    <li class="dropdown-item" href="#"><span class="text-primary ">
                        <%
                           String username = (String)session.getAttribute("username");
                        %>
                        ${username}
                    </span> <br>
                    </li>
                    <li class="dropdown-item"><span class="text-secondary">

                    </span>
                    </li>

                    <form action="" method="post" class="mt-2 mb-2">
                        <button class="btn btn-outline-primary" type="submit">Logout</button>
                    </form>
                </ul>

            </div>
        </div>
    </div>
</nav>

<script crossorigin="anonymous" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

<script crossorigin="anonymous" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
