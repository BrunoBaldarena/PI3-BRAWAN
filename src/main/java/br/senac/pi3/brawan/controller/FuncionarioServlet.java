package br.senac.pi3.brawan.controller;

import br.senac.pi3.brawan.DAO.EmpresaDAO;
import br.senac.pi3.brawan.model.Empresa;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Guto
 */
@WebServlet(name = "FuncionarioServlet", urlPatterns = {"/Funcionario"})
public class FuncionarioServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String pagina = request.getRequestURI();

        try {
            if (pagina.endsWith("Funcionario")) {
                funcionarioCadastro(request, response);
            }
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage());
        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
    
     protected void funcionarioCadastro(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        EmpresaDAO dao = new EmpresaDAO();

        ArrayList<Empresa> emp = dao.listarTudo();

        RequestDispatcher rd = request.getRequestDispatcher("./jsp/funcionario/cadastroFuncionario.jsp");
        request.setAttribute("empresa", emp);
        rd.forward(request, response);

    }

    

}
