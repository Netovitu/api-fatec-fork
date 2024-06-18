package br.com.api.fatec.apifatec.domain.pedidovenda;

import br.com.api.fatec.apifatec.entities.Cliente;
import br.com.api.fatec.apifatec.entities.PedidoVenda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PedidoVendaRepository extends JpaRepository<PedidoVenda, Long>, JpaSpecificationExecutor<PedidoVenda> {
    @Query("SELECT p.produto.id, SUM(p.valorTotal) FROM PedidoVendaItem p GROUP BY p.produto.id")
    List<Object[]> calcularValorTotalPorProduto();
}
