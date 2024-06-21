package br.com.api.fatec.apifatec.controllers;

import br.com.api.fatec.apifatec.domain.fornecedor.FornecedorService;
import br.com.api.fatec.apifatec.entities.Fornecedor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
@RequestMapping("/api/fornecedor/")
public class FornecedorController {
    @Autowired
    private FornecedorService fornecedorService;

    @GetMapping
    public ResponseEntity<List<Fornecedor>> listarFornecedores() {
        List<Fornecedor> fornecedores = fornecedorService.listarFornecedores();
        return new ResponseEntity<>(fornecedores, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Fornecedor> encontrarFornecedorPorId(@PathVariable Long id) {
        Fornecedor fornecedor = fornecedorService.encontrarFornecedorPorId(id);
        return fornecedor != null ? new ResponseEntity<>(fornecedor, HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @PostMapping()
    public ResponseEntity<Fornecedor> salvarFornecedor(@RequestBody Fornecedor fornecedor) {
        Fornecedor fornecedorSalvo = fornecedorService.salvarFornecedor(fornecedor);
        return new ResponseEntity<>(fornecedorSalvo, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletarFornecedor(@PathVariable Long id) {
        fornecedorService.deletarFornecedor(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Fornecedor> AtualizarFornecedor(@PathVariable Long id, @RequestBody Fornecedor fornecedor) {
        Fornecedor fornecedorAtualizado = fornecedorService.atualizarFornecedor(id, fornecedor);
        return new ResponseEntity<>(fornecedorAtualizado, HttpStatus.OK);
    }
}
