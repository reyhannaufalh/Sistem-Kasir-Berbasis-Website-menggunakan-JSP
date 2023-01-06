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
                <div class="main-header" style="margin-bottom: 24px;">
                    <h2>Tambah Barang</h2>
                </div>
                <div class="main-1">
                    <div class="input_barang box_shadow flex-item">
                    	<form action="proses/proses_tambah.jsp" method="post">
	                        <label for="nama_produk">Nama Barang</label>
	                        <input type="text" id="nama_produk" name="nama_produk" placeholder="Masukkan jumlah barang">
	                        <label for="stok_produk">Stok Barang</label>
	                        <input type="number" id="stok_produk" name="stok_produk" placeholder="Masukkan jumlah barang">
	                        <label for="harga_produk">Harga Barang</label>
	                        <input type="number" id="harga_produk" name="harga_produk" placeholder="Masukkan jumlah barang">
	                        
	                        <button name="submit" type="submit" class="main-button tambah-button">Tambah Barang</button>
                        </form>
                    </div>
                </div>
            </main>
        </div>
    </div>
</body>

</html>