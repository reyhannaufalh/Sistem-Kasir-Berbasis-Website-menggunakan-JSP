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
	<%@ page import="java.util.ArrayList" %>
	
	<%
	
	Keranjang keranjangLama = (Keranjang) session.getAttribute("keranjang");
	
	ArrayList<Product> productDiKeranjang = keranjangLama.getKeranjang();
	
	for(int i =0; i< productDiKeranjang.size(); i++){
		Product product = productDiKeranjang.get(i);
		out.print(product.getNama_produk());
	}
	
	
	
	
	%>


</body>
</html>