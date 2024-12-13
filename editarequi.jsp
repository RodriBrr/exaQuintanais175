<%-- 
    Document   : editarequi
    Created on : 12/12/2024, 10:18:54 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/> <!-- Llamada del archivo dinámico JSP header -->
<%@include file="conexion.jsp"%> <!-- Llamada a la conexión de datos -->
 <div class="container well">
        <center>
            <h3>Editar Equipo Rodrigo Quintana</h3>
        </center>
        <div class="row col-md-4"></div>
        <div class="row col-md-5">
            <form role="form" action="editar.jsp" method="POST">
                <div class="col-md-10">
                    <!-- Campo para editar la marca -->
                    <div class="form-group">
                        <label for="marca">Marca:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="marca" id="marca" 
                                   value="<%= request.getParameter("marca") %>" placeholder="Ingresa marca" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>

                    <!-- Campo para editar el modelo -->
                    <div class="form-group">
                        <label for="modelo">Modelo:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="modelo" name="modelo" 
                                   value="<%= request.getParameter("modelo") %>" placeholder="Ingresa el modelo" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>

                    <!-- Campo para editar el precio -->
                    <div class="form-group">
                        <label for="precio">Precio:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="precio" name="precio" 
                                   value="<%= request.getParameter("precio") %>" placeholder="Ingresar el precio" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>

                    <!-- Botón para guardar los cambios -->
                    <input type="submit" class="btn btn-info" value="Guardar Cambios">
                </div>
            </form>
        </div>    
    </div>
<jsp:include page="includes/footer.jsp"/> <!--Lamada del archivo dinamico JSP footer-->

