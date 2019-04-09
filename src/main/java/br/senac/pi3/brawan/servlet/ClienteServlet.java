package br.senac.pi3.brawan.servlet;

import br.senac.pi3.brawan.DAO.ClienteDAO;
import br.senac.pi3.brawan.model.Cliente;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Guto
 */
@WebServlet("/ClienteServlet")
public class ClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        response.sendRedirect("CadastroCliente.jsp"); 
    }

   

}
