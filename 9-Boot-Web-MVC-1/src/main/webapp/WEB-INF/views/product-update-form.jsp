<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

  
  function validateData(){
		
		let id=document.querySelector("#id");
		
		if(id.value=="" || id.value==NaN || id.value==" "){
		
		   document.querySelector("#idError").innerHTML="ID Must Be Required";
		   
		   return false;
		
		}
		
		return true;
		
	
	
  }



</script>
</head>
<body>

	<h1 align="center">Product Form</h1>
	<hr />

	<jsp:include page="./menu.jsp" />
	
	<form action="./saveProductV1" method="post" onSubmit="return validateData()">

		<table align="center">
			<tr>
				<th>Product ID</th>
				<td><input name="id" id="id" value="${product.id}"></td>
				<td>
				<span id="idError"></span>
				</td>
			</tr>

			<tr>
				<th>Product Name</th>
				<td><input name="name" id="name" value="${product.name}"></td>
			</tr>

			<tr>
				<th>Price</th>
				<td><input name="price" id="price" id="price" value="${product.price}"></td>
			</tr>

			<tr>
				<th>Description</th>
				<td><textarea name="description">
				${product.description}
				</textarea></td>
			</tr>

			<tr>
				<th colspan="2">
					<button type="submit">Save</button>
					<button type="reset">Clear All</button>
				</th>
			</tr>


		</table>
	</form>

	<hr />


</body>
</html>