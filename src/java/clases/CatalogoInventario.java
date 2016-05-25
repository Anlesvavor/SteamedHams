
package clases;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoInventario {
    
    private Conexion cnn;
    private Inventario inventario;
    
    public CatalogoInventario(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void InsertInventario(Inventario inventario){
        try {
            this.inventario = inventario;
            
            cnn.ejecutarSQL("insert into inventario values("
                    + "null" + ","
                    + "'" + inventario.getProducto() + "'" + ","
                    + "'" + inventario.getDescripcion() + "'" + ","
                    + inventario.getCantidad() + ")"
            );
        } catch (SQLException ex) {
            Logger.getLogger(CatalogoInventario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
