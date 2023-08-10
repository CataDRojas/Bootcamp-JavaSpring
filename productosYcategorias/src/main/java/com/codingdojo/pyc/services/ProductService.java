package com.codingdojo.pyc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.pyc.models.Category;
import com.codingdojo.pyc.models.Product;
import com.codingdojo.pyc.repositories.ProductRepository;

@Service
public class ProductService {
	@Autowired
	private final ProductRepository productRepository;

	public ProductService(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}

	public List<Product> findProductsNotInCategoryWithId(Long categoryId) {
        Category category = new Category();
        category.setId(categoryId);
        return productRepository.findByCategoriesNotContaining(category);
    }

	public List<Product> allProduct() {
		return productRepository.findAll();
	}

	public Optional<Product> encontrarProductPorId(Long id) {
		return productRepository.findById(id);
	}
	public Product createProduct(Product b) {
		return productRepository.save(b);
	}
}
