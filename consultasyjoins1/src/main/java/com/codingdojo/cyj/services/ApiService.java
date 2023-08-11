package com.codingdojo.cyj.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.cyj.repositories.CityRepository;
import com.codingdojo.cyj.repositories.CountryRepository;
import com.codingdojo.cyj.repositories.LanguageRepository;

@Service
public class ApiService {
	@Autowired
	private final CountryRepository countryRepository;

	@Autowired
	private final LanguageRepository languageRepository;
	
	@Autowired
	private final CityRepository cityRepository;
	
	public ApiService(CountryRepository countryRepository,LanguageRepository languageRepository, CityRepository cityRepository) {
		this.countryRepository = countryRepository;
		this.languageRepository = languageRepository;
		this.cityRepository = cityRepository;
	}
	
	
	public List<Object[]> obtenerEsloveno() {
		return countryRepository.obtenerEsloveno();
	}
	public List<Object[]> obtenerCiudadPorPais(){
		return countryRepository.obtenerCiudadPorPais();
	}
	public List<Object[]> obtenerCiudades(){
		return countryRepository.obtenerCiudades();
	}
	public List<Object[]> obtenerPaises89(){
		return languageRepository.ObtenerPaises89();
	}
	public List<Object[]> obtenerTamano(){
		return countryRepository.obtenerTamano();
	}
	public List<Object[]> obtenerMonarquia(){
		return countryRepository.obtenerMonarquia();
	}
	public List<Object[]> obtenerCitiesArg(){
		return cityRepository.obtenerCitiesArg();
	}
	public List<Object[]> obtenerCantPorRegion(){
		return countryRepository.obtenerCantPorRegion();
	}
	




}
