package com.codingdojo.doverflow.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.doverflow.models.Answer;
import com.codingdojo.doverflow.models.Question;
import com.codingdojo.doverflow.repositories.AnswerRepository;

@Service
public class AnswerService {
	private final AnswerRepository answerRepository;
	
	public AnswerService(AnswerRepository answerRepository) {
		this.answerRepository = answerRepository;	
	}
	
	public List<Answer> findAll(){ //GET ALL ANSWERS IN DBA
		return answerRepository.findAll();
	}
	
	public List<Answer> findAnswerByQuestionId(Long questionId) {
	    return answerRepository.findByQuestionId(questionId);
	}
	
	public Answer createAnswer(Answer answer) {
		return answerRepository.save(answer);
	}
	
	public Answer updateAnswer(Answer answer) {
		return answerRepository.save(answer);
	}
	
	public void deleteAnswer(Long id) {
		answerRepository.deleteById(id);
	}

	public List<Answer> findAnswerByQuestionId(Question question) {
		return answerRepository.findAnswerByQuestionId(question.getId());
	}
	
}
