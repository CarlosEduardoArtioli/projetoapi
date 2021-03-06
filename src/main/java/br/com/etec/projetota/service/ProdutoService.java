package br.com.etec.projetota.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.etec.projetota.model.Produto;
import br.com.etec.projetota.repository.ProdutoRepository;
import br.com.etec.projetota.service.exceptions.ObjectNotFoundException;

@Service
public class ProdutoService {

	@Autowired
	private ProdutoRepository produtoRepository;

	public List<Produto> listarProdutos() {
		return produtoRepository.findAll();
	}

	public List<Produto> localizarProdutoNome(String nome) {
		return produtoRepository.porNome(nome);
	}

	public Page<Produto> pesquisar(String nome, Pageable pageable) {
		return produtoRepository.findByNomeContainingOrderByNome(nome, pageable);
	}

	public Produto find(Integer id) {
		Optional<Produto> produto = produtoRepository.findById(id);
		return produto.orElseThrow(() -> new ObjectNotFoundException(
				"Produto não encontrada! Id: " + id + " Tipo: " + Produto.class.getName()));
	}

	public Produto insert(Produto produto) {
		return produtoRepository.save(produto);
	}

	public Produto update(int id, Produto produto) {
		Produto clienteSalvo = find(id);
		BeanUtils.copyProperties(produto, clienteSalvo, "id");
		return produtoRepository.save(produto);
	}

	public void delete(Integer id) {
		find(id);
		produtoRepository.deleteById(id);
	}
}