<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Greedy | Sistem Kasir</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="tambah-barang h-full">
        <nav>
            <img src="Logo.svg" alt="" width="50px">
            <p>E-Kasir</p>
        </nav>
        <div class="content">
            <aside>
                <ul>
                    <li><a href="index.jsp">Dashboard</a></li>
                    <li class="nav-active"><a href="list.jsp">List Barang</a></li>
                    <li><a href="riwayat.jsp">Riwayat</a></li>
                </ul>
            </aside>
            <main>
                <div class="main-header" style="margin-bottom: 24px;">
                	<%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
					<%@ page import="java.util.ArrayList" %>
                    <h2>Edit Produk</h2>
                </div>
                <div class="main-1">
                    <div class="input_barang box_shadow flex-item">
                    	<form action="proses/proses_edit.jsp" method="post">
	                    	<%
		                		String id_produk = request.getParameter("id_produk");
								ConnectProduct produk = new ConnectProduct();
								Product getProduct = produk.getDataProdukById(id_produk);
							%>

	                        <label for="nama_produk">Nama Produk</label>
	                        <input type="hidden" value="<% out.print(id_produk); %>" name="id_produk">
	                        <input type="text" id="nama_produk" name="nama_produk" value="<% out.print(getProduct.getNama_produk()); %>">
	                        <label for="stok_produk">Stok Produk</label>
	                        <input type="number" id="stok_produk" name="stok_produk" value="<% out.print(getProduct.getStok_produk()); %>">
	                        <label for="harga_produk">Harga Produk</label>
	                        <input type="number" id="harga_produk" name="harga_produk" value="<% out.print(getProduct.getHarga_produk()); %>">
	                        <button name="submit" type="submit" class="main-button tambah-button">Edit Produk</button>
                        </form>
                    </div>
                </div>
            </main>
        </div>
    </div>
</body>

</html>