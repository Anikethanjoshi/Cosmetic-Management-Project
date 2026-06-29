package com.cmg.dao;

import java.util.List;

import com.cmg.dto.Product;

public interface ProductDao {
	void  addProduct(Product product);

    void updateProduct(Product product);

    void deleteProduct(int productId);

    Product findById(int productId);

    List<Product> findAll();

}
