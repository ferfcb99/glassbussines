package com.quarkdev.productservice.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "product_variant")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class ProductVariant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "sku", nullable = false, unique = true, length = 250)
    private String sku;

    @Column(name = "price", nullable = false, precision = 10, scale = 2)
    private BigDecimal price;

    @Column(name = "frame_color", length = 50, unique = false, nullable = false)
    private String frameColor;

    @Column(name = "color", length = 50, unique = false, nullable = false)
    private String color;

    @Column(name = "size", length = 20, unique = false, nullable = false)
    private String size;

    @Column(name = "type", length = 50, unique = false, nullable = false)
    private String type;

    @Column(name = "material", length = 100, unique = false, nullable = false)
    private String material;

    @Column(name = "uv_protection")
    private Boolean uvProtection;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "product_id")
    private Product product;

}
