package com.quarkdev.productservice.controller.impl;

import com.quarkdev.productservice.controller.ProductVariantController;
import com.quarkdev.productservice.dto.ProductVariantDto;
import com.quarkdev.productservice.dto.publics.ResponseApiDto;
import com.quarkdev.productservice.service.ProductVariantService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/products-variants/v1")
public class ProductVariantControllerImpl implements ProductVariantController {

    private final ProductVariantService productVariantService;

    public ProductVariantControllerImpl(ProductVariantService productVariantService) {
        this.productVariantService = productVariantService;
    }

    @Override
    @GetMapping(value = "/get-all-by-product-id/{productId}")
    public ResponseEntity<ResponseApiDto<List<ProductVariantDto>>> getProductVariantsByProductId(@PathVariable("productId") Long productId) {
        List<ProductVariantDto> productVariantDtos = productVariantService.getProductVariantsByProductId(productId);
        return ResponseEntity.status(HttpStatus.OK)
                .body(new ResponseApiDto<>("200", "OK", productVariantDtos));
    }

    @Override
    @GetMapping(value = "/get-all-by-product-name/{productName}")
    public ResponseEntity<ResponseApiDto<List<ProductVariantDto>>> getProductVariantsByProductName(@PathVariable("productName") String productName) {
        List<ProductVariantDto> productVariantDtos = productVariantService.getProductVariantsByProductName(productName);
        return ResponseEntity.status(HttpStatus.OK)
                .body(new ResponseApiDto<>("200", "OK", productVariantDtos));
    }

    @Override
    @GetMapping(value = "/get-all-by-product-category-id/{categoryId}")
    public ResponseEntity<ResponseApiDto<List<ProductVariantDto>>> getProductVariantsByProductCategoryId(@PathVariable("categoryId") Long categoryId) {
        List<ProductVariantDto> productVariantDtos = productVariantService.getProductVariantsByProductCategoryId(categoryId);
        return ResponseEntity.status(HttpStatus.OK)
                .body(new ResponseApiDto<>("200", "OK", productVariantDtos));
    }

    @Override
    @GetMapping(value = "/get-by-id/{productVariantId}")
    public ResponseEntity<ResponseApiDto<ProductVariantDto>> getProductVariantById(@PathVariable("productVariantId") Long productVariantId) {
        ProductVariantDto productVariantDto = productVariantService.getProductVariantById(productVariantId);
        return ResponseEntity.status(HttpStatus.OK)
                .body(new ResponseApiDto<>("200", "OK", productVariantDto));
    }
}
