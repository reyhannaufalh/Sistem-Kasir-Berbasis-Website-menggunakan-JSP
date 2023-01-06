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
	<%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
	<%@ page import="java.util.ArrayList" %>
	
	<%
		
	if(session.getAttribute("keranjang") == null){
		Keranjang keranjangBaru = new Keranjang();
		session.setAttribute("keranjang", keranjangBaru);
	}
	
	
	Keranjang keranjang = (Keranjang) session.getAttribute("keranjang");
	
	ConnectProduct conProduct = new ConnectProduct();
	
    ArrayList<Product> productDiKeranjang = keranjang.getKeranjang();
    
    int jumlah_total = 0;
    
    for(int b = 0; b < productDiKeranjang.size(); b++){
    	jumlah_total += productDiKeranjang.get(b).getHarga_produk() * productDiKeranjang.get(b).getJumlah_produk();
    }
	%>

<body>
    <div class="dashboard h-full">
        <nav>
            <img src="image/Logo.svg" alt="" width="50px">
            <p>Concurrency</p>
        </nav>
        <div class="content">
            <aside>
                <ul>
                    <li class="nav-active"><a href="index.jsp">Dashboard</a></li>
                    <li><a href="list.jsp">List Barang</a></li>
                    <li><a href="riwayat.jsp">Riwayat</a></li>
                </ul>
            </aside>
            <main>
                <div class="main-1">
                    <div class="input_barang box_shadow flex-item">
                    <%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
                    <%@ page import="java.util.ArrayList" %>
                    
	                    <form action="proses/proses_tambah_keranjang.jsp" method="post">
	                        <label for="kode_barang">Nama Barang</label>
	                        <select name="product">
	                        
	                        <%
	                        
	                        ArrayList<Product> all_product = conProduct.getDataProduk();
	                        
	                        for(int p=0; p<all_product.size(); p++){
	                        	Product productP = all_product.get(p);
	                        	out.print("<option value='"+productP.getId_produk()+"'>"+ productP.getNama_produk() +" </option>')");
	                        }
	                        %>

	                        </select>
	                        <label for="jumlah_barang">Jumlah Barang</label>
	                        <input type="number" id="jumlah_barang" name="jumlah_produk"
	                            placeholder="Masukkan jumlah barang" required>
	                        <button name="submit" type="submit" class="main-button tambah-button">Tambah Barang</button>
	                    </form>
                    </div>
                    <div class="total_harga box_shadow flex-item">
                        <div>
                            <p>Total Harga</p>
                            <h1><%= jumlah_total %></h1>
                        </div>
                        
                        <a href="bayar.jsp" class="main-button link">Bayar</a>

                    </div>
                </div>
                <table class="list-belanja">
                <thead>
                    <tr>
                        <th>Kode Barang</th>
                        <th>Nama Barang</th>
                        <th>Harga Barang</th>
                        <th>Jumlah</th>
                        <th>Total Harga</th>
                    </tr>
                </thead>
                <tbody>
                <%
                
	           	for(int i = 0; i < productDiKeranjang.size(); i++){
	           		Product product = productDiKeranjang.get(i);
	           		out.print("<tr>");
	           		out.print("<td>"+product.getId_produk()+"</td>");
	           		out.print("<td>"+product.getNama_produk()+"</td>");
	           		out.print("<td>"+product.getHarga_produk()+"</td>");
	           		out.print("<td>"+product.getJumlah_produk()+"</td>");
	           		out.print("<td>"+ product.getHarga_produk() * product.getJumlah_produk()  +"</td>");
	           		out.print("</tr>");
	           	}
                %>
                
                </tbody>

                </table>
            </main>
        </div>
    </div>
</body>

</html>