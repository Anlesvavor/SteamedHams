
package clases;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SucursalSVT", urlPatterns = {"/SucursalSVT"})
public class SucursalSVT extends HttpServlet {
    
        private Conexion cnn;
        private Sucursal sucursal;
        private CatalogoSucursal catalogoSucursal;
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            try {
                cnn = new Conexion();
                sucursal = new Sucursal();
                
                sucursal.setNombre(request.getParameter("txtNombre"));
                sucursal.setDireccion(request.getParameter("txtDireccion"));
                sucursal.setTelefono(request.getParameter("txtTelefono"));
                sucursal.setIdGerente(Integer.parseInt(request.getParameter("intGerente")));
                
                catalogoSucursal = new CatalogoSucursal(cnn);
                
                catalogoSucursal.insertSucursal(sucursal);
                
                response.sendRedirect("administracion.jsp");
                
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(SucursalSVT.class.getName()).log(Level.SEVERE, null, ex);
            }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
