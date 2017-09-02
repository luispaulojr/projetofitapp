<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>Projeto Fit APP</title>

	<link rel="stylesheet" href="${contextPath}resources/css/bootstrap.min.css" />
	<!-- <link rel="stylesheet" href="css/projeto.css" /> -->
	<link rel="stylesheet" href="${contextPath}resources/css/projeto2.css" />
	<link rel="stylesheet" href="${contextPath}resources/css/bootstrap-datepicker.min.css" />
</head>
<body>

	<div class="barra">
		<nav class="navbar navbar-inverse navbar-static-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand logotipo2" href="/projetofitapp">
						<img class="img-responsive" src="${contextPath}resources/img/logo.png" alt="logo">
					</a>
				</div>
			</div>
		</nav>
	</div>

<div class="container">
	<h1 class="h1">Cadastro de Usu�rios</h1>
	<div class="navegacao-abas">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#usuario" data-toggle="tab">Usu�rio</a></li>
			<li><a href="#professor" data-toggle="tab">Educador F�sico</a></li>
			<li><a href="#nutricionista" data-toggle="tab">Nutricionista</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade in active" id="usuario">
				<form class="form-horizontal" method="post" action="salvarCliente" >
					<c:if test="${mensagem != null}">
						<div class="alert alert-success" role="alert">
							<span value="${mensagem}" >Cadastrado com sucesso!</span>
						</div>
					</c:if>
					<!-- <div layout:include="MensagemGeral"></div>
					<div layout:include="MensagemErro"></div> -->
				
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="clearfix">
						<h1 class="panel-title mov-titulo-panel pull-left">Novo Usu�rio</h1>
						<a class="btn btn-link mov-link-panel pull-right" href="#">Pesquisa de Usu�rio</a>
					  </div>
						</div>
						<div class="panel-body">
							<input type="hidden" id="codigo" /> <!-- C�digo escondido -->
						
						<div class="form-group" >
							<label for="nome" class="col-sm-2 control-label">Nome Completo</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="nome" name="nomeUsuario" />
							</div>
						</div>

						<div class="form-group" >
							<label for="login" class="col-sm-2 control-label">Login</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="login" name="login" />
							</div>
						</div>

						<div class="form-group" >
							<label for="senha" class="col-sm-2 control-label">senha</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="senha" name="senha"/>
							</div>
						</div>

						<div class="form-group" >
							<label for="confirmacaoSenha" class="col-sm-2 control-label">Confirma��o</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="confirmacao" name="confirmacao" onBlur="validatePassword()"/>
							</div>
						</div>
						
						<div class="form-group">
		          		  <label for="email" class="col-sm-2 control-label">Email</label>
		          		  <div class="col-sm-4">
				            <input class="form-control" type="email" id="email" name="email" />
				          </div>
				        </div>
				        
				        <div class="form-group">
		          		  <label for="email" class="col-sm-2 control-label">Telefone</label>
		          		  <div class="col-sm-4">
				            <input class="form-control" type="text" id="telefone" name="telefone" />
				          </div>
				        </div>
				        
				        <input type="hidden" id="tokenC" name="altura" />

		 				<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">Salvar</button>
							</div>
						</div>

					</div>
				</div>
			</form>
									<!-- FIM ABA USU�RIO -->
		</div>
		<div class="tab-pane fade" id="professor">
			<form class="form-horizontal" method="post" action="salvarProfessor"  >

				<div layout:include="MensagemGeral"></div>
				<div layout:include="MensagemErro"></div>
			
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="clearfix">
					<h1 class="panel-title mov-titulo-panel pull-left">Novo Educador F�sico</h1>
					<a class="btn btn-link mov-link-panel pull-right" href="#">Educador F�sico</a>
				  </div>
					</div>
					<div class="panel-body">
						<input type="hidden" id="codigo" /> <!-- C�digo escondido -->
						
						<div class="form-group" >
							<label for="nomeProfessor" class="col-sm-2 control-label">Nome Completo</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="nomeP" name="nomeUsuario" />
							</div>
						</div>

						<div class="form-group" >
							<label for="cref" class="col-sm-2 control-label">CREF</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="cref" name="cref" />
							</div>
						</div>

						<div class="form-group" >
							<label for="loginProfessor" class="col-sm-2 control-label">Login</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="loginP" name="login"/>
							</div>
						</div>

						<div class="form-group" >
							<label for="senhaProfessor" class="col-sm-2 control-label">Senha</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="senhaP" name="senha"/>
							</div>
						</div>

						<div class="form-group" >
							<label for="confirmacaoSenhaP" class="col-sm-2 control-label">Confirma��o</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="confirmacaoP" name="confirmacao" onBlur="validatePassword()"/>
							</div>
						</div>
						
						<div class="form-group">
		          		  <label for="email" class="col-sm-2 control-label">Email</label>
		          		  <div class="col-sm-4">
				            <input class="form-control" type="email" id="emailP" name="email" />
				          </div>
				        </div>
				        
				        <div class="form-group">
		          		  <label for="email" class="col-sm-2 control-label">Telefone</label>
		          		  <div class="col-sm-4">
				            <input class="form-control" type="text" id="telefoneP" name="telefone" />
				          </div>
				        </div>
				        
				        <input type="hidden" id="tokenP" name="academiaAtual" />
				        
		 				<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">Salvar</button>
							</div>
						</div>

					</div>
				</div>
			</form>
									<!-- FIM ABA EDUCADOR F�SICO-->
		</div>
		<div class="tab-pane fade" id="nutricionista">
			<form class="form-horizontal" method="post" action="salvarNutricionista" >

				<div layout:include="MensagemGeral"></div>
				<div layout:include="MensagemErro"></div>
			
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="clearfix">
					<h1 class="panel-title mov-titulo-panel pull-left">Novo Nutricionista</h1>
					<a class="btn btn-link mov-link-panel pull-right" href="#">Pesquisa de Usu�rio</a>
				  </div>
					</div>
					<div class="panel-body">
						<input type="hidden" id="codigo" /> <!-- C�digo escondido -->
						
						<div class="form-group" >
							<label for="nomeN" class="col-sm-2 control-label">Nome Completo</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="nomeN" name="nomeUsuario" />
							</div>
						</div>

						<div class="form-group" >
							<label for="crn" class="col-sm-2 control-label">CRN</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="crn" name="crn" />
							</div>
						</div>

						<div class="form-group" >
							<label for="loginN" class="col-sm-2 control-label">Login</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="loginN" name="login"/>
							</div>
						</div>

						<div class="form-group" >
							<label for="senhaN" class="col-sm-2 control-label">Senha</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="senhaN" name="senha" />
							</div>
						</div>

						<div class="form-group" >
							<label for="confirmacaoSenhaN" class="col-sm-2 control-label">Confirma��o</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="confirmacaoN" name="confirmacao" onBlur="validatePassword()" />
							</div>
						</div>
						
						<div class="form-group">
		          		  <label for="email" class="col-sm-2 control-label">Email</label>
		          		  <div class="col-sm-4">
				            <input class="form-control" type="email" id="emailN" name="email" />
				          </div>
				        </div>
				        
				        <div class="form-group">
		          		  <label for="email" class="col-sm-2 control-label">Telefone</label>
		          		  <div class="col-sm-4">
				            <input class="form-control" type="text" id="telefoneN" name="telefone" />
				          </div>
				        </div>
				        
				        <input type="hidden" id="tokenN" name="consultorioAtual" />

		 				<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">Salvar</button>
							</div>
						</div>

					</div>
				</div>
			</form>
									<!-- FIM ABA NUTRICIONISTA -->
		</div>
	</div>
