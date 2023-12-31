package com.codingdojo.pyc.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.pyc.models.Category;
import com.codingdojo.pyc.models.Product;

public interface CategoryRepository extends CrudRepository<Category, Long>{
		List<Category> findAll();
		List<Category> findByProductsNotContains(Product product);	
		Optional<Category> findById(Long id);

}
