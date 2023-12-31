package com.codingdojo.doverflow.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.doverflow.models.Tag;

@Repository
public interface TagRepository extends JpaRepository<Tag, Long>{

	List<Tag> findAll();

    Tag findBySubject(String subject);
}
