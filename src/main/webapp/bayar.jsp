<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="ISO-8859-1">
    <title>Greedy | Sistem Kasir</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">

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


int jumlah_uang = request.getParameter("jumlah_uang") == null ? 0 : Integer.parseInt(request.getParameter("jumlah_uang"));
%>

<body>
    <div class="flex-center">
        <div class="form-pembayaran box_shadow input_barang">
            <div>
                <p>Total Harga</p>
                <h1><%= jumlah_total %></h1>
            </div>
            

            
			<form action="bayar.jsp" method="POST">
            <div>
                <label for="jumlah_bayar">Jumlah Uang</label>
                <input type="number" id="jumlah_uang" name="jumlah_uang" placeholder="Masukkan jumlah uang">
            </div>
            
            
            <div>
                <p>Total Uang Pelanggan</p>
                <h1><%= jumlah_uang %></h1>
            </div>
            <div class="jumlah_uang">
                <div class="input_uang">
                    <p>Total Kembalian</p>
                    <h1><%= jumlah_uang - jumlah_total %></h1>
                </div>
                <button type="submit" name="submit" class="refresh-button"><img src="image/refresh.svg" alt=""></button>
            </div>
			</form>
			
            <a href="proses/proses_bayar.jsp" class="main-button link">Selesaikan
                Pesanan</a>
        </div>
    </div>
</body>
</html>