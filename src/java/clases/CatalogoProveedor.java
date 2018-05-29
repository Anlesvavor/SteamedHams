
package clases;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoProveedor {
    private Conexion cnn;
    private Proveedor proveedor;
    
    public CatalogoProveedor(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void insertarProveedor(Proveedor proveedor){
        try {
            this.proveedor = proveedor;
            
            cnn.ejecutarSQL("insert into proveedores values("+
                    "null" + "," +
                    "'" + proveedor.getNombre() + "'" + "," +
                    "'" + proveedor.getProducto() + "'" + "," +
                    proveedor.getCantidad() + ")"
            );
        } catch (SQLException ex) {
            Logger.getLogger(CatalogoProveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
