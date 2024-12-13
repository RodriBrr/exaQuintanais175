<%-- 
    Document   : eliminar
    Created on : 12/12/2024, 09:47:38 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/> <!--Lamada del archivo dinamico JSP header-->
<%@include file="conexion.jsp"%> <!-- Llamada a la conexion de datos -->

<%
    String idEquipo = request.getParameter("idequipo"); // Obtener el parámetro del ID
    String mensaje = "";

    if (idEquipo != null && !idEquipo.trim().isEmpty()) {
        PreparedStatement stmtEliminar = null;

        try {
            stmtEliminar = conexion.prepareStatement("DELETE FROM examen WHERE idEquipo = ?");
            stmtEliminar.setString(1, idEquipo);
            int filasAfectadas = stmtEliminar.executeUpdate();

            if (filasAfectadas > 0) {
                mensaje = "El equipo con ID " + idEquipo + " se eliminó correctamente.";
            } else {
                mensaje = "No se encontró un equipo con el ID proporcionado.";
            }

        } catch (SQLException e) {
            mensaje = "Error al eliminar el equipo: " + e.getMessage();
        } finally {
            if (stmtEliminar != null) {
                try {
                    stmtEliminar.close();
                } catch (SQLException e) {
                    mensaje += " Error al cerrar el PreparedStatement: " + e.getMessage();
                }
            }
        }
    } else {
        mensaje = "No se proporcionó un ID válido para eliminar.";
    }

    // Redirigir al usuario de vuelta a la página principal
    response.sendRedirect("index.jsp?mensaje=" + mensaje);
%>


<jsp:include page="includes/footer.jsp"/> <!--Lamada del archivo dinamico JSP footer-->