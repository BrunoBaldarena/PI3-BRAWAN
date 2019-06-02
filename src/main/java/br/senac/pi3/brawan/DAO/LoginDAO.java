package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.model.Funcionario;
import br.senac.pi3.brawan.utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    
    public boolean login(Funcionario funcionario) {
                                    
        try {
            Connection connection = ConnectionUtils.getConnection();
            
            String SQL = "select login, senha from funcionario where login= ? and senha = ?";
            PreparedStatement ps = connection.prepareStatement(SQL);
            
            ps.setString(1, funcionario.getLogin());
            ps.setString(2, funcionario.getSenha());
            
            ResultSet rs = ps.executeQuery();
            
            ps.close();
            connection.close();
            return true; 
            
        } catch (SQLException ex) {
           return false;
           
        }
        
    }
    
    
}
