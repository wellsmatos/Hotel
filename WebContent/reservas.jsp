<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Hotel Mackenzie</title>
		<link type="text/css" href="common.css" rel="stylesheet">
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>
		<p>Preencha os campos abaixo para fazer uma reserva:</p>
		<form method="post" action="controller" id="formReserva">  <%-- Nome da classe controladora na action (nunca muda) --%>
			<p>Nome:<input type="text" id="nome"></p>
			<p>Endereço:<input type="text" id="endereco"></p>
			<p>Estado:<input type="text" id="estado"></p>
			<p>País:<input type="text" id="pais"></p>
			<p>Número do Cartão VISA:<input type="text" id="numeroCartao"></p>
			<p>Tipo do quarto:
				<select id="tipoQuarto">
  					<option value="master">Suíte Master</option>
  					<option value="comum">Suíte Comum</option>
  					<option value="presidencial">Suíte presidencial</option>
  					<option value="alone">Alone</option>
				</select>
			</p>
			<p><input type="submit" value="Fazer Reserva"></p>
			<input type="hidden" value="FazerReserva" id="logica"> <%-- Nome da classe action (input necessário com id sempre o mesmo : logica) --%>
		</form>
		<c:import url="rodape.jsp"/>
	</body>
</html>
