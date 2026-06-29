package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.Product;

public interface ProductDao {
	int addProduct(Product product);

    int updateProduct(Product product);

    int deleteProduct(int productId);

    Product findById(int productId);

    List<Product> findAll();

}
