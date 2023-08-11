package com.codingdojo.cyj.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cyj.models.Country;

@Repository
public interface CountryRepository extends CrudRepository<Country, Long> {

	@Query("SELECT c,l FROM Country c JOIN c.languages l WHERE l.language = 'Slovene' order by l.percentage desc")
	List<Object[]> obtenerEsloveno();
	
	@Query("SELECT co.name, count(ci.id) total_ciudades FROM Country co JOIN co.cities ci \n"
			+ "GROUP BY co.name ORDER BY total_ciudades DESC")
	List<Object[]> obtenerCiudadPorPais();
	
	@Query("SELECT c, ci "+
		       "FROM Country c " +
		       "JOIN c.cities ci " +
		       "WHERE c.name = 'Mexico' AND ci.population > 500000 " +
		       "ORDER BY ci.population DESC")
	List<Object[]> obtenerCiudades();
		
	@Query("Select c from Country c WHERE c.surface_area < 501 AND c.population > 100000")
	List<Object[]> obtenerTamano();
	
	@Query("SELECT c.name, " +
		       "CASE WHEN c.government_form = 'Constitutional Monarchy' THEN 'Tiene Monarquía' ELSE c.government_form END, " +
		       "c.surface_area, "+
		       "c.life_expectancy "+
		       "FROM Country c " +
		       "WHERE c.government_form = 'Constitutional Monarchy' AND c.surface_area > 200 AND c.life_expectancy > 75")
	List<Object[]>obtenerMonarquia();

	@Query("SELECT c.continent, count(c) FROM Country c GROUP BY c.continent ORDER BY count(c) DESC")
	List<Object[]>obtenerCantPorRegion();
	
	

}