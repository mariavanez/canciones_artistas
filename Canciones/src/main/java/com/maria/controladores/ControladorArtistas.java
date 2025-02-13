package com.maria.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.maria.modelos.Artista;
import com.maria.servicios.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

	@Autowired
	private ServicioArtistas servArtistas;
	
	@GetMapping("/artistas")
	public String desplegarArtistas(Model model) {
		
		model.addAttribute("artistasLista", servArtistas.obtenerTodosLosArtistas());
		return "artistas.jsp";
		
	}
	
	@GetMapping("/artistas/detalle/{idArtista}") 
	public String desplegarDetalleArtista(@PathVariable("idArtista") Long id,
			                             Model model) {
		
		model.addAttribute("artista", servArtistas.obtenerArtistasPorId(id));
		return "detalleArtista.jsp";
	}
	
	@GetMapping("/artistas/formulario/agregar")
	public String formularioAgregarArtista(Model model) {
		
		model.addAttribute("artista", new Artista());
		return "agregarArtista.jsp";
	}
	
	@PostMapping("/artistas/procesa/agregar")
	public String procesarAgregarArtista(@Valid @ModelAttribute("artista") Artista artista,
										 BindingResult result, 
										 Model model) {
		
		if(result.hasErrors()) {
			model.addAttribute("artista", artista);
			return "agregarArtista.jsp";
		} else {
			servArtistas.agregarArtista(artista);
			return "redirect:/artistas";
		}
		
	}
}
