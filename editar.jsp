<%-- 
    Document   : editar
    Created on : 12/12/2024, 09:47:25 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/> <!--Lamada del archivo dinamico JSP header-->
<%@include file="conexion.jsp"%> <!-- Llamada a la conexion de datos -->

<%
    // Recibir los datos enviados desde el formulario
    String marca = request.getParameter("marca");
    String modelo = request.getParameter("modelo");
    String precio = request.getParameter("precio");

    PreparedStatement stmt = null;
    boolean cambiosGuardados = false;

    try {
        // Consulta SQL para actualizar los valores en la tabla
        String query = "UPDATE examen SET marca = ?, modelo = ?, precio = ?"; // Actualiza toda la tabla
        stmt = conexion.prepareStatement(query);

        // Asignar los valores a la consulta
        stmt.setString(1, marca);
        stmt.setString(2, modelo);
        stmt.setString(3, precio);

        // Ejecutar la consulta
        int filasAfectadas = stmt.executeUpdate();

        // Verificar si se realizaron cambios
        if (filasAfectadas > 0) {
            cambiosGuardados = true;
        }
    } catch (SQLException e) {
        out.println("Error al guardar los cambios: " + e.getMessage());
        e.printStackTrace();
    } finally {
        // Cerrar recursos
        try {
            if (stmt != null) stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Mostrar la alerta y redirigir al index.jsp
    if (cambiosGuardados) {
%>
        <script>
            alert("Los cambios se han guardado correctamente.");
            window.location.href = "index.jsp"; // Redirigir al index.jsp
        </script>
<%
    } else {
%>
        <script>
            alert("No se pudo guardar los cambios. Por favor, verifica los datos.");
            window.history.back(); // Regresar al formulario
        </script>
<%
    }
%>

<jsp:include page="includes/footer.jsp"/> <!--Lamada del archivo dinamico JSP footer-->
