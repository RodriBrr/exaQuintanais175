<%-- 
    Document   : ingresar
    Created on : 22/11/2024, 03:38:14 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/> <!--Lamada del archivo dinamico JSP header-->
<%@include file="conexion.jsp"%> <!-- Llamada a la conexion de datos -->

<%//Capturando los datos por medio del request y el metodo getParameter
            String marca = request.getParameter("marca");
            String modelo = request.getParameter("modelo");
            String precio = request.getParameter("precio");
         //Sentencia sql para ingresar datos
            st = conexion.prepareStatement("INSERT INTO examen values (null,?,?,?)");
            st.setString(1, marca);
            st.setString(2, modelo);
            st.setString(3, precio);
            st.executeUpdate();
            conexion.close();
        response.sendRedirect("index.jsp");
%>

<jsp:include page="includes/footer.jsp"/> <!--Lamada del archivo dinamico JSP footer-->
