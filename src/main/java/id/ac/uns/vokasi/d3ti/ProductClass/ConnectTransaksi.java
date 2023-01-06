package id.ac.uns.vokasi.d3ti.ProductClass;

//import java.sql.SQLException;
import java.sql.*;
import java.util.*;


//import com.mysql.jdbc.Driver;
//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.ResultSet;
//import com.mysql.jdbc.Statement;


public class ConnectTransaksi {
	String url;
	Connection con = null;
	ResultSet rs;
	Statement st;
	ArrayList<Product> data_produk;
	
	public ConnectTransaksi() {
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
	
	
	public void insertTransaksi(Keranjang keranjang) {
		Random random = new Random();
		
		int nota = random.nextInt(10000, 99999);
		
		for(Product produk : keranjang.getKeranjang()) {
			
			String query = String.format("INSERT INTO transaksi(id_transaksi,id_produk,harga_produk,jumlah,created_at) VALUES (%s,%s,%s,%s, NOW())",nota, produk.getId_produk(), produk.getHarga_produk(), produk.getJumlah_produk());

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
		
		
	 public ArrayList<Transaksi> getAllTransaksi(){

		 ArrayList<Transaksi> all_transaksi = new ArrayList<Transaksi>();
			ResultSet sd = this.getResult("SELECT * FROM transaksi");
			
			try {
				while(sd.next()) {
					Transaksi transaksi = new Transaksi();
					transaksi.setId_transaksi(sd.getInt("id_transaksi"));
					transaksi.setId_produk(sd.getInt("id_produk"));
					transaksi.setHarga_produk(sd.getInt("harga_produk"));
					transaksi.setJumlah(sd.getInt("jumlah"));
					transaksi.setCreated_at(sd.getString("created_at"));
					all_transaksi.add(transaksi);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		return all_transaksi;
	 }

	
}
