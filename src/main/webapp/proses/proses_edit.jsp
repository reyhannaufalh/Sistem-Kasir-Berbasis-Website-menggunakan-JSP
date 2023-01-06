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
		Integer id_produk = Integer.parseInt(request.getParameter("id_produk"));
		String nama_produk = request.getParameter("nama_produk");
		Integer stok_produk = Integer.parseInt(request.getParameter("stok_produk"));
		Integer harga_produk = Integer.parseInt(request.getParameter("harga_produk"));
		
		Product produk = new Product();
		produk.setId_produk(id_produk);
		produk.setNama_produk(nama_produk);
		produk.setHarga_produk(harga_produk);
		produk.setStok_produk(stok_produk);
		
		ConnectProduct cP = new ConnectProduct();
		cP.updateProduk(produk);
	%>
	<script type="text/javascript">
		window.alert("Data Berhasil di Ubah")
		window.location.href = '../list.jsp'
	</script>
</body>
</html>