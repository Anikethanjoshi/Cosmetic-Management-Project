package com.cosmetics.dto;

public class Product {

	private Integer productId;
	private Integer categoryId;
	private String productName;
	private String productType;
	private String productInfo;
	private Long productPrice;
	private Integer stockQuantity;
	private String productImage;
	/**
	 * @return the productId
	 */
	public Integer getProductId() {
		return productId;
	}
	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	/**
	 * @return the categoryId
	 */
	public Integer getCategoryId() {
		return categoryId;
	}
	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	/**
	 * @return the productName
	 */
	public String getProductName() {
		return productName;
	}
	/**
	 * @param productName the productName to set
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}
	/**
	 * @return the productType
	 */
	public String getProductType() {
		return productType;
	}
	/**
	 * @param productType the productType to set
	 */
	public void setProductType(String productType) {
		this.productType = productType;
	}
	/**
	 * @return the productInfo
	 */
	public String getProductInfo() {
		return productInfo;
	}
	/**
	 * @param productInfo the productInfo to set
	 */
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	/**
	 * @return the productPrice
	 */
	public Long getProductPrice() {
		return productPrice;
	}
	/**
	 * @param productPrice the productPrice to set
	 */
	public void setProductPrice(Long productPrice) {
		this.productPrice = productPrice;
	}
	/**
	 * @return the stockQuantity
	 */
	public Integer getStockQuantity() {
		return stockQuantity;
	}
	/**
	 * @param stockQuantity the stockQuantity to set
	 */
	public void setStockQuantity(Integer stockQuantity) {
		this.stockQuantity = stockQuantity;
	}
	/**
	 * @return the productImage
	 */
	public String getProductImage() {
		return productImage;
	}
	/**
	 * @param productImage the productImage to set
	 */
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
}
