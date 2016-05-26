
package clases;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoOrden {
    
    private Conexion cnn;
    private Orden orden;
    
    public CatalogoOrden(Conexion cnn){
        this.cnn= cnn;
    }
    
    public void insertarOrden(Orden orden){
        try {
            this.orden = orden;
            
            cnn.ejecutarSQL("insert into ordenes values("
                    + "null" + ","
                    + orden.getIdCliente() + ","
                    + orden.getIdPlatillo() + ","
                    + orden.getCantidad() + ")"
            );
        } catch (SQLException ex) {
            Logger.getLogger(CatalogoOrden.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
