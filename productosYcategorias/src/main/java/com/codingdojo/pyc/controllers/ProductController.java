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
@RequestMapping("/products")
public class ProductController {

	private final ProductService productService;
	
	private final CategoryService categoryService;
	private final CategoryProductService categoryProductService;
	
	public ProductController(ProductService productService, CategoryService categoryService, CategoryProductService categoryProductService) {
		this.productService= productService;
		this.categoryService = categoryService;
		this.categoryProductService = categoryProductService;
	}
	
	@GetMapping("/new")
    public String newProductForm(Model model) {
        model.addAttribute("product", new Product());
        return "newProduct.jsp";
    }

    @PostMapping("/new")
    public String createProduct(@Valid @ModelAttribute("product") Product product, BindingResult result) {
        if (result.hasErrors()) {
            return "newProduct.jsp";
        } else {
            productService.createProduct(product);
            return "redirect:/products/new"; 
        }
    }

    @GetMapping("/{id}")
    public String showProduct(@PathVariable("id") Long id, Model model) {
    	Optional<Product> optionalProduct = productService.encontrarProductPorId(id);
        if (optionalProduct.isPresent()) {
            Product product = optionalProduct.get();
            List<Category> categories = categoryService.nullCategory(product);
            model.addAttribute("categories", categories); 
            model.addAttribute("product", product);
            return "productPage.jsp";
        } else {
            return "error.jsp";
        }
    }


    @PostMapping("/{id}")
    public String createCategoryProduct(@ModelAttribute("category_product") CategoryProduct categoryproduct, @PathVariable("id") Long id, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/products/" + id;
        } else {
            categoryProductService.createCategoryProduct(categoryproduct);
            return "redirect:/products/" + id;
        }
    }
}
