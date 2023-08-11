package com.codingdojo.cyj.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cyj.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long> {
	@Query("Select c, l From Country c JOIN c.languages l where l.percentage > 89 order by l.percentage DESC")
	List<Object[]> ObtenerPaises89();
}