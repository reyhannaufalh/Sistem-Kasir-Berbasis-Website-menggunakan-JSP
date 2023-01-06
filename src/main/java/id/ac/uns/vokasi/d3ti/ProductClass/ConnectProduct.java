package id.ac.uns.vokasi.d3ti.ProductClass;

//import java.sql.SQLException;
import java.sql.*;
import java.util.*;


//import com.mysql.jdbc.Driver;
//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.ResultSet;
//import com.mysql.jdbc.Statement;

public class ConnectProduct {
	String url;
	Connection con = null;
	ResultSet rs;
	Statement st;
	ArrayList<Product> data_produk;
	
	public ConnectProduct() {
		data_produk = new ArrayList<>();
		url = "jdbc:mysql://localhost:3306/kasir";
		String username = "root";
		String password= "";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ResultSet getResult(String query) {
		try {
			st = con.createStatement();
			rs = st.executeQuery(query);			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ArrayList<Product> getDataProduk() {
		ResultSet sd = this.getResult("SELECT * FROM produk");
		try {
			while(sd.next()) {
				Product produk = new Product();
				produk.setId_produk(sd.getInt("id_produk"));
				produk.setNama_produk(sd.getString("nama_produk"));
				produk.setStok_produk(sd.getInt("stok_produk"));
				produk.setHarga_produk(sd.getInt("harga_produk"));
				data_produk.add(produk);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return data_produk;
	}
	
	public Product getDataProdukById(String id_produk) {
		ResultSet sd = this.getResult("SELECT * FROM produk WHERE id_produk="+ id_produk+"");
		Product produk = new Product();
		try {
			while(sd.next()) {
				produk.setId_produk(sd.getInt("id_produk"));
				produk.setNama_produk(sd.getString("nama_produk"));
				produk.setStok_produk(sd.getInt("stok_produk"));
				produk.setHarga_produk(sd.getInt("harga_produk"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return produk;
	}
	
	public void tambahProduk(Product produk) {
		String query = "INSERT INTO produk (nama_produk, stok_produk, harga_produk) " + "VALUES ('" + produk.getNama_produk()+"','" + produk.getStok_produk() + "','" + produk.getHarga_produk() + "');";
	
		try {
			System.out.println(query);
			st = con.createStatement();
			st.executeUpdate(query);
		} catch (SQLException e){
			e.printStackTrace();
			System.err.println(e);
		}
		
	}
	
	public void updateProduk(Product produk) {
		String query = "UPDATE produk SET nama_produk = '" + produk.getNama_produk() +"', stok_produk = '" + produk.getStok_produk() + "', harga_produk = '" + produk.getHarga_produk() + "' WHERE produk.id_produk = '" + produk.getId_produk() +"';";
		
		try {
			System.out.println(query);
			st = con.createStatement();
			st.executeUpdate(query);
		} catch (SQLException e){
			e.printStackTrace();
			System.err.println(e);
		}
		
	}
	
	public void hapusProduk(Product produk) {
		String query = "DELETE FROM produk WHERE id_produk = '" + produk.getId_produk() +"';";
		
		try {
			System.out.println(query);
			st = con.createStatement();
			st.executeUpdate(query);
		} catch (SQLException e){
			e.printStackTrace();
			System.err.println(e);
		}
	}
	
	public void updateStok(Product produk) {
		String query = String.format("UPDATE produk SET stok_produk = %s WHERE id_produk = %s",produk.getStok_produk() - produk.getJumlah_produk(), produk.getId_produk());
		
		try {
			System.out.println(query);
			st = con.createStatement();
			st.executeUpdate(query);
		} catch (SQLException e){
			e.printStackTrace();
			System.err.println(e);
		}
	}
}
