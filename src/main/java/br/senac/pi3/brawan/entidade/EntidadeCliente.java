/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.pi3.brawan.entidade;

import br.senac.pi3.brawan.model.Cliente;
import java.util.List;


/**
 *
 * @author Guto
 */
public interface EntidadeCliente {
    public void inserir(Cliente cliente);
    public void remove(int id);
    public List<Cliente> listar();
    public Cliente buscar(int id);
    public void Editar(Cliente cliente);
}