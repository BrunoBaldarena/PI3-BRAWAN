package br.senac.pi3.brawan.connection;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
Abrir conexão com banco de dados MySQL

 */
public class Conexao {
    
    public Statement stm;// Responsavel por preparar e realizar pesquisas no banco de dados
    public ResultSet rs;// Responsavel por armazenar o resultado de uma pesquisa para o Statement
    private static final String URL_MYSQL = "jdbc:mysql://localhost/alterar";// Responsavel por identificar o servico do banco de dados
    private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";	
    private static final String USER = "root";
    private static final String PASS = "";
    public Connection conn;// Responsavel por realizar a conexao com o banco de dados
    
	public static Connection getConnection() {
		try {
			Class.forName(DRIVER_CLASS);
			return DriverManager.getConnection(URL_MYSQL, USER, PASS);
		} catch (ClassNotFoundException e) {
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return null;
	}

        public static void closeConnection(Connection con) {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void closeConnection(Connection con, PreparedStatement stmt) {

        closeConnection(con);

        try {

            if (stmt != null) {
                stmt.close();
            }

        } catch (SQLException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void closeConnection(Connection con, PreparedStatement stmt, ResultSet rs) {

        closeConnection(con, stmt);

        try {

            if (rs != null) {
                rs.close();
            }

        } catch (SQLException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}