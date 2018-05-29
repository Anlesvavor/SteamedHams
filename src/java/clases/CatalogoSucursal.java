package clases;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoSucursal {
    private Conexion cnn;
    private Sucursal sucursal;
    
    public CatalogoSucursal(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void insertSucursal(Sucursal sucursal){
        try {
            this.sucursal= sucursal;
            
            cnn.ejecutarSQL("insert into sucursales values("
                    + "null" + ","
                    + "'" + sucursal.getNombre() + "'" + ","
                    + "'" + sucursal.getDireccion() + "'" + ","
                    + "'" + sucursal.getTelefono() + "'" + ","
                    + sucursal.getIdGerente() + ")"
            );
            
        } catch (SQLException ex) {
            Logger.getLogger(CatalogoSucursal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
