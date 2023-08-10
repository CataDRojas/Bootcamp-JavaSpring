package com.codingdojo.pyc.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.pyc.models.CategoryProduct;

public interface CategoryProductRepository extends CrudRepository<CategoryProduct, Long> {
	List<CategoryProduct> findAll();
	Integer countBy();
	Optional<CategoryProduct> findById(Long id);

}
