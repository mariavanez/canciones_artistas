<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalles del Artista</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body style="background-color: #f8f9fa; padding-top: 50px;">
	<main class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-6">
			<h1 class="text-center mb-4">Detalles de ${artista.nombre} ${artista.apellido}</h1>
				<div class="card shadow-sm">
					<div class="card-body">
						<h5 class="card-title text-center mb-3">Biografía</h5>
						<p class="card-text text-muted">${artista.biografia}</p>
						
						<h5 class="card-title text-center mb-3">Canciones</h5>
						<ul class="list-group list-group-flush">
							<c:forEach items="${artista.canciones}" var="cancion">
								<li class="list-group-item text-center">
									<a href="/canciones/detalle/${cancion.id}">${cancion.titulo}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="d-flex justify-content-center align-items-center mt-4 mb-4" >
					<a href="/artistas" class="btn btn-outline-secondary">🎤 Ir a Artistas</a>
				</div>
			</div>
		</div>
	</main>
</body>
</html>