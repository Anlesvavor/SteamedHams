<%-- 
    Document   : newjsp
    Created on : 25-may-2016, 8:23:33
    Author     : LeJesusjar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
                    
                    
                    String usuario = request.getParameter("txtUsuario");
                    String contrasena = request.getParameter("txtContrasena");
                    if(usuario.equals("admin") && contrasena.equals("admin")){
                        response.sendRedirect("administracion.jsp");
                        
                    }else{
                        response.sendRedirect("primerpagina.jsp");
                    }   
        %>            
    </body>
</html>
