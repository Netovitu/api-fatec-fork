package br.com.api.fatec.apifatec.domain.fornecedor;
import br.com.api.fatec.apifatec.entities.Fornecedor;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class FornecedorService {
    @Autowired
    private FornecedorRepository fornecedorRepository;

    public List<Fornecedor> listarFornecedores() {
        return fornecedorRepository.findAll();
    }

    public Fornecedor encontrarFornecedorPorId(Long id) {
        return fornecedorRepository.findById(id).orElse(null);
    }

    public Fornecedor salvarFornecedor(Fornecedor Fornecedor) {
        return fornecedorRepository.save(Fornecedor);
    }

    public void deletarFornecedor(Long id) {
        Fornecedor Fornecedor = encontrarFornecedorPorId(id);

        if(Fornecedor == null)
            throw new IllegalArgumentException("Fornecedor não encontrado.");


        fornecedorRepository.deleteById(id);
    }

    public Fornecedor atualizarFornecedor(Long id, Fornecedor fornecedor) {
        Fornecedor FornecedorCadastrado = encontrarFornecedorPorId(id);

        if (FornecedorCadastrado == null)
        {
            return null;
        } else {
            FornecedorCadastrado.setNome(fornecedor.getNome());
            FornecedorCadastrado.setContato(fornecedor.getContato());
            return fornecedorRepository.save(FornecedorCadastrado);
        }
    }
}
