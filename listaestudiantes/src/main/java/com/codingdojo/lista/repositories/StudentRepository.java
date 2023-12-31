package com.codingdojo.lista.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.lista.models.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student,Long>{
	

	List<Student> findAll();
	

	Optional<Student> findStudentById(Long id);
	
	//GET NULL CONTACT; 
	List<Student> findByContactIsNull();


}
