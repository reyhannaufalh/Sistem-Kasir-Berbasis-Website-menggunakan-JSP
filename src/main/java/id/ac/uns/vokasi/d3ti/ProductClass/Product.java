package id.ac.uns.vokasi.d3ti.ProductClass;

public class Product {
	Integer id_produk;
	String nama_produk;
	Integer stok_produk;
	Integer harga_produk;
	Integer jumlah;
	
	public Integer getId_produk() {
		return id_produk;
	}
	public void setId_produk(Integer id_produk) {
		this.id_produk = id_produk;
	}
	public String getNama_produk() {
		return nama_produk;
	}
	public void setNama_produk(String nama_produk) {
		this.nama_produk = nama_produk;
	}
	public Integer getStok_produk() {
		return stok_produk;
	}
	public void setStok_produk(Integer stok_produk) {
		this.stok_produk = stok_produk;
	}
	public Integer getHarga_produk() {
		return harga_produk;
	}
	public void setHarga_produk(Integer harga_produk) {
		this.harga_produk = harga_produk;
	}
	
	public Integer getJumlah_produk() {
		return this.jumlah;
	}
	
	public void setJumlah_produk(Integer newJumlah) {
		this.jumlah = newJumlah;
	}
	
	
}
