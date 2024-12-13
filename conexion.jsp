<%-- 
    Document   : conexion
    Created on : 19/11/2024, 09:16:16 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page language = "java" import = "java.sql.*"  %>
<%
    Connection conexion=null; //conexion a base de datos
    PreparedStatement st=null; //sentecias SQL
    ResultSet rs=null;//resultado final de datos
   
    Class.forName("com.mysql.jdbc.Driver");
    conexion=DriverManager.getConnection("jdbc:mysql://localhost/bdexaquintana","uquintanais","udl123");
%>