package com.example.Login.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static java.sql.DriverManager.getConnection;

public class Conexion {

    private static final String JDBC_URL = "jdbc:postgresql://ec2-54-225-228-142.compute-1.amazonaws.com/d2msocqphhrqse?serverTimezone=UTC";
    private static final String JDBC_USER = "iunndumtnemsnk";
    private static final String JDBC_PASSWORD = "0fdf8f05e2fbc3e660895306dd9c66ae0fa1bbb01aeaa4051ed1303f9051b408";

    public static Connection getconnection() throws SQLException, ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        return getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

    public static void close(PreparedStatement preparedstatement) throws SQLException {
        preparedstatement.close();
    }

    public static void close(ResultSet resultSet) throws SQLException {
        resultSet.close();
    }

    public static void close(Connection connection) throws SQLException {
        connection.close();
    }

}
