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

	<%@ page import="id.ac.uns.vokasi.d3ti.ProductClass.*" %>
	<%@ page import="java.util.ArrayList" %>
	<%
	ConnectTransaksi cTransaksi = new ConnectTransaksi();
	
	ArrayList<Transaksi> allTransaksi = cTransaksi.getAllTransaksi();
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
                    <li><a href="index.jsp">Dashboard</a></li>
                    <li><a href="list.jsp">List Barang</a></li>
                    <li class="nav-active"><a href="riwayat.jsp">Riwayat</a></li>
                </ul>
            </aside>
            <main>
                <div class="main-header" style="margin-bottom: 24px;">
                    <h2>Riwayat Transaksi</h2>
                </div>
                <table class="list-belanja">
                    <tr>
                        <th>Nomor Nota</th>
                        <th>Tanggal Transaksi</th>
                        <th>Total Harga</th>
                    </tr>
                    
                    <%

                    int id_transaksi = 0;
                    int total_transaksi = 0;
                    String tanggal_transaksi = "";
                    
                    
                    for(Transaksi transaksi : allTransaksi){
                    	if(id_transaksi == 0){
                    		id_transaksi = transaksi.getId_transaksi();
                    		total_transaksi = transaksi.getHarga_produk() * transaksi.getJumlah();
                    		tanggal_transaksi = transaksi.getCreated_at();
                    	} else {
                        	if(id_transaksi != transaksi.getId_transaksi()){
    							out.print("<tr>");
                        		out.print("<td>"+ id_transaksi +"</td>");
                        		out.print("<td>"+ tanggal_transaksi +"</td>");
                        		out.print("<td>"+ total_transaksi +"</td>");
    							out.print("</tr>");

                        		id_transaksi = transaksi.getId_transaksi();
                        		total_transaksi = transaksi.getHarga_produk() * transaksi.getJumlah();
                        		tanggal_transaksi = transaksi.getCreated_at();
                        	}
                        	
                        	if(id_transaksi == transaksi.getId_transaksi()){
        						total_transaksi += transaksi.getHarga_produk() * transaksi.getJumlah();
                        	}
                    	}
                    }
                    
                    
					out.print("<tr>");
            		out.print("<td>"+ id_transaksi +"</td>");
            		out.print("<td>"+ tanggal_transaksi +"</td>");
            		out.print("<td>"+ total_transaksi +"</td>");
					out.print("</tr>");
                    
                    %>

                </table>
            </main>
        </div>
    </div>
</body>

</html>