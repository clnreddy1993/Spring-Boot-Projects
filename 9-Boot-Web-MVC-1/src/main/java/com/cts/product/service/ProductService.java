package com.cts.product.service;

import java.util.List;

import com.cts.product.entity.Product;

public interface ProductService {

	Product save(Product product);

	List<Product> listAllProducts();

	Product findById(int id);

	void deleteProduct(int id);

}