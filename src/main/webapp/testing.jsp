<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
	
	<%
	 Keranjang newKeranjang = new Keranjang();
	
	 Product newProduct = new Product();
	  
	 newProduct.setNama_produk("Hakim Gank");
	
	newKeranjang.insertProduct(newProduct);
	
	session.setAttribute("keranjang", newKeranjang);
	
	%>


</body>
</html>