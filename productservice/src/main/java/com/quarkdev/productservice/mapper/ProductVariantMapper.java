package com.quarkdev.productservice.mapper;

import com.quarkdev.productservice.dto.ProductVariantDto;
import com.quarkdev.productservice.entity.ProductVariant;

public final class ProductVariantMapper {

    public ProductVariantMapper() {}

    public static ProductVariantDto toEntityToDto(ProductVariant productVariant) {
        ProductVariantDto productVariantDto = new ProductVariantDto();

        productVariantDto.setId(productVariant.getId());
        productVariantDto.setSku(productVariant.getSku());
        productVariantDto.setPrice(productVariant.getPrice());
        productVariantDto.setFrameColor(productVariant.getFrameColor());
        productVariantDto.setColor(productVariant.getColor());
        productVariantDto.setSize(productVariant.getSize());
        productVariantDto.setType(productVariant.getType());
        productVariantDto.setMaterial(productVariant.getMaterial());
        productVariantDto.setUvProtection(productVariant.getUvProtection());

        return productVariantDto;
    }

}
