<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar la Canción: ${cancion.titulo}</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="d-flex justify-content-center align-items-center" style="min-height: 100vh; background-color: #f8f9fa;">
	<main class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-6">
				<h1 class="text-center mb-3">Estás actualizando la canción: ${cancion.titulo}</h1>
				<form:form action="/canciones/procesa/editar/${cancion.id}" method="post" modelAttribute="cancion">
					<input type="hidden" name="_method" value="PUT" >
					<div class="mb-3 shadow-sm">
						<form:label path="titulo">Título:</form:label>
						<form:input path="titulo" placeholder="Ingresa un título..." class="form-control" />
						<form:errors path="titulo" class="text-danger" />
					</div>
					<div class="mb-3 shadow-sm">
						<form:label path="artista" class="form-label">Artista:</form:label>
						<form:select path="artista.id" class="form-select">
							<form:option value="" label="Selecciona un artista"/>
							<c:forEach items="${artistas}" var="artista">
								<form:option value="${artista.id}">${artista.nombre} ${artista.apellido}</form:option>
							</c:forEach>
						</form:select>
					</div>
					<div class="mb-3 shadow-sm">
						<form:label path="album">Álbum:</form:label>
						<form:input path="album" placeholder="Ingresa un album..." class="form-control" />
						<form:errors path="album" class="text-danger" />
					</div>
					<div class="mb-3 shadow-sm">
						<form:label path="genero">Género:</form:label>
						<form:input path="genero" placeholder="Ingresa un género..." class="form-control" />
						<form:errors path="genero" class="text-danger" />
					</div>
					<div class="mb-3 shadow-sm">
						<form:label path="idioma">Idioma:</form:label>
						<form:input path="idioma" placeholder="Ingresa el idioma..." class="form-control" />
						<form:errors path="idioma" class="text-danger" />
					</div>
					<div class="d-flex justify-content-center align-items-center gap-3 mb-2">
						<input type="submit" class="btn btn-success" value="Guardar cambios">
						<a href="/artistas/formulario/agregar" class="btn btn-primary">Agregar Artista Nuevo</a>
					</div>
					<div class="text-center">
						<a href="/canciones" class="btn btn-outline-secondary mb-2">🔙 Volver a la lista de canciones</a>
					</div>
				</form:form>
			</div>
		</div>
	</main>
</body>
</html>