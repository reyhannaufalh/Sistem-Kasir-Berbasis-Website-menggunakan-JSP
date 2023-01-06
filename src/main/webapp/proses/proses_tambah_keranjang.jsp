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
	
		String idProduct = request.getParameter("product");
		String jumlahProduct = request.getParameter("jumlah_produk");

		ConnectProduct cP = new ConnectProduct();
		Product getProduct = cP.getDataProdukById(idProduct);
		
		if(getProduct.getId_produk() == null){
			//gaada datanya
		}else{
			Keranjang keranjangLama = (Keranjang) session.getAttribute("keranjang");
			
			getProduct.setJumlah_produk(Integer.parseInt(jumlahProduct));
			keranjangLama.insertProduct(getProduct);
		}
		
		response.sendRedirect("../index.jsp");
	%>
</body>
</html>