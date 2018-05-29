<%-- 
    Document   : login
    Created on : 25-may-2016, 8:48:00
    Author     : LeJesusjar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        hola
        <%
        //boolean conectado = true;
        try{
            String usuario = request.getParameter("txtUsuario");   
            String contrasena = request.getParameter("txtPassword");
            Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://127.0.0.1/restaurante",
                "root",
                "");  
            PreparedStatement pst = conn.prepareStatement("Select usuario,contrasena from clientes where usuario=? and contrasena=?");
            pst.setString(1, usuario);
            pst.setString(2, contrasena);
            ResultSet rs1 = pst.executeQuery();                        
            if(rs1.next()){
                if(usuario.equals("admin") && contrasena.equals("admin")) {
                    response.sendRedirect("administracion.jsp");
                } else {
                    response.sendRedirect("primerpagina.jsp");
                    session.setAttribute("usuario", usuario);
                }
            }      
            else {

            }           
       }
       catch(Exception e){       
           out.println("Algo a ocurrido, trate de nuevo");       
       }      
        
   %>
    </body>
</html>
