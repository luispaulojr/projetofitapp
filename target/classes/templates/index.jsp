<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>Projeto Fit APP</title>

<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/projeto.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

	<div
		class="login-form col-xs-10 col-sm-6 com-md-4 col-lg-4 col-xs-offset-1 col-sm-offset-3 col-md-offset-4 col-lg-offset-4">
		<header>
			<h1>
				<img class="img-responsive" src="/img/logo.png" alt="logo" />
			</h1>
			<h2 class="text-center">
				Entre com seu <b>usuário</b> e <b>senha</b>
			</h2>
			<c:if test="${mensagem != null}">
				<div class="alert alert-success alert-dismissable" role="alert">
				<a class="panel-close close" data-dismiss="alert">x</a>
					<span ><!-- <%= request.getAttribute("mensagem") %> --></span>
				</div>
			</c:if>
		</header>
		<form method="post" action="index">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<input type="text" name="login" class="form-control"
						placeholder="Login" required="required" />
				</div>
			</div>
<%--   				<input type="text" name="token" id="token" value="<%= request.getAttribute("token") %>" /> --%>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-option-horizontal"></span>
					</div>
					<input type="password" name="senha" class="form-control"
						placeholder="Senha" required="required">
				</div>
			</div>
			<footer>
				<div class="checkbox pull-left">
					<label for=""><input type="checkbox" name="lembrar">Lembrar de mim</label>
				</div>
				<button type="submit" class="btn btn-primary pull-right" style="margin-left:10px">Entrar</button>
				<a class="btn btn-default pull-right" href="formularioCadastro" role="button">Novo</a>
			</footer>
		</form>

	</div>
	<!-- FIM -->
	<script src="/js/jquery-3.1.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>