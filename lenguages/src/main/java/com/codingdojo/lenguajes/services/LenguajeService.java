package com.codingdojo.lenguajes.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lenguajes.models.Lenguaje;
import com.codingdojo.lenguajes.repositories.LenguajeRepository;

@Service
public class LenguajeService {

	private final LenguajeRepository lenguajeRepository;

	public LenguajeService(LenguajeRepository lenguajeRepository) {
		this.lenguajeRepository = lenguajeRepository;
	}

	public List<Lenguaje> allLenguajes() {
		return lenguajeRepository.findAll();
	}

	public Lenguaje createLenguaje(Lenguaje b) {
		return lenguajeRepository.save(b);
	}

	public Lenguaje findLenguaje(Long id) {
		Optional<Lenguaje> optionalLenguaje = lenguajeRepository.findById(id);
		if (optionalLenguaje.isPresent()) {
			return optionalLenguaje.get();
		} else {
			return null;
		}
	}

	public Lenguaje updateLenguaje(Lenguaje Lenguajes) {
		return lenguajeRepository.save(Lenguajes);
	}

	public void deleteLenguaje(Long id) {
		lenguajeRepository.deleteById(id);

	}

}
