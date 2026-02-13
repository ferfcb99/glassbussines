package com.quarkdev.productservice.service.impl;

import com.quarkdev.productservice.dto.ProductVariantDto;
import com.quarkdev.productservice.entity.ProductVariant;
import com.quarkdev.productservice.mapper.ProductVariantMapper;
import com.quarkdev.productservice.repository.ProductVariantRepository;
import com.quarkdev.productservice.service.ProductVariantService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductVariantServiceImpl implements ProductVariantService {

    private final ProductVariantRepository productVariantRepository;

    public ProductVariantServiceImpl(ProductVariantRepository productVariantRepository) {
        this.productVariantRepository = productVariantRepository;
    }

    @Override
    public List<ProductVariantDto> getProductVariantsByProductId(Long productId) {
        List<ProductVariant> productVariantList = this.productVariantRepository.getProductVariantsByProductId(productId);
        // map the result
        List<ProductVariantDto> productVariantDtoList = productVariantList.stream()
                .map(ProductVariantMapper::toEntityToDto)
                .toList();

        return productVariantDtoList;
    }

    @Override
    public List<ProductVariantDto> getProductVariantsByProductName(String productName) {
        List<ProductVariant> productVariantList = this.productVariantRepository.getProductVariantsByProductName(productName);
        // map the result
        List<ProductVariantDto> productVariantDtoList = productVariantList.stream()
                .map(ProductVariantMapper::toEntityToDto)
                .toList();

        return productVariantDtoList;
    }

    @Override
    public List<ProductVariantDto> getProductVariantsByProductCategoryId(Long categoryId) {
        List<ProductVariant> productVariantList = this.productVariantRepository.getProductVariantsByProductCategoryId(categoryId);
        // map the result
        List<ProductVariantDto> productVariantDtoList = productVariantList.stream()
                .map(ProductVariantMapper::toEntityToDto)
                .toList();

        return productVariantDtoList;
    }

    @Override
    public ProductVariantDto getProductVariantById(Long productVariantId) {
        ProductVariant productVariant = this.productVariantRepository.getProductVariantById(productVariantId);
        if(productVariant == null) {
            return null;
        }
        return ProductVariantMapper.toEntityToDto(productVariant);
    }
}
