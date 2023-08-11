package com.codingdojo.doverflow.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.doverflow.models.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long>{
	
	List<Question> findAll();
	

}
