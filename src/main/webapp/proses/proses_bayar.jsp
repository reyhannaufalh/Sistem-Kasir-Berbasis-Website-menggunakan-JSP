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
	<%@ page import="java.util.*" %>
	
	<%
	ConnectProduct cProduct = new ConnectProduct();
	Keranjang keranjangLama = (Keranjang) session.getAttribute("keranjang");
	
	for(Product produk : keranjangLama.getKeranjang()){
		cProduct.updateStok(produk);
	}
		
	ConnectTransaksi cTransaksi = new ConnectTransaksi();
	
	cTransaksi.insertTransaksi(keranjangLama);
	
	session.setAttribute("keranjang", null);
	response.sendRedirect("../riwayat.jsp");
	%>

</body>
</html>