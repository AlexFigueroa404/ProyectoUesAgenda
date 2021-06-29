<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
    <title>Login</title>
</head>
<body>

    <div class="container">
     <div class="col-3">
         <div class="alert alert-danger" role="alert">
             Datos incorrectos vuelva a iniciar sesion
         </div>
         <form action="ControladorLogin"  method="post">
             <div class="form-row mb-2 input-group">
                            <span class="input-group-text">
                                <i class="fas fa-user"></i>
                            </span>
                 <input type="text" class="form-control"  placeholder="UserName " name="username"
                        required>
             </div>
             <div class="form-row mb-3 input-group">
                            <span class="input-group-text" >
                                <i class="fas fa-lock"></i>
                            </span>
                 <input type="password" class="form-control"  name="Password" placeholder="Password" required>
             </div>

             <div class="form-row btn-submit-center center">
                 <button class="btn btn-outline-primary col-8" type="submit">Login</button>
             </div>


         </form>
         <a href="registro.jsp" class="link-primary">REGISTRARSE</a>
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