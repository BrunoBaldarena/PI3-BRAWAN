package br.senac.pi3.brawan.servlet;

import br.senac.pi3.brawan.model.Login;
import br.senac.pi3.brawan.util.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");

            Login login = new Login();
            login.setUsuario(usuario);
            login.setSenha(senha);

            Connection connection = ConnectionFactory.getConnection();

            String SQL = "select usuario, senha from login where usuario= ? and senha = ?";

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setString(1, login.getUsuario());
            ps.setString(2, login.getSenha());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("Menu.html");
            }else{
                JOptionPane.showMessageDialog(null, "Senha ou Usuario invalido!", "Warning",JOptionPane.WARNING_MESSAGE);
                response.sendRedirect("index.html");        
            }
            
             ps.close();
             connection.close();
             
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
}
