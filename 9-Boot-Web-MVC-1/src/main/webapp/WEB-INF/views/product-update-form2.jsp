<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

	<h1 align="center">Product Update Form-V1</h1>
	<hr />

	<jsp:include page="./menu.jsp" />

	<form:form action="./saveProductV1" method="post"
		onSubmit="return validateData()" modelAttribute="product">

		<table align="center">
			<tr>
				<th>Product ID</th>
				<td><form:input path="id" id="id" readonly="true"/></td>
				<td><span id="idError"></span></td>
			</tr>

			<tr>
				<th>Product Name</th>
				<td><form:input path="name" id="name" /></td>
			</tr>

			<tr>
				<th>Price</th>
				<td><form:input path="price" id="price" /></td>
			</tr>

			<tr>
				<th>Description</th>
				<td><form:textarea path="description" id="description" /></td>
			</tr>

			<tr>
				<th colspan="2">
					<button type="submit">Update</button>
					<button type="reset">Clear All</button>
				</th>
			</tr>


		</table>
	</form:form>

	<hr />


</body>
</html>