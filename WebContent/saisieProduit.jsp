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
				<div class="list-group-item active">Saisie d'un Produit</div>
				<div class="list-group-item">
					<form action="SaveProduit.do" method="post">
						<div class="form-group">
							<label class="control-label">Designation :</label>
							<input type="text" name="designation" value="${ produit.designation }" class="form-control" required/>
							<span></span>
						</div>
						<div class="form-group">
							<label class="control-label">Prix :</label>
							<input type="text" name="prix" value="${ produit.prix }" class="form-control"/>
							<span></span>
						</div>
						<div class="form-group">
							<label class="control-label">Quantite :</label>
							<input type="text" name="quantite" value="${ produit.quantite }" class="form-control"/>
							<span></span>
						</div>
						<p></p>
						<div>
							<button type="submit" class="btn btn-primary">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>