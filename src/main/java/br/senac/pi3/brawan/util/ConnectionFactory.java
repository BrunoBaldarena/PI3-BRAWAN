package br.senac.pi3.brawan.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
Abrir conexão com banco de dados MySQL

 */
public class ConnectionFactory {

    public static Connection getConnection() {
        try {
            Class.forName("jdbc:mysql://localhost/brawan");
            return DriverManager.getConnection("com.mysql.jdbc.Driver", "root", "");
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }

}
