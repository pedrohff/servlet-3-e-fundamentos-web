<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
</head>
<body>
<div class='container'>
	<div class="card light-blue lighten-4" style="width: 360px; margin: 0 auto; padding: 30px;margin-top: 30px;">
		<p style="text-align: center;">Bem vindo ao nosso gerenciador de empresas!</p>
		<c:if test="${not empty usuarioLogado}">
			<p>Você está logado como ${usuarioLogado.email}</p>
			
		</c:if>
		<form action="fazTudo?tarefa=NovaEmpresa" method="post" >
			<div class='input-field  '>
				<input type="text" name="nome" id="inputnome">
				<label for="inputnome">Nome</label>
			</div>
			<div class="  ">
				<input type="submit" value="Cadastrar" class="btn waves-effect waves-light">
			</div>
		</form>
		
		<br>
		<form action="login" method="post" >
			<div class='input-field  '>
				<input type="email" name="email">
				<label for="email">Email</label>
			</div>
			<div class="input-field  ">
				<input type="password" name="senha">
				<label for="senha">Senha</label>
			</div>		
			<div class=" ">
				<input type="submit" value="Login" class="btn waves-effect waves-light">
			</div>
			
		</form>
		<br>
		<br>
		<div class="card-action">
			
			<form action="fazTudo?tarefa=Logout" method="POST">
				<a href="/gerenciador/busca" class="btn-flat">Busca</a><input type="submit" value="Deslogar" class="btn-flat">
			</form>
		</div>
		
		
		
	</div><!-- card -->
</div>
</body>
</html>