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
		<div class="col-md-8 col-xm-10 col-sm-8 offset-md-2 col-xs-12">
			<div class="list-group">
				<div class="list-group-item active">Confirmation</div>
				<div class="list-group-item">
					<div class="form-group">
						<label>ID :</label>
						<label>${ produit.id }</label>
					</div>
					<div class="form-group">
						<label>Designation :</label>
						<label>${ produit.designation }</label>
					</div>
					<div class="form-group">
						<label>Prix :</label>
						<label>${ produit.prix }</label>
					</div>
					<div class="form-group">
						<label>Quantite :</label>
						<label>${ produit.quantite }</label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>