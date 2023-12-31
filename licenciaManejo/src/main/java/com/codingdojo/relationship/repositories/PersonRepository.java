package com.codingdojo.relationship.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.relationship.models.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long>{
    //Este método recupera todas las preguntas de la base de datos
    List<Person> findAll();
    
    List<Person> findByLicenseIsNull();
}
