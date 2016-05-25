
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
@WebServlet(name = "InventarioSVT", urlPatterns = {"/InventarioSVT"})
public class InventarioSVT extends HttpServlet {
    
    private Conexion cnn;
    private Inventario inventario;
    private CatalogoInventario catalogoInventario;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            cnn = new Conexion();
            inventario = new Inventario();
            catalogoInventario = new CatalogoInventario(cnn);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(InventarioSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        inventario.setProducto(request.getParameter("txtProducto"));
        inventario.setDescripcion(request.getParameter("txtDescripcion"));
        inventario.setCantidad(Integer.parseInt(request.getParameter("intCantidad")));
        
        catalogoInventario.InsertInventario(inventario);
        
        response.sendRedirect("administracion.jsp");
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
