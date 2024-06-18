package br.com.api.fatec.apifatec.domain.pedidovenda.dtos;

import java.math.BigDecimal;

public class ValorTotalPorProdutoDTO {
    private Long produtoId;
    private BigDecimal valorTotal;

    public ValorTotalPorProdutoDTO(Long produtoId, BigDecimal valorTotal) {
        this.produtoId = produtoId;
        this.valorTotal = valorTotal;
    }

    public Long getProdutoId() {
        return produtoId;
    }

    public void setProdutoId(Long produtoId) {
        this.produtoId = produtoId;
    }

    public BigDecimal getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(BigDecimal valorTotal) {
        this.valorTotal = valorTotal;
    }
}

