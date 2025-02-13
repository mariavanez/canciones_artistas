package com.maria.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maria.modelos.Artista;
import com.maria.repositorios.RepositorioArtistas;

@Service
public class ServicioArtistas {

	@Autowired
	private RepositorioArtistas repoArtistas;
	
	public List<Artista> obtenerTodosLosArtistas() {
		return repoArtistas.findAll();
	}
	
	public Artista obtenerArtistasPorId(Long id) {
		return repoArtistas.findById(id).orElse(null);
	}
	
	public Artista agregarArtista(Artista artistaNuevo) {
		return repoArtistas.save(artistaNuevo);
	}
	
}
