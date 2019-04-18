package br.senac.pi3.brawan.controller;

import br.senac.pi3.brawan.DAO.ClienteDAO;
import br.senac.pi3.brawan.model.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ClienteServlet", urlPatterns = {"/CadastrarCliente", "/ConsultarCliente", "/ConsultarClienteID"})
public class ClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String pagina = request.getRequestURI();

        try {
            if (pagina.endsWith("ConsultarCliente")) {
                clienteConsultar(request, response);
            } else if (pagina.endsWith("ConsultarClienteID")) {
                clienteConsultarId(request, response);
            }
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String pagina = request.getRequestURI();

        try {
            if (pagina.endsWith("CadastrarCliente")) {
                clienteSalvar(request, response);
            }
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage());
        }
    }

    protected void clienteSalvar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        //Pega os dados do parametros
        String nome = request.getParameter("nomeCliente");
        String rg = request.getParameter("rgCliente");
        String cpf = request.getParameter("cpfCliente");
        String sexo = request.getParameter("sexoCliente");
        String telefone = request.getParameter("telefoneCliente");
        String email = request.getParameter("emailCliente");
        String endereco = request.getParameter("enderecoCliente");
        String bairro = request.getParameter("bairroCliente");
        String cidade = request.getParameter("cidadeCliente");
        String estado = request.getParameter("idEstadoCliente");
        String cep = request.getParameter("cepCliente");

        //Monta o OBEJTO
        Cliente cliente = new Cliente();

        cliente.setNome(nome);
        cliente.setRg(rg);
        cliente.setCpf(cpf);
        cliente.setSexo(sexo);
        cliente.setTelefone(telefone);
        cliente.setEmail(email);
        cliente.setEndereco(endereco);
        cliente.setBairro(bairro);
        cliente.setCidade(cidade);
        cliente.setUf(estado);
        cliente.setCep(cep);

        ClienteDAO dao = new ClienteDAO();
        dao.inserir(cliente);
        response.sendRedirect("./jsp/cadastroCliente.jsp");
    }

    protected void clienteConsultar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        ClienteDAO dao = new ClienteDAO();

        ArrayList<Cliente> cli = dao.listarTudo();

        RequestDispatcher rd = request.getRequestDispatcher("./jsp/consultarCliente.jsp");
        request.setAttribute("cliente", cli);
        rd.forward(request, response);

    }

    protected void clienteConsultarId(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        String req = request.getParameter("Codbusca");

        int id = Integer.parseInt(req);
        


        ClienteDAO dao = new ClienteDAO();

        ArrayList<Cliente> cli = dao.listarID(id);

        RequestDispatcher rd = request.getRequestDispatcher("./jsp/consultarClienteID.jsp");
        request.setAttribute("cliente", cli);
        rd.forward(request, response);
    }
}
