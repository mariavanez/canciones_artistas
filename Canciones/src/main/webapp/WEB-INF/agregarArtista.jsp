<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar un Artista</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="d-flex justify-content-center align-items-center" style="min-height: 100vh; background-color: #f8f9fa;">
	<main class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-6">
				<h1 class="text-center mb-3">¡Agrega un nuevo artista!</h1>
				<form:form action="/artistas/procesa/agregar" method="post" modelAttribute="artista">
					<div class="mb-3 shadow-sm">
						<form:label path="nombre" class="form-label">Nombre:</form:label>
						<form:input path="nombre" placeholder="Ingresa un nombre..." class="form-control"></form:input>
						<form:errors path="nombre" class="text-danger" />
					</div>
					<div class="mb-3 shadow-sm">
						<form:label path="apellido" class="form-label">Apellido:</form:label>
						<form:input path="apellido" placeholder="Ingresa un apellido..." class="form-control"></form:input>
						<form:errors path="apellido" class="text-danger" />
					</div>
					<div class="mb-3 shadow-sm">
						<form:label path="biografia" class="form-label">Biografía:</form:label>
						<form:textarea path="biografia" placeholder="Ingresa una biografia..." class="form-control" rows="4" />
						<form:errors path="biografia" class="text-danger" />
					</div>
					<div class="d-flex justify-content-center align-items-center gap-3 mb-2">
						<button type="submit" class="btn btn-success">Agregar Artista</button>
						<a href="/artistas" class="btn btn-outline-secondary">🎤 Ir a Artistas</a>
					</div>
				</form:form>
			</div>
		</div>
	</main>
</body>
</html>