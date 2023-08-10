package com.codingdojo.pyc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.pyc.models.CategoryProduct;
import com.codingdojo.pyc.repositories.CategoryProductRepository;

@Service
public class CategoryProductService {
	@Autowired
	private final CategoryProductRepository categoryProductRepository;
	public CategoryProductService(CategoryProductRepository categoryProductRepository) {
		this.categoryProductRepository = categoryProductRepository;
	}

	public List<CategoryProduct> allCategoryProduct() {
		return categoryProductRepository.findAll();
	}

	public CategoryProduct createCategoryProduct(CategoryProduct b) {
		return categoryProductRepository.save(b);
	}
	
	public void deleteCategoryProduct(Long id) {
		categoryProductRepository.deleteById(id);
	}
}
