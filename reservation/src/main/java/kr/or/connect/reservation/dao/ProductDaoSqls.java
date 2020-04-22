package kr.or.connect.reservation.dao;

public class ProductDaoSqls {
	public static final String SELECT_PAGING = "select product.id, product.category_id,product.description,product.content, file_info.save_file_name FROM product LEFT OUTER JOIN product_image ON product.id=product_image.product_id INNER JOIN file_info ON product_image.file_id=file_info.id WHERE product_image.type='th' limit :start,4";
	public static final String SELECT_CATEGORY = "select product.id, product.category_id,product.description,product.content, file_info.save_file_name FROM product LEFT OUTER JOIN product_image ON product.id=product_image.product_id INNER JOIN file_info ON product_image.file_id=file_info.id WHERE product_image.type='th' AND product.category_id=:category_id limit :start,4";
	public static final String DELETE_BY_ID = "DELETE FROM product WHERE id = :id";
	public static final String SELECT_COUNT = "SELECT count(*) FROM product";
}
