package br.senac.pi3.brawan.controller;

import br.senac.pi3.brawan.model.Funcionario;
import br.senac.pi3.brawan.utils.ConnectionUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            PrintWriter out = response.getWriter();

            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");

            Funcionario login = new Funcionario();
            login.setLogin(usuario);
            login.setSenha(senha);

            Connection connection = ConnectionUtils.getConnection();

            String SQL = "select usuario, senha from login where usuario= ? and senha = ?";

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setString(1, login.getLogin());
            ps.setString(2, login.getSenha());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                request.getRequestDispatcher("./jsp/home.jsp")
                        .forward(request, response);

            } else {

                request.setAttribute("msgError", "Usuário ou Senha inválido!");
                request.getRequestDispatcher("./login.jsp")
                        .forward(request, response);
            }

            ps.close();
            connection.close();

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
}
