
package clases;

import java.sql.SQLException;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoCliente {
    private Conexion cnn;
    private Cliente cliente;
    
    public CatalogoCliente(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void insertCliente(Cliente cliente) throws SQLException {
        this.cliente = cliente;
        
        cnn.ejecutarSQL(
                "insert into clientes values("
                +"null" + ","
                + "'" + cliente.getNombre() + "',"
                + "'" + cliente.getaPaterno() + "',"
                + "'" + cliente.getaMaterno() + "',"
                + "'" + cliente.getCalle() + "',"
                + "'" + cliente.getNumeroCasa() + "',"
                + "'" + cliente.getColonia() + "',"
                + "'" + cliente.getCodigoPostal() + "',"
                + "'" + cliente.getCelular() + "'"
                + ")"
        );
    }
}
