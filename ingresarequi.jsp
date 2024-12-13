<%-- 
    Document   : ingresaredi
    Created on : 22/11/2024, 03:28:57 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/> <!--Lamada del archivo dinamico JSP header-->
<%@include file="conexion.jsp"%> <!-- Llamada a la conexion de datos -->

<div class="container well">
            <center>
                <h3>Alta Equipo Rodrigo Quintana </h3>
            </center>
            <!--Colocar formulario aqui-->
            <div class="row col-md-4"></div>
                <div class="row col-md-5">
                <form role="form"  action="ingresar.jsp" method="POST">
                    <div class="col-md-10">
                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>
                        <div class="form-group">
                            <label for="marca">Marca:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="marca" id="marca" placeholder="Ingresa marca" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="modelo">Modelo:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="modelo" name="modelo" placeholder="Ingresa el modelo" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="precio">Precio:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="precio" name="precio" placeholder="Ingresar el precio" required>
                                <span class="input-group-addon"><span class="glyphicon-glyphiconasterisk"></span></span>
                            </div>
                        </div>
                        <input type="submit"class="btn btn-info"value="Guardar el Equipo">
                    </div>
                </form>
           
        </div>    
     </div>

<jsp:include page="includes/footer.jsp"/> <!--Lamada del archivo dinamico JSP footer-->