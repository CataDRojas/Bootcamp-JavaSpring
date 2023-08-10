package com.codingdojo.pyc.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.pyc.models.Category;
import com.codingdojo.pyc.models.CategoryProduct;
import com.codingdojo.pyc.models.Product;
import com.codingdojo.pyc.services.CategoryProductService;
import com.codingdojo.pyc.services.CategoryService;
import com.codingdojo.pyc.services.ProductService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/categories")
public class CategoriesController {
	
	private final CategoryService categoryService;
	
	private final ProductService productService;
	private final CategoryProductService categoryProductServices; 
	
	public CategoriesController(CategoryService categoryService, CategoryProductService categoryProductServices, ProductService productService ) {
		this.categoryService= categoryService;
		this.categoryProductServices= categoryProductServices;
		this.productService= productService;
	}
	
	@GetMapping("/new")
	public String categoriesNew(Model model,@ModelAttribute("Category") Category category ) {
		model.addAttribute("category", category);
		return "newCategory.jsp";
	}
	
	@PostMapping("/new")
	public String categoriesForm(@Valid @ModelAttribute("category") Category category, BindingResult result) {
		if(!result.hasErrors()) {
			categoryService.createCategory(category);
			return "newCategory.jsp";
		}else {

			return "redirect:/categories/new";
		}
	}
	
	@GetMapping("/{id}")
	public String showCategory(@ModelAttribute("category_product") CategoryProduct categoryproduct, @PathVariable("id") Long id, Model model) {
		Optional<Category> optionalCategory = categoryService.findById(id);
	    if (optionalCategory.isPresent()) {
	        Category category = optionalCategory.get();
	        List<Product> products = productService.findProductsNotInCategoryWithId(category.getId());
	        model.addAttribute("categories", category);
	        model.addAttribute("products", products);
	        return "categoryPage.jsp";
	    }
	    else {
	    	return "categoryPage.jsp";
	    }
	}
	
	@PostMapping("/{id1}")
	public String categoriesShow(@ModelAttribute("category_product") CategoryProduct categoryproduct, @PathVariable("id1") Long id, BindingResult result) {
		if (!result.hasErrors()) {
			categoryProductServices.createCategoryProduct(categoryproduct);
			return "redirect:/categories/" + id;
		} else {
			return "redirect:/categories/" + id;
		}
	}
}
