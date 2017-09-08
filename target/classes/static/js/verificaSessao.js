$(document).ready(function(){
	var status = JSON.parse(sessionStorage.getItem('logado'));
	var usuarioLogado = JSON.parse(sessionStorage.getItem('usuario'));
	
	if (usuarioLogado != "logado") {
		location.replace("/projetofitapp/");
	}
	alert(usuarioLogado + "\n" + status);
})
