<
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Title</title>
</head>
<body>

<div class="col-7 container">
    <div class="row">
        <form action="ControladorRegistro" method="post">

            <div class="form-row mb-2 ">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="First Name" aria-label="FirstName">
                    <span class="input-group-text"><i class="fas fa-user-plus"></i></span>
                    <input type="text" class="form-control" placeholder="Last Name" aria-label="LastName"
                           name="lastname">
                </div>

            </div>


            <div class="form-row mb-2 ms-4 me-4">
                <div class="input-group mb-3 ">

                    <span class="input-group-text"><i class="fas fa-user-ninja"></i></span>
                    <input type="text" class="form-control" placeholder="UserName" aria-label="UserName"
                           name="UserName">
                </div>

            </div>


            <div class="form-row mb-3 ms-4 me-4">

                <div class="input-group">
                                <span class="input-group-text">
                                <i class="fas fa-map-marker-alt"></i>
                            </span>
                    <input type="text" class="form-control" placeholder="Address" aria-label="Address"
                           name="address">
                </div>
            </div>

            <div class="form-row mb-3 ms-4 me-4">
                <div class="input-group">
                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                    <input type="text" class="form-control" placeholder="1234-5678" aria-label="Phone Number"
                           name="number" pattern="[0-9]{4}-[0-9]{4}" required>
                </div>
            </div>

            <div class="form-row mb-3 ms-4 me-4">
                <div class="input-group">
                                <span class="input-group-text">
                                <i class="fas fa-lock"></i>
                            </span>
                    <input type="password" class="form-control" placeholder="Password" aria-label="Password"
                           name="password">
                </div>
            </div>

            <div class="form-row btn-submit-center center">

                <button class="btn btn-outline-primary col-6" type="submit">Button</button>
            </div>

        </form>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

<script crossorigin="anonymous" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

<script crossorigin="anonymous" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
