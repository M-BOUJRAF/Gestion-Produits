<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Produits</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<%@include file="header.jsp" %>
	<p></p>
	<div class="container spacer">
		<div class="col-md-10 col-xm-12 col-sm-10 offset-md-1">
			<div class="list-group">
				<div class="list-group-item active">Simulation du Credit</div>
				<div class="list-group-item">
					<form action="chercher.do" method="get">
						<label>Mot Cle :</label>
						<input type="text" name="motCle" value="${ model.motCle }"/>
						<button type="submit" class="btn btn-primary">Chercher</button>
					</form>
					<p></p>
					<table class="table table-striped">
						<tr>
							<th>ID</th><th>Designation</th><th>Prix</th><th>Quantite</th>
						</tr>
						<c:forEach items="${ model.produits }" var="p">
							<tr>
								<td>${ p.id }</td><td>${ p.designation }</td><td>${ p.prix }</td><td>${ p.quantite }</td>
								<td><a onclick="return confirm('Etes vous sure?')" href="supprime.do?id=${ p.id }">Supprimer</a></td>
								<td><a href="edit.do?id=${ p.id }">Edit</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>