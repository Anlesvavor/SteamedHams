/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LeJesusjar
 */
@WebServlet(name = "EmpleadosSVT", urlPatterns = {"/EmpleadosSVT"})
public class EmpleadosSVT extends HttpServlet {

    private Conexion cnn;
    private Empleado empleado;
    private CatalogoEmpleado catalogoEmpleado;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //processRequest(request, response);
            
            cnn = new Conexion();
            empleado = new Empleado();
            
            
            empleado.setNombre(request.getParameter("txtNombre"));
            empleado.setTelefono(request.getParameter("txtTelefono"));
            empleado.setPuesto(request.getParameter("txtPuesto"));
            empleado.setSueldoBase(Float.parseFloat(request.getParameter("floatSueldoBase")));
            empleado.setBonos(Float.parseFloat(request.getParameter("floatBonos")));
            empleado.setPermiso(Integer.parseInt(request.getParameter("intPermiso")));
            empleado.setIdSucursal(Integer.parseInt(request.getParameter("intIdSucursal")));
            
            catalogoEmpleado = new CatalogoEmpleado(cnn);
            
            catalogoEmpleado.insertEmpleado(empleado);
            
            response.sendRedirect("administracion.jsp");
           
                    } catch (ClassNotFoundException ex) {
            Logger.getLogger(EmpleadosSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadosSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
