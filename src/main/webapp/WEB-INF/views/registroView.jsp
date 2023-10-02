<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        h1 {
            text-align: center;
        }

        img {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-8 mt-5">
            <form class="register-form" action="formularioRegistro" method="POST">
                <h2 class="text-center mb-4">Registro</h2>
                <div class="align-center">
                    <img width="48" height="48" src="https://img.icons8.com/color/48/registration-skin-type-7.png"
                         alt="registration-skin-type-7"/>
                </div>
                <div class="form-group">
                    <label for="nombreUsuario">Nombre de Usuario</label>
                    <input name="nombreUsuario" type="text" id="nombreUsuario" class="form-control"
                           placeholder="Ingresa Usuario" required>
                </div>
                <br>
                <div class="form-group">
                    <label for="contrasena">Contraseña</label>
                    <input name="contrasena" type="password" id="contrasena" class="form-control"
                           placeholder="Ingresa tu contraseña" required>
                </div>
                <br>
                <div class="button-container">
                    <button type="submit" class="btn btn-primary btn-dark mb-3">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="scripts.js"></script> <!-- Agrega tus scripts personalizados aquí -->
</body>
</html>


<!--
<html>
<head>
<title>Registro</title>
</head>
<body>
<div class="container">
<div class="row justify-content-center">
<div class="col-lg-4 col-md-6 col-sm-8">
<form class="register-form" action="formularioRegistro" method="POST">
<h2 class="text-center mb-4">Registro</h2>
<img width="48" height="48" src="https://img.icons8.com/color/48/registration-skin-type-7.png" alt="registration-skin-type-7"/>
<div class="form-group">
<label class="mb-3" for="nombreUsuario">Nombre de Usuario</label>
<input name="nombreUsuario" type="text" id="nombreUsuario" class="form-control"
placeholder="Ingresa Usuario" required>
</div>
<br>
<div class="form-group">
<label class="mb-3" for="contrasena">Contraseña</label>
<input name="contrasena" type="password" id="contrasena" class="form-control"
placeholder="Ingresa tu contraseña" required>
</div>
<br>
<div style="display: flex; justify-content: space-between;">
<button type="submit" class="btn btn-primary btn-dark mb-3">Registrar</button>
</div>
</form>

</div>
</div>
</div>

</body>
</html>
-->