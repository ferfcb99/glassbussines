package com.quarkdev.productservice.dto;

import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class ProductVariantDto {

    private Long id;

    private String sku;

    private BigDecimal price;

    private String frameColor;

    private String color;

    private String size;

    private String type;

    private String material;

    private Boolean uvProtection;



}
