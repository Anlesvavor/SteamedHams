<%-- 
    Document   : administracion
    Created on : 23-may-2016, 20:46:19
    Author     : LeJesusjar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="clases.Conexion"%>
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
                <h2> Administración del sitio </h2>

            </div>
        </div>
        <div class="fondo">
            <div class="cuerpo">
                
                <h3>Clientes</h3>
                <form name="BuscarCliente" method="post" action="">
                    Buscar Cliente...
                    <input name="txtBuscarCliente" type="text" >
                </form>
                <table>
                    <tr>
                        <td>IdCLiente</td>
                        <td>Usuario</td>
                        <td>Contraseña</td>
                        <td>Nombre</td>
                        <td>APaterno</td>
                        <td>AMterno</td>
                        <td>Calle</td>
                        <td>Numero_casa</td>
                        <td>Colonia</td>
                        <td>Código_postal</td>
                        <td>Celular</td>
                        
                    </tr>
                <%
                    ResultSet rs;
                    Conexion cnn = new Conexion();
                    
                    rs = cnn.consultar("select * from clientes where "
                            + "Nombre like '%"+ request.getParameter("txtBuscarCliente") +"%'"
                            + "OR IdCliente like '%"+ request.getParameter("txtBuscarCliente") +"%'"
                            + "OR APaterno like '%"+ request.getParameter("txtBuscarCliente") +"%'"
                            + "OR AMaterno like '%"+ request.getParameter("txtBuscarCliente") +"%'"

                            );
                    while(rs.next()){
                        out.println("<tr>");
                        out.println("<td>" + rs.getString(1) + "</td>");
                        out.println("<td>" + rs.getString(2) + "</td>");
                        out.println("<td>" + rs.getString(3) + "</td>");
                        out.println("<td>" + rs.getString(4) + "</td>");
                        out.println("<td>" + rs.getString(5) + "</td>");
                        out.println("<td>" + rs.getString(6) + "</td>");
                        out.println("<td>" + rs.getString(7) + "</td>");
                        out.println("<td>" + rs.getString(8) + "</td>");
                        out.println("<td>" + rs.getString(9) + "</td>");
                        out.println("<td>" + rs.getString(10) + "</td>");
                        out.println("<td>" + rs.getString(11) + "</td>");
                        out.println("</tr>");
                        
                    }
                %>
                </table>   
                <br>
                <table>
                    <tr>
                        <td>IdCLiente</td>
                        <td>Usuario</td>
                        <td>Contraseña</td>
                        <td>Nombre</td>
                        <td>APaterno</td>
                        <td>AMterno</td>
                        <td>Calle</td>
                        <td>Numero_casa</td>
                        <td>Colonia</td>
                        <td>Código_postal</td>
                        <td>Celular</td>
                        
                    </tr>
                    <%
                        
                        rs = cnn.consultar("select * from Clientes");
                        
                        while(rs.next()){
                            out.println("<tr>");
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("<td>" + rs.getString(6) + "</td>");
                            out.println("<td>" + rs.getString(7) + "</td>");
                            out.println("<td>" + rs.getString(8) + "</td>");
                            out.println("<td>" + rs.getString(9) + "</td>");
                            out.println("<td>" + rs.getString(10) + "</td>");
                            out.println("<td>" + rs.getString(11) + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>
                <br>
                
                <h4>Registrar Cliente</h4>
                <form name="registro" method="post" action="RegistroSVT">

                    <table>
                         <tr>
                            <td>Nombre de Usuario:</td>
                            <td><input type="text" name="txtUsuario" /></td>
                        </tr>
                        <tr>
                            <td>Contraseña</td>
                            <td><input type="text" name="txtContrasena" /></td>
                        </tr>
                        <tr>
                            <td>Nombre:</td>
                            <td><input type="text" name="txtNombre" /></td>
                        </tr>
                        <tr>
                            <td>Apellido paterno:</td>
                            <td><input type="text" name="txtAPaterno" /></td>
                        </tr>
                        <tr>    
                            <td>Apellido Materno:</td>
                            <td><input type="text" name="txtAMaterno" /></td>
                        <tr>
                            <td>Calle:</td>
                            <td><input type="text" name="txtCalle" /></td>
                        </tr>
                        <tr>
                            <td>Numero de casa:</td>
                            <td><input type="text" name="txtNumeroCasa" /></td>
                        </tr>
                            
                        <tr>
                            <td>Colonia:</td>
                            <td><input type="text" name="txtColonia" /></td>
                        </tr>
                        <tr>
                            <td>Codigo Postal:</td>
                            <td><input type="text" name="txtCodigoPostal" /></td>
                        </tr>
                        <tr>
                            <td>Numero Celular:</td>
                            <td><input type="text" name="txtCelular" /></td>
                        </tr>
                    </table>
                    <input  type="submit" name="cmd" />
                            <br>
                        
                </form>
                
            </div>
        </div>
        <div class="fondo">
            <div class="cuerpo">
                <h3>Ordenes</h3>
                <form name="BuscarCliente" method="post" action="">
                    Buscar Orden...
                    <input name="txtBuscarOrden" type="text" >
                </form>
                <table>
                    <tr>
                        <td>idOrden</td>
                        <td>idCliente</td>
                        <td>idPlatillo</td>
                        <td>Cantidad</td>
                    </tr>
                <%

                    
                    rs = cnn.consultar("select * from ordenes where "
                            + "idOrden like '"+ request.getParameter("txtBuscarOrden") +"'"
                            
                            );
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
                <br>
                <table>
                    <tr>
                        <td>idOrden</td>
                        <td>idCliente</td>
                        <td>idPlatillo</td>
                        <td>Cantidad</td>
                    </tr>
                    <%
                        
                        rs = cnn.consultar("select *  from ordenes");
                        
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
                <br>
                <h4>Crear una orden</h4>
                <form name="Orden" method="post" action="OrdenSVT">
                    <table>
                        <tr style="text-align: center">
                            <td>Platillo</td><td>Cantidad</td>
                        </tr>
                        <tr>
                            <td>
                                <select name="txtPlatillo">

                                    <%
                                        rs = cnn.consultar("select * from platillos");
                                        //REcorrer el result set para desplegar el resultado de la
                                        //consulta
                                        while(rs.next()){

                                            out.println("<option value=\"" + rs.getString(1) +"\">" + rs.getString(3)+ "</option>");

                                        }

                                    %>
                                </select>
                            </td>
                            <td>
                                <input type="text" name="intCantidad" />
                            </td>
                            <td>

                            </td>
                        </tr>
                    </table>
                    <input  type="submit" name="cmd" value="Enviar" /> 
                </form>
            </div>
        </div>
        <br>
        <div class="fondo">
            <div class="cuerpo">
                <h3>Empleados</h3>
                
                <form name="BuscarEmpleado" method="post" action="">
                    Buscar Empleado...
                    <input name="txtBuscar" type="text" >
                </form>
                <table>
                    <tr>
                        <td>idEmpleado</td>
                        <td>Nombre</td>
                        <td>Telefono</td>
                        <td>Puesto</td>
                        <td>SueldoBase</td>
                        <td>Bonos</td>
                        <td>Permiso</td>
                        <td>idSucursal</td>
                    </tr>
                <%

                    
                    rs = cnn.consultar("select * from empleados where "
                            + "idEmpleado like '%"+ request.getParameter("txtBuscar") +"%'"
                            + "OR Nombre like '%"+ request.getParameter("txtBuscar") +"%'"
                            );
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
                
                <br>
                <table>
                    <tr>    
                        <td>IdEmpleado</td>
                        <td>Nombre:</td>
                        <td>Telefono:</td>
                        <td>Puesto:</td>
                        <td>Sueldo Base:</td>
                        <td>Bonos:</td>
                        <td>Permiso(número):</td>
                        <td>Id Sucursal:</td>

                    </tr>
                    <%
                        rs = cnn.consultar("select * from empleados");

                        while(rs.next()){
                            out.println("<tr>");
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("<td>" + rs.getString(7) + "</td>");

                            out.println("</tr>");
                        }               
                    %>
                </table>
                <br>
                
                <form name="Empleados" method="post" action="EmpleadosSVT" >
                    <table>
                            
                            <tr>    
                                <td>Nombre:</td>
                                <td><input name="txtNombre" type="text"></td>
                            </tr>
                            <tr>
                                <td>Telefono:</td>
                                <td><input name="txtTelefono" type="text"></td>
                            </tr>
                            <tr>
                                <td>Puesto:</td>
                                <td><input name="txtPuesto" type="text"></td>
                            </tr>
                            <tr>
                                <td>Sueldo Base:</td>
                                <td><input name="floatSueldoBase" type="text"></td>
                            </tr>
                            <tr>
                                <td>Bonos:</td>
                                <td><input name="floatBonos" type="text"></td>
                            </tr>
                            <tr>
                                <td>Permiso(número):</td>
                                <td><input name="intPermiso" type="text"></td>
                            </tr>
                            <tr>
                                <td>Id Sucursal:</td>
                                <td><input name="intIdSucursal" type="text"></td>
                            </tr>
                    </table>
                    <input name="cmd" type="submit">
                </form>
                
            </div>
        </div>
        <div class="fondo">
            <div class="cuerpo">
                <h3>Proveedores</h3>
                buscar proveedor...
                <form name="BuscarProveedor">
                    <input name="txtBuscarProveedor" type="text">
                </form>
                <table>
                    <tr>
                        <td>IdProvedor</td>
                        <td>Nombre</td>
                        <td>Producto</td>
                        <td>Cantidad</td>
                    </tr>
                    <%
                        rs = cnn.consultar("Select * from proveedores where idProveedor like"+
                                "'%" + request.getParameter("txtBuscarProveedor") + "%'" +
                                "OR Nombre like '%" + request.getParameter("txtBuscarProveedor") + "%'"
                                        );
                        
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
                <br>
                <table>
                    <tr>
                        <td>IdProvedor</td>
                        <td>Nombre</td>
                        <td>Producto</td>
                        <td>Cantidad</td>
                    </tr>
                    <%
                        rs = cnn.consultar("Select * from proveedores");
                        
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
                <br>
                
                    <form name="proveedores" method="post" action="ProveedoresSVT">
                        <table>
                            
                            <tr>
                                <td>Nombre:</td>
                                <td><input name="txtNombre" type="text"></td>
                            </tr>
                            <tr>
                                <td>Producto:</td>
                                <td><input name="txtProducto" type="text"></td>
                            </tr>
                            <tr>
                                <td>Cantidad:</td>
                                <td><input name="txtCantidad" type="text"></td>
                            </tr>
                            <tr><input type="submit" name="cmd"></tr>
                        </table>

                    </form>
            </div>
        </div>
                    
        <div class="fondo">
            <div class="cuerpo">
                <h3>Inventarios</h3>
                
                <form name="BuscarInventario">
                    <input name="txtBuscarInventario" type="text">
                    <table>
                      <tr>
                        <td>Id Producto</td>
                        <td>Producto</td>
                        <td>descripción</td>
                        <td>Cantidad</td>
                    </tr>
                    
                    <%
                        rs = cnn.consultar("Select * from inventario where "+
                                "idProducto like '" + request.getParameter("txtBuscarInventario") + "'" + 
                                "OR Producto like '%" + request.getParameter("txtBuscarInventario") + "%'" 
                                );
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
                </form>
                
                <br>
                <table>
                    <tr>
                        <td>Id Producto</td>
                        <td>Producto</td>
                        <td>descripción</td>
                        <td>Cantidad</td>
                    </tr>
                    <%
                        rs= cnn.consultar("Select * from inventario");
                        
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
                    <br>
                
                    <form name="Inventario" method="post" action="InventarioSVT"> 
                        <table>
                            <tr>
                                <td>Nombre Producto:</td>
                                <td><input name="txtProducto" type="text" ></td>
                            </tr>
                            <tr>
                                <td>Descripción</td>
                                <td><input name="txtDescripcion" type="text" ></td>
                            </tr>
                            <tr>
                                <td>Cantidad</td>
                                <td><input name="intCantidad" type="text" ></td>
                            </tr>
                            <tr>
                                <input name="cmd" type="submit">
                            </tr>
                        </table>
                    </form>
            </div>
        </div>
        <div class="fondo">
            <div class="cuerpo">
                <h2>Platillos</h2>
                <form name="BuscarPlatillo">
                    <input type="text" name="txtBuscarPlatillo">
                </form>
                <table>
                    <tr> 
                        <td>IdPlatillo</td>
                        <td>Tipo</td>
                        <td>Nombre del Plato</td>
                        <td>Descripción</td>
                        <td>Precio</td>
                    </tr>
                    <%
                        rs = cnn.consultar("Select * from platillos where "
                                + "idPlatillo like '" + request.getParameter("txtBuscarPlatillo") + "' "
                                + "OR NomPlato like '%" + request.getParameter("txtBuscarPlatillo") + "%' "
                                + "OR Descripcion like '%" + request.getParameter("txtBuscarPlatillo") + "%'");

                        while(rs.next()){
                            out.println("<tr>");
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>
                <br>

                <table>
                    <tr> 
                        <td>IdPlatillo</td>
                        <td>Tipo</td>
                        <td>Nombre del Plato</td>
                        <td>Descripción</td>
                        <td>Precio</td>
                    </tr>
                    <%
                        rs = cnn.consultar("Select * from platillos");

                        while(rs.next()){

                            out.println("<tr>");
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>
                <br>
                <form name="platillos" method="post" action="PlatilloSVT">
                    <table>
                        <tr>
                            <td>Tipo:</td>
                            <td><input name="txtTipo" type="text"></td>
                        </tr>
                        <tr>
                            <td>Nombre del Plato:</td>
                            <td><input name="txtNomPlato" type="text"></td>
                        </tr>
                        <tr>
                            <td>Descripción:</td>
                            <td><input name="txtDescripcion" type="text"></td>
                        </tr>
                        <tr>
                            <td>Precio</td>
                            <td><input name="intPrecio" type="text"></td>
                        </tr>
                        <tr>
                            <input type="submit" name="cmd">
                        </tr>
                    </table>
                </form>

            </div>
        </div>
        <div class="fondo">
            <div class="cuerpo">
                <h2>Sucursales</h2>
                <form name="BuscarSucursales">
                    <input name="txtBuscarSucursales" type="text">
                </form>
                <table>
                    <tr>
                        <td>Id Sucursal</td>
                        <td>Nombre</td>
                        <td>Dirección</td>
                        <td>Telefono</td>
                        <td>Id Gerente</td>
                    </tr>
                    <%
                        rs = cnn.consultar("Select * from sucursales where "
                                + "Nombre like '%" + request.getParameter("txtBuscarSucursales") + "%' "
                                + "OR Direcion like '%" + request.getParameter("txtBuscarSucursales") + "%'" );

                        while(rs.next()){
                            out.println("<tr>");
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>
               
                <br>
                <table>
                    <tr>
                        <td>Id Sucursal</td>
                        <td>Nombre</td>
                        <td>Dirección</td>
                        <td>Telefono</td>
                        <td>Id Gerente</td>
                    </tr>
                    <%
                        rs = cnn.consultar("Select * from sucursales");

                        while(rs.next()){

                            out.println("<tr>");
                            out.println("<td>" + rs.getString(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>
                <br>
                <form name="Sucursal" method="post" action="SucursalSVT">
                    <table>
                        <tr>
                            <td>Nombre:</td>
                            <td><input type="text" name="txtNombre"</td>
                        </tr>
                        <tr>
                            <td>Dirección:</td>
                            <td><input type="text" name="txtDireccion"</td>
                        </tr>
                        <tr>
                            <td>Telefono:</td>
                            <td><input type="text" name="txtTelefono"</td>
                        </tr>
                        <tr>
                            <td>ID Gerente:</td>
                            <td><input type="text" name="intGerente"</td>
                        </tr>
                        
                        <tr>
                            <input type="submit" name="cmd">
                        </tr>
                    </table>
                </form>
            </div>
        </div>       
    </body>
</html>
