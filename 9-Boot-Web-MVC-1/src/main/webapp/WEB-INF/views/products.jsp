<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Products</h1>
	<hr />

	<jsp:include page="./menu.jsp" />


	<table align="center" border="1">
		<thead>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Description</th>
				<th>Action1</th>
				<th>Action2</th>
			</tr>

		</thead>

		<tbody>

			<c:forEach var="prod" items="${productsList}">
				<tr>
					<td>${prod.id}</td>
					<td>${prod.name}</td>
					<td>${prod.price}</td>
					<td>${prod.description}</td>
					<th><a href="./findProduct?id=${prod.id}">Edit</a></th>
					<th><a href='./deleteProduct?id=${prod.id}'>Delete</a></th>

				</tr>
			</c:forEach>

		</tbody>


	</table>


</body>
</html>