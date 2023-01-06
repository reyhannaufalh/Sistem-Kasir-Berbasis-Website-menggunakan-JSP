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
	
	Product produk = new Product();
	produk.setId_produk(id_produk);
	
	ConnectProduct cP = new ConnectProduct();
	cP.hapusProduk(produk);
	
	%>
	<script type="text/javascript">
		window.alert("Data Berhasil di Hapus")
		window.location.href = '../list.jsp'
	</script>
</body>
</html>