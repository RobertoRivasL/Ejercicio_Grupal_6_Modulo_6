<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
    <title>Lista Usuarios</title>
</head>
<body>
<div class="container">
    <h1 class="text-center">Listado Usuarios</h1>
    <hr class="hr" style="height: 20px"/>
    <div class="table-responsive shadow">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nombre Usuario</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach items="${usuarios}" var="usuario">
                <tr>
                    <td>${usuario.getId()}</td>
                    <td>${usuario.getNombreUsuario()}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous">
</script>
</body>
</html>
