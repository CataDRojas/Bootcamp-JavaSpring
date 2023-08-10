package com.codingdojo.relationship.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.relationship.models.License;

@Repository
public interface LicenseRepository extends CrudRepository<License, Long>{
    //Este método recupera todas las preguntas de la base de datos
    List<License> findAll();
}
