package kr.or.connect.reservation.service;

import java.util.List;

import kr.or.connect.reservation.dto.Product;

public interface ProductService {
	public static final Integer LIMIT = 4;
	public List<Product> getProducts(Integer start);
	public List<Product> getCategorys(Integer start, Integer category_id);
	public int deleteProduct(Long id);
	public Product addProduct(Product product);
	public int getCount();
}