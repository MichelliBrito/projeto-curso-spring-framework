package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

public class CarrinhoItem {

    private TipoPreco tipoPreco;
    private Produtos produtos;

    public CarrinhoItem(Produtos produtos, TipoPreco tipoPreco) {
        this.produtos = produtos;
        this.tipoPreco = tipoPreco;
    }

    public TipoPreco getTipoPreco() {
        return tipoPreco;
    }

    public void setTipoPreco(TipoPreco tipoPreco) {
        this.tipoPreco = tipoPreco;
    }

    public Produtos getProdutos() {
        return produtos;
    }

    public void setProdutos(Produtos produtos) {
        this.produtos = produtos;
    }
    
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((produtos == null) ? 0 : produtos.hashCode());
        result = prime * result + ((tipoPreco == null) ? 0 : tipoPreco.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        CarrinhoItem other = (CarrinhoItem) obj;
        if (produtos == null) {
            if (other.produtos != null)
                return false;
        } else if (!produtos.equals(other.produtos))
            return false;
        if (tipoPreco != other.tipoPreco)
            return false;
        return true;
    }
    public BigDecimal getPreco(){
        return produtos.precoPara(tipoPreco);
    }
    public BigDecimal getTotal(int quantidade) {
        return this.getPreco().multiply(new BigDecimal(quantidade));
    }
}