package br.senac.pi3.brawan.model;

public class ItemVenda {

  //  private Produto produto;
    private int quantidade;
    private float valorTotalItem;
   // private float total;

   

    public float getValorTotalItem() {
        return valorTotalItem;
    }

    public void setValorTotalItem(float valorTotalItem) {
        this.valorTotalItem = valorTotalItem;
    }

    // private int codigoVenda;
    private String codigoProd;

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getCodigoProd() {
        return codigoProd;
    }

    public void setCodigoProd(String codigoProd) {
        this.codigoProd = codigoProd;
    }

  

}
