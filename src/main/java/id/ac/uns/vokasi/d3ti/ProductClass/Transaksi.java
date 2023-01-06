package id.ac.uns.vokasi.d3ti.ProductClass;

public class Transaksi {
	Integer id_transaksi;
	Integer id_produk;
	Integer harga_produk;
	Integer jumlah;
	String created_at;
	
	public Integer getId_transaksi() {
		return id_transaksi;
	}
	public void setId_transaksi(Integer id_transaksi) {
		this.id_transaksi = id_transaksi;
	}
	public Integer getId_produk() {
		return id_produk;
	}
	public void setId_produk(Integer id_produk) {
		this.id_produk = id_produk;
	}
	public Integer getHarga_produk() {
		return harga_produk;
	}
	public void setHarga_produk(Integer harga_produk) {
		this.harga_produk = harga_produk;
	}
	public Integer getJumlah() {
		return jumlah;
	}
	public void setJumlah(Integer jumlah) {
		this.jumlah = jumlah;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
}
