<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <title>Greedy | Sistem Kasir</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <div class="dashboard h-full">
        <nav>
            <img src="image/Logo.svg" alt="" width="50px">
            <p>Concurrency</p>
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
                <div class="main-header">
                    <h2>List Barang</h2>
                    <a href="tambah.jsp">Tambah barang</a>
                </div>
                <table class="list-belanja">
                    <tr>
                        <th>Kode Barang</th>
                        <th>Nama Barang</th>
                        <th>Harga Barang</th>
                        <th>Stok</th>
                        <th>Aksi</th>
                    </tr>
                    <%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
					<%@ page import="java.util.ArrayList" %>
					
					<%
						ConnectProduct produk = new ConnectProduct();
						int jml = produk.getDataProduk().size();
						for(int i = 0; i < jml; i++) {
							out.print("<tr>");
							out.print("<td>"+ produk.getDataProduk().get(i).getId_produk()+"</td>");
							out.print("<td>"+ produk.getDataProduk().get(i).getNama_produk()+"</td>");
							out.print("<td>"+ produk.getDataProduk().get(i).getHarga_produk()+"</td>");
							out.print("<td>"+ produk.getDataProduk().get(i).getStok_produk()+"</td>");
							out.print("<td><a href='edit.jsp?id_produk="+ produk.getDataProduk().get(i).getId_produk() +"'><img src='image/Group 64.svg'></a><a href='proses/proses_hapus.jsp?id_produk="+ produk.getDataProduk().get(i).getId_produk() +"'><img onclick='alert('Yakin ingin menghapus produk?')' src='image/Group 63.svg'></a></td>");
							out.print("</tr>");
						}
					%>
                </table>
            </main>
        </div>
    </div>
</body>

</html>