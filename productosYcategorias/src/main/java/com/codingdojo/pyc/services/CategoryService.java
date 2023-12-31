package com.codingdojo.pyc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.pyc.models.Category;
import com.codingdojo.pyc.models.Product;
import com.codingdojo.pyc.repositories.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private final CategoryRepository categoryRepository;
	public CategoryService(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}
	public List<Category> allCategories() {
		return categoryRepository.findAll();
	}
	public List<Category> nullCategory(Product product) {
		return categoryRepository.findByProductsNotContains(product);
	}
	public Optional<Category> findById(Long id) {
		return categoryRepository.findById(id);
	}
	
	public Category createCategory(Category b) {
		return categoryRepository.save(b);
	}
	public void deleteCategory(Long id) {
		categoryRepository.deleteById(id);
	}
}