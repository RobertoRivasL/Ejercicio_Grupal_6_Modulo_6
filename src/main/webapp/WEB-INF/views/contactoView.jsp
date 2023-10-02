<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="navbar.jsp" %>
<%@ include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contacto</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>
<div class="container text-center">
    <h1 class="text-center mt-5">Contacto</h1>
    <div style="text-align: center;">
        <img width="48" height="48" src="https://img.icons8.com/color/48/registration-skin-type-7.png"
             alt="registration-skin-type-7"/>
    </div>
    <form action="/formularioContacto" method="post" class="form-container">
        <div class="form-outline">
            <label class="form-label" for="nombre">Nombre</label>
            <input name="nombre" type="text" id="nombre" class="form-control" required/>
        </div>

        <div class="form-outline">
            <label class="form-label" for="correo">Correo Electrónico</label>
            <input name="correo" type="email" id="correo" class="form-control" required/>
        </div>

        <div class="form-outline">
            <label class="form-label" for="mensaje">Mensaje</label>
            <textarea name="mensaje" class="form-control" id="mensaje" rows="4" required></textarea>
        </div>

        <div class="form-check mt-3">
            <input class="form-check-input" type="checkbox" value="" id="enviarCopia" checked/>
            <label class="form-check-label" for="enviarCopia">Envíame una copia del mensaje</label>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary mt-4">Enviar</button>
    </form>
    <!-- Message display area -->
    <div class="mt-3">
        <div class="alert alert-success d-none" id="mensajeEnviado">Su mensaje ha sido enviado</div>
    </div>
</div>

<!-- Include Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
