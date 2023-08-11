package com.codingdojo.doverflow.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.doverflow.models.Answer;

@Repository
public interface AnswerRepository extends JpaRepository<Answer, Long>{
	
	List<Answer> findAll();	

	List<Answer> findByQuestionId(Long questionId);

	List<Answer> findAnswerByQuestionId(Long id);


}
