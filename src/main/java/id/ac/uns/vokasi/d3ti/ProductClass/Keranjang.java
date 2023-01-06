package id.ac.uns.vokasi.d3ti.ProductClass;

import java.util.ArrayList;

public class Keranjang {
	
	ArrayList<Product> all_product = new ArrayList<Product>();
	
	
	public void insertProduct(Product newProduct) {
		all_product.add(newProduct);
	}
	
	
	public ArrayList<Product> getKeranjang(){
		return all_product;
	}

}
