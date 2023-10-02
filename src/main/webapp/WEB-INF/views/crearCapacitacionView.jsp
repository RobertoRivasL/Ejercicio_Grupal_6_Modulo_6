<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
    <title>Capacitación</title>
    <!-- Include jQuery and Bootstrap JS and CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          integrity="sha384-KyZXEAg3QhqLMpG8r+qUfjcJ6pajs/rfdfs3SO+kF6dt4G6IMy5vVZ6O6/W5fdS5P" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <!-- Include jQuery UI Datepicker -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>
<div class="container">
    <h1 class="text-center">Capacitación</h1>
    <div class="b-example-divider mt-5"></div>

    <!-- Button to open the modal -->
    <button id="openModalBtn" class="btn btn-primary">Abrir Formulario de Capacitación</button>

    <!-- Modal for Capacitación -->
    <div id="capacitacionModal" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Crear una Capacitación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="formulario" action="formularioCapacitacion" method="POST">
                        <!-- Rut Cliente input with placeholder -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="rut_cliente">Rut Cliente</label>
                            <input name="rutCliente" type="number" id="rut_cliente" class="form-control my-custom-class"
                                   minlength="8" maxlength="9" required placeholder="Rut Cliente"/>
                            <label class="d-none text-danger" id="alertaRut_cliente">Falta agregar el rut del
                                cliente</label>
                        </div>

                        <!-- Date Picker for Dia -->
                        <div class="form-group mb-4">
                            <!-- Campo "Día" como entrada de texto oculto -->
                            <input type="hidden" name="dia" id="diaHidden" required/>
                            <div class="form-group mb-4">
                                <label for="Dia">Día</label>
                                <input type="text" id="Dia" class="form-control my-custom-class" required
                                       placeholder="Seleccionar Fecha"/>
                            </div>

                        </div>

                        <!-- Hora select with placeholder -->
                        <div class="form-group mb-4">
                            <label for="Hora">Hora</label>
                            <select name="hora" class="form-control my-custom-class" id="Hora" required>
                                <%
                                    for (int j = 10; j < 24; j++) {
                                %>
                                <option><%=j%>:00</option>
                                <%}%>
                            </select>
                        </div>

                        <!-- Lugar input with placeholder -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="lugar">Lugar</label>
                            <input name="lugar" type="text" id="lugar" class="form-control my-custom-class"
                                   minlength="10" maxlength="50" required placeholder="Lugar"/>
                            <label class="d-none text-danger" id="alertaLugar">Falta agregar el lugar</label>
                        </div>

                        <!-- Duración input with placeholder -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="duracion">Duración (horas)</label>
                            <input name="duracion" type="number" id="duracion" class="form-control my-custom-class"
                                   min="1" required placeholder="Duración (horas)" value="1">
                            <label class="d-none text-danger" id="alertaDuracion">Falta agregar la Duración</label>
                        </div>

                        <!-- Cantidad Asistentes input with placeholder -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="cantidadAsistentes">Cantidad de Asistentes</label>
                            <input name="cantidadAsistentes" type="number" id="cantidadAsistentes"
                                   class="form-control my-custom-class" maxlength="1000" required
                                   placeholder="Cantidad de Asistentes"/>
                            <label class="d-none text-danger" id="alertaCantidadAsistentes">Falta agregar la cantidad de
                                Asistentes</label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-primary" id="guardarCapacitacionBtn">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Inicializa el Datepicker
    $(function () {
        $("#Dia").datepicker({
            minDate: 0, // Mínima fecha es hoy
            dateFormat: "yy/mm/dd", // Formato de fecha: YYYY/MM/DD
            onSelect: function (dateText) {
                // Cuando se selecciona una fecha, actualiza el campo oculto "dia"
                $("#diaHidden").val(dateText);
            }
        });
    });
</script>

<script>
    $('#Dia').change(function () {
        var dia = $('#Dia').val();

        // Formatear la fecha para enviarla al servidor
        // La fecha se formatea en el formato YYYY/MM/DD
        // El valor formateado se asigna al campo "dia" del formulario
        $('#dia').val(dia.getFullYear() + '/' + (dia.getMonth() + 1) + '/' + dia.getDate());
    });
</script>
<script>
    $("#guardarCapacitacionBtn").click(function () {
        console.log("Guardar Capacitación button clicked");
        $("#formulario").submit();
    });
</script>
<script>
    // Open the modal when the button is clicked
    $("#openModalBtn").click(function () {
        $("#capacitacionModal").modal("show");
    });

    // Close the modal when the "Cerrar" or "Guardar" button is clicked
    $("#guardarCapacitacionBtn, .btn-close").click(function () {
        $("#capacitacionModal").modal("hide");
    });
</script>
</body>
</html>
