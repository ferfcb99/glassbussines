package com.quarkdev.productservice.service;

import com.quarkdev.productservice.dto.ProductVariantDto;

import java.util.List;

public interface ProductVariantService {

    List<ProductVariantDto> getProductVariantsByProductId(Long productId);

    List<ProductVariantDto> getProductVariantsByProductName(String productName);

    List<ProductVariantDto> getProductVariantsByProductCategoryId(Long categoryId);

    ProductVariantDto getProductVariantById(Long productVariantId);

}
