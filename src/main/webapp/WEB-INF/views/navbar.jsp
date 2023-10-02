<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="footer.jsp" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<header>
    <nav class="navbar navbar-expand-lg bg-dark custom-navbar">
        <div class="container-fluid">
            <img src="https://cdn-icons-png.flaticon.com/512/2450/2450449.png" alt="Logo" width="30" height="24"
                 class="d-inline-block align-text-top">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-light" href="index">Inicio</a>
                </li>
            </ul>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="contacto">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="crearCapacitacion">Capacitación</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="listaCapacitacion">Lista Capacitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="listaUsuarios">Lista Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-primary" href="registro">Registro</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous">

</script>
</body>
</html>
