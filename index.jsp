<%-- 
    Document   : index
    Created on : 19/11/2024, 09:15:56 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/> <!--Lamada del archivo dinamico JSP header-->

<br>
        <div class="container well">
           <div>
            <center>
                <h4>Fecha y hora del sistema : <%= new java.util.Date() %></h4>
            </center>  
                <%@include file="conexion.jsp"%>
                <a class="btn bg-primary" href="ingresarequi.jsp"><h3>Alta de Equipo</h3></a><br>
           
                <div class="row col-md-12 center-block jumbotron">
                <table class="table table-striped table-bordered table-hover" style="text-align: center">
                    <thead>
                        <tr>
                            <th style="text-align: center">ID_EQUIPO</th>
                            <th style="text-align: center">MARCA</th>
                            <th style="text-align: center">MODELO</th>
                            <th style="text-align: center">PRECIO</th>
                            <th style="text-align: center">Operaciones</th>
                            <th style="text-align: center">Operaciones</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <%
                          st=conexion.prepareStatement("select * from examen");
                          rs=st.executeQuery();
                          while(rs.next()){//inicia while
                        %>  
                        <tr>
                            <td><%= rs.getString("idEquipo") %></td>
                            <td><%= rs.getString("marca") %></td>
                            <td><%= rs.getString("modelo") %></td>
                            <td><%= rs.getString("precio") %></td>
                            <td>
                                <a class="btn btn-danger" href="eliminar.jsp?idequipo=<%= rs.getString("idEquipo") %>" onclick="return confirm('¿Estás seguro de que deseas eliminar este equipo?');">
                                   <i class="fa fa-trash"></i> Eliminar
                                </a>
                            </td>
                            <td>
                                <a class="btn btn-warning" href="editarequi.jsp?idEquipo=<%= rs.getString(1) %>&marca=<%= rs.getString(2) %>&modelo=<%= rs.getString(3) %>&precio=<%= rs.getString(4) %>">
                                   <i class="fa fa-edit"></i> Editar
                                </a>
                            </td>
                        </tr>
                        <%
                          }//termina while  
                        %>
                    </tbody>
                </table>
            </div>
       
         </div>
        </div>  

<jsp:include page="includes/footer.jsp"/> <!--Lamada del archivo dinamico JSP footer-->
