package com.quarkdev.inventoryservice.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;


@Entity
@Table(name = "inventory_items")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class InventoryItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "product_variant_id", nullable = false, unique = true)
    private Long productVariantId;

    @Column(name = "availability_quantity", nullable = false, unique = false)
    private Integer availabilityQuantity;

    @Column(name = "reserved_quantity", nullable = false, unique = false)
    private Integer reservedQuantity;

    @Column(name = "created_at", nullable = false, unique = false)
    private LocalDateTime createdAt;

    @Column(name = "update_at", nullable = false, unique = false)
    private LocalDateTime updatedAt;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "warehouse_id")
    private Warehouse warehouse;


}
