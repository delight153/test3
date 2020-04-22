package kr.or.connect.reservation.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.connect.reservation.dao.ProductDao;
import kr.or.connect.reservation.dto.Product;
import kr.or.connect.reservation.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDao productDao;
	

	@Override
	@Transactional
	public List<Product> getProducts(Integer start) {
		List<Product> list = productDao.selectAll(start, ProductService.LIMIT);
		return list;
	}
	
	public List<Product> getCategorys(Integer start, Integer category_id) {
		if(category_id==0) {List<Product> list = productDao.selectAll(start,ProductService.LIMIT);
		return list;}
		else{List<Product> list = productDao.selectCategory(start,category_id);
		return list;}
	}

	@Override
@Transactional(readOnly=false)
	public int deleteProduct(Long id) {
		int deleteCount = productDao.deleteById(id);
		return deleteCount;
	}

	@Override
	@Transactional(readOnly=false)
	public Product addProduct(Product product) {
		product.setModify_date(new Date());
		int id = productDao.insert(product);
		product.setId(id);
		
//		if(1 == 1)
//			throw new RuntimeException("test exception");
//			
		return product;
	}

	@Override
	public int getCount() {
		return productDao.selectCount();
	}
	

	
}