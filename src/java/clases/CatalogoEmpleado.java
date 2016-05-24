
package clases;

import java.sql.SQLException;

/**
 *
 * @author LeJesusjar
 */
public class CatalogoEmpleado {
    private Conexion cnn;
    private Empleado empleado;
    
    public CatalogoEmpleado(Conexion cnn){
        this.cnn = cnn;
    }

    
    public void insertEmpleado(Empleado empleado) throws SQLException{
        this.empleado = empleado;
        
        cnn.ejecutarSQL("Insert into empleados values("
                + "null" + ","
                + "'" + empleado.getNombre() + "'" + ","
                + "'" + empleado.getTelefono() + "'" + ","
                + "'" + empleado.getPuesto() + "'" + ","
                + empleado.getSueldoBase() + ","
                + empleado.getBonos() + ","
                + empleado.getPermiso() + ","
                + empleado.getIdSucursal() + ")"
        );
    }
    
}
