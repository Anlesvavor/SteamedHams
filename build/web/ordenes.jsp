<%-- 
    Document   : ordenes
    Created on : 17-may-2016, 8:30:29
    Author     : LeJesusjar
--%>

<%@page import="clases.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .boton1
            {
                margin: 20px;
                background-color:#ff0000;
                font: sans-serif,cursive;
                color: white;
                alignment-adjust: central;
                width: 400px;
                height: 200px;
                background: linear-gradient(red, #ff3030 ); /* Gradiente para Firefox */
                border-radius: 15px;
                border-color: red;
            }
            .boton1:active
            {
                margin: 20px;
                background-color:#ff0000;
                font: sans-serif,cursive;
                color: white;
                alignment-adjust: central;
                width: 400px;
                height: 200px;
                background: linear-gradient(red, #ffBBBB ); /* Gradiente para Firefox */
                border-radius: 15px;
                border-color: red;
            }
            body
            {
                background-image:url(imagenes/fondo.png);
                background-repeat: repeat;
            }
            .fondo
            {
                background-image: url(imagenes/fondo2.png);
                border-radius: 10px;
            }
            .cuerpo
            {
                margin: 2px;
                border: 4px;
                border-radius: 20px;
                padding: 2px;
                padding-left: 2px;
                    
            }
            tr:hover
            {
                background-color: gray;
            }
        </style>
    </head>
    <body>
        <div class="fondo">
            <div class="cuerpo">
                
            <center>
                <h1>Ordenes</h1>
                
            </center>
            </div>
            
        </div>
        
            <div class="fondo">
                <center>
                    
                    <table  border="1" >
                        <tr>
                            <td>
                                Id de la orden:
                            </td>
                            <td>
                                Id del cliente:
                            </td>
                            <td>
                                Id Platillo:
                            </td>
                            <td>
                                Cantidad:
                            </td>
                        </tr>
                        <%
                            ResultSet rs;
                            Conexion cnn = new Conexion();
                            
                            rs = cnn.consultar("select * from ordenes");
                            
                            while(rs.next()){
                                out.println("<tr>");
                                out.println("<td>" + rs.getString(1) + "</td>");
                                out.println("<td>" + rs.getString(2) + "</td>");
                                out.println("<td>" + rs.getString(3) + "</td>");
                                out.println("<td>" + rs.getString(4) + "</td>" );
                                out.println("</tr>");
                            }
                        %>
                    </table>
                    
                </center>
            </div>
        
    </body>
</html>
