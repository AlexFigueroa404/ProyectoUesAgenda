package com.example.Login.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginDAO extends Conexion {
    boolean existe = false;
    String nombreUsuarioDB;
    String contraDB;
    Connection connection = null;
    PreparedStatement pstm = null;
    ResultSet resultSet = null;

    public boolean validar(String nombre, String contra) throws Exception {


        try {
            connection = Conexion.getconnection();

            String Query = "SELECT * FROM public.usuarios where nombre_usuario=? and contra=?";

            pstm = connection.prepareStatement(Query);
            pstm.setString(1, nombre);
            pstm.setString(2, contra);
            resultSet = pstm.executeQuery();

            while (resultSet.next()) {
                nombreUsuarioDB = resultSet.getString("nombre_usuario");
                contraDB = resultSet.getString("contra");

                if (nombre.equals(nombreUsuarioDB) && contra.equals(contraDB)) {
                    existe = true;
                }
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


        return existe;
    }

}
