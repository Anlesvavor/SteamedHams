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
@WebServlet(name = "ProveedoresSVT", urlPatterns = {"/ProveedoresSVT"})

public class ProveedoresSVT extends HttpServlet {

    private Conexion cnn;
    private Proveedor proveedor;
    private CatalogoProveedor catalogoProveedor;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //processRequest(request, response);
            cnn = new Conexion();
            proveedor = new Proveedor();
            
            
            proveedor.setNombre(request.getParameter("txtNombre"));
            proveedor.setCantidad(Integer.parseInt(request.getParameter("txtCantidad")));
            proveedor.setProducto(request.getParameter("txtProducto"));
            
            catalogoProveedor = new CatalogoProveedor(cnn);
            catalogoProveedor.insertarProveedor(proveedor);
            
            response.sendRedirect("administracion.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProveedoresSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProveedoresSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    
    
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
