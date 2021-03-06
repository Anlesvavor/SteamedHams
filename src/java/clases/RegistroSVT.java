/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
@WebServlet(name = "RegistroSVT", urlPatterns = {"/RegistroSVT"})
public class RegistroSVT extends HttpServlet {
    
    
    private CatalogoCliente catalogoCliente;
    private Conexion cnn;
    private Cliente cliente;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistroSVT</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistroSVT at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            cnn = new Conexion();
            cliente = new Cliente();
            //processRequest(request, response);
            cliente.setUsuario(request.getParameter("txtUsuario"));
            cliente.setContrasena(request.getParameter("txtContrasena"));
            cliente.setNombre(request.getParameter("txtNombre"));
            cliente.setaPaterno(request.getParameter("txtAPaterno"));
            cliente.setaMaterno(request.getParameter("txtAMaterno"));
            cliente.setCalle(request.getParameter("txtCalle"));
            cliente.setNumeroCasa(request.getParameter("txtNumeroCasa"));
            cliente.setColonia(request.getParameter("txtColonia"));
            cliente.setCodigoPostal(request.getParameter("txtCodigoPostal"));
            cliente.setCelular(request.getParameter("txtCelular"));
            
            
            catalogoCliente = new CatalogoCliente(cnn);
            
            catalogoCliente.insertCliente(cliente);
            
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(RegistroSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        response.sendRedirect("primerpagina.jsp");
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
