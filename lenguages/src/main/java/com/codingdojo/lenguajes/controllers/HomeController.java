package com.codingdojo.lenguajes.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.lenguajes.models.Lenguaje;
import com.codingdojo.lenguajes.services.LenguajeService;

@Controller
public class HomeController {
	
    private final LenguajeService lenguajeService;
    
    public HomeController(LenguajeService lenguajeService) {
        this.lenguajeService = lenguajeService;
    }
    
    @RequestMapping("/lenguajes")
    public String index(Model model,@ModelAttribute("lenguaje") Lenguaje lenguaje) {
        List<Lenguaje> lenguajes = lenguajeService.allLenguajes();
        model.addAttribute("lenguajes", lenguajes);
        return "/lenguajes/index.jsp";
    }
    @RequestMapping(value="/lenguajes", method=RequestMethod.POST)
    public String create(@Validated @ModelAttribute("lenguaje") Lenguaje lenguaje, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/lenguajes";
        } else {
            lenguajeService.createLenguaje(lenguaje);
            return "redirect:/lenguajes";
        }
    }
    
    @RequestMapping("/lenguajes/{id}")
    public String show(Model model, @PathVariable("id") Long id) {
        Lenguaje lenguaje = lenguajeService.findLenguaje(id);
        model.addAttribute("lenguaje", lenguaje);
        return "/lenguajes/show.jsp";
    }
    
    @RequestMapping("/lenguajes/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        Lenguaje lenguaje = lenguajeService.findLenguaje(id);
        model.addAttribute("lenguaje", lenguaje);
        return "/lenguajes/edit.jsp";
    }
    
    @RequestMapping(value="/lenguajes/{id}", method=RequestMethod.PUT)
    public String update(@Validated @ModelAttribute("lenguajes") Lenguaje lenguajes, BindingResult result) {
        if (result.hasErrors()) {
            return "/lenguajes/edit.jsp";
        } else {
            lenguajeService.updateLenguaje(lenguajes);
            return "redirect:/lenguajes";
        }
    }
    
    @RequestMapping(value="/lenguajes/delete/{id}", method=RequestMethod.GET)
    public String destroy(@PathVariable("id") Long id) {
        lenguajeService.deleteLenguaje(id);
        return "redirect:/lenguajes";
    }

}
