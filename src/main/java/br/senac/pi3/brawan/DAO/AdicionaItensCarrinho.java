/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.model.ItemVenda;
import java.util.ArrayList;

/**
 *
 * @author Guto
 */
public class AdicionaItensCarrinho {
    
    public ArrayList AdicionaItensCarrinho(ItemVenda dado, ArrayList lista) {
		// TODO Auto-generated constructor stub
		
		if (lista == null){
			
			lista = new ArrayList();
		}
		
		lista.add(dado.getCodigoProd());
                lista.add(dado.getQuantidade());
		
		return lista;
	}
    
}
