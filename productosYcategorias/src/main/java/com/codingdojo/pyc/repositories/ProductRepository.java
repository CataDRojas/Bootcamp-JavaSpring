package com.codingdojo.pyc.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.pyc.models.Category;
import com.codingdojo.pyc.models.Product;

public interface ProductRepository extends CrudRepository<Product, Long>{
	List<Product> findAll();
    Optional<Product> findById(Long id);

    List<Product> findByCategoriesNotContaining(Category category);
    

}
