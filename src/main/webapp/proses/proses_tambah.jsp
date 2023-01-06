<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
	<%
		String nama_produk = request.getParameter("nama_produk");
		Integer stok_produk = Integer.parseInt(request.getParameter("stok_produk"));
		Integer harga_produk = Integer.parseInt(request.getParameter("harga_produk"));
		
		Product produk = new Product();
		produk.setNama_produk(nama_produk);
		produk.setHarga_produk(harga_produk);
		produk.setStok_produk(stok_produk);
		
		ConnectProduct cP = new ConnectProduct();
		cP.tambahProduk(produk);
	%>
	<script type="text/javascript">
		window.alert("Data Berhasil di Input")
		window.location.href = '../list.jsp'
	</script>
</body>
</html>