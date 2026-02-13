package com.quarkdev.productservice.controller;

import com.quarkdev.productservice.dto.ProductVariantDto;
import com.quarkdev.productservice.dto.publics.ResponseApiDto;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface ProductVariantController {

    ResponseEntity<ResponseApiDto<List<ProductVariantDto>>> getProductVariantsByProductId(Long productId);

    ResponseEntity<ResponseApiDto<List<ProductVariantDto>>> getProductVariantsByProductName(String productName);

    ResponseEntity<ResponseApiDto<List<ProductVariantDto>>> getProductVariantsByProductCategoryId(Long categoryId);

    ResponseEntity<ResponseApiDto<ProductVariantDto>> getProductVariantById(Long productVariantId);

}
