
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
@WebServlet(name = "PlatilloSVT", urlPatterns = {"/PlatilloSVT"})
public class PlatilloSVT extends HttpServlet {
    
    private Conexion cnn;
    private Platillo platillo;
    private CatalogoPlatillo catalogoPlatillo;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            cnn = new Conexion();
            platillo = new Platillo();
            
            platillo.setTipo(request.getParameter("txtTipo"));
            platillo.setNomPlato(request.getParameter("txtNomPlato"));
            platillo.setDescripcion(request.getParameter("txtDescripcion"));
            platillo.setPrecio(Float.parseFloat(request.getParameter("intPrecio")));
            
            catalogoPlatillo = new CatalogoPlatillo(cnn);
            
            catalogoPlatillo.InsertPlatillo(platillo);
            
            response.sendRedirect("administracion.jsp");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PlatilloSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
