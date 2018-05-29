package clases;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoPlatillo {
    
    private Conexion cnn;
    private Platillo platillo;
    
    public CatalogoPlatillo(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void InsertPlatillo(Platillo platillo){
        try {
            this.platillo = platillo;

            cnn.ejecutarSQL("insert into platillos values("
                    + "null" + ","
                    + "'" + platillo.getTipo() + "'" + ","
                    + "'" + platillo.getNomPlato() + "'" + ","
                    + "'" + platillo.getDescripcion() + "'" + ","
                    + platillo.getPrecio() + ")"
                    );
        } catch (SQLException ex) {
            Logger.getLogger(CatalogoPlatillo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
