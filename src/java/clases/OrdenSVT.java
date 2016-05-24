package clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author LeJesusjar
 */
@WebServlet(name = "OrdenSVT", urlPatterns = {"/OrdenSVT"})
public class OrdenSVT extends HttpServlet {

    private Conexion cnn;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrdenSVT</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrdenSVT at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //processRequest(request, response);
            //JOptionPane.showMessageDialog(null, txtPlatillo);
            cnn = new Conexion();
            
            String idPlatillo = request.getParameter("txtPlatillo");
            String intCantidad = request.getParameter("intCantidad");
            
            cnn.ejecutarSQL("insert into ordenes values(" +
                    "4" + "," +
                    "4" + "," +
                    idPlatillo + "," +
                    intCantidad + ")"        
            );
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrdenSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         response.sendRedirect("primerpagina.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
