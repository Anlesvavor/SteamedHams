<%-- 
    Document   : proveedores
    Created on : 23-may-2016, 11:34:43
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
                margin: 4px;
                border: 4px;
                border-radius: 20px;
                padding: 2px;
                padding-left: 2px;
            }
            
            
            .overlay {
              position: absolute;
              top: 0;
              bottom: 0;
              left: 0;
              right: 0;
              background: rgba(0, 0, 0, 0.7);
              transition: opacity 500ms;
              visibility: hidden;
              opacity: 0;
            }
            .overlay:target {
              visibility: visible;
              opacity: 1;
            }

            .popup {
              margin: 70px auto;
              padding: 20px;
              background: #fff;
              border-radius: 5px;
              width: 50%;
              position: relative;
              transition: all 5s ease-in-out;
            }

            .popup h2 {
              margin-top: 0;
              color: #333;
              font-family: Tahoma, Arial, sans-serif;
            }
            .popup .close {
              position: absolute;
              top: 20px;
              right: 30px;
              transition: all 200ms;
              font-size: 30px;
              font-weight: bold;
              text-decoration: none;
              color: #333;
            }
            .popup .close:hover {
              color: orange;
            }
            .popup .content {
              max-height: 30%;
              overflow: auto;
            }
            table{
                background-color: orange;
                border-color: coral;
                border-collapse: collapse;
                
            }
            th, td {
                padding: 5px;
            }
            tr:hover
            {   
                background-color: orangered;
            }
    
        </style>
    </head>
    <body>
        <div class="fondo">
            <div class="cuerpo">
                <center><h2>Proveedores</h2></center>
                
            </div>
        </div>
        
        <div class="fondo">
            <div class="cuerpo">
                <center>
                    <table>
                        <tr>
                            <td>ID Proveedor</td>
                            <td>Nombre</td>
                            <td>Producto</td>
                            <td>Cantidad</td>
                        <%
                            ResultSet rs;
                            Conexion cnn = new Conexion();
                            
                            rs = cnn.consultar("select * from proveedores ");
                            while(rs.next()){
                                out.println("<tr>");
                                out.println("<td>" + rs.getString(1) + "</td>");
                                out.println("<td>" + rs.getString(2) + "</td>");
                                out.println("<td>" + rs.getString(3) + "</td>");
                                out.println("<td>" + rs.getString(4) + "</td>");
                                
                                out.println("</tr>");
                            }
                        %>
                        
                    </table>
                    
                </center>
                
            </div>
        </div>
        
    </body>
</html>
