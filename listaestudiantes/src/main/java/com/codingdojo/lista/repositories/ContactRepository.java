package com.codingdojo.lista.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.lista.models.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long>{

	List<Contact> findAll();

}
