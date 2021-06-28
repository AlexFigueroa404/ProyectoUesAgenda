package com.example.Login.DAO;

import com.example.Login.Entidad.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO extends Conexion {
    Connection connection = null;
    PreparedStatement pstm = null;
    ResultSet resultSet = null;

    Usuario usuarioDB = null;

    public Usuario selectAllData(Usuario usuario) throws Exception {

        try {

            Usuario usuarioDB;
            connection = Conexion.getconnection();
            String Query = "SELECT * FROM public.usuarios where nombre_usuario=? and contra=?";
            pstm = connection.prepareStatement(Query);
            pstm.setString(1, usuario.getNombreUsuario());
            pstm.setString(2, usuario.getContra());
            resultSet = pstm.executeQuery();

            if (resultSet.next()) {
                int idUsuario = resultSet.getInt("id_usuario");
                String nombre = resultSet.getString("nombre");
                String apellido = resultSet.getString("apellido");
                String direccion = resultSet.getString("direccion");
                String telefono = resultSet.getString("telefono");

                usuarioDB = new Usuario();
                usuarioDB.setNombre(nombre);
                usuarioDB.setIdUsuario(idUsuario);
                usuarioDB.setApellido(apellido);
                usuarioDB.setNombreUsuario(usuario.getNombreUsuario());
                usuarioDB.setDireccion(direccion);
                usuarioDB.setTelefono(telefono);


            }


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (resultSet != null) {
                Conexion.close(resultSet);
            } else if (pstm != null) {
                Conexion.close(pstm);
            } else if (connection != null) {
                Conexion.close(connection);
            }
        }

        return usuarioDB;
    }

}
