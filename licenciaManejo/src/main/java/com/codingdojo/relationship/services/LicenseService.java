package com.codingdojo.relationship.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.relationship.models.License;
import com.codingdojo.relationship.repositories.LicenseRepository;

@Service
public class LicenseService {
		private final LicenseRepository licenseRepository;

	public LicenseService(LicenseRepository licenseRepository) {
		this.licenseRepository = licenseRepository;
	}
	
	public List<License> findAll() {
		return licenseRepository.findAll();
	}
	
	public License saveLicense(License license) {
		return licenseRepository.save(license);
	}
	
	public License findLicense(Long id) {
		Optional<License> optionalLicense = licenseRepository.findById(id);
		if(optionalLicense.isPresent()) {
			return optionalLicense.get();
		} else {
			return null;
		}
	}
	
	public License updateLicense(License license) {
		return licenseRepository.save(license);
	}
	
	public void deleteLicense(Long id) {
		licenseRepository.deleteById(id);
	}
}