</div>


</div>
 										<!-- FIM -->
	<script src="${contextPath}resources/js/jquery-3.1.1.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap-datepicker.min.js"></script>
	<script src="${contextPath}resources/js/bootstrap-datepicker.pt-BR.min.js"></script>
	<%-- <script src="${contextPath}resources/js/confirmacao.js"></script> --%>
	<script>
	var senha = document.getElementById("senha")
	  , confirmacao = document.getElementById("confirmacao")
	  ,	senhaP = document.getElementById("senhaP")
	  , confirmacaoP = document.getElementById("confirmacaoP")
	  , senhaN = document.getElementById("senhaN")
	  , confirmacaoN = document.getElementById("confirmacaoN");

	function validatePassword(){
	  if(senha.value != confirmacao.value || senhaP.value != confirmacaoP.value || senhaN.value != confirmacaoN.value) {
		 confirmacao.setCustomValidity("Senhas diferentes!");
	    alert("Senhas Divergentes.");
	    $("#senha").val("");
	    $("#confirmacao").val("");
	    $("#senhaP").val("");
	    $("#confirmacaoP").val("");
	    $("#senhaN").val("");
	    $("#confirmacaoN").val("");
	  } else {
		  confirmacao.setCustomValidity('');
	  }
	}

	//password.onchange = validatePassword;
	//confirm_password.onkeyup = validatePassword;
	</script>
</body>
</html>