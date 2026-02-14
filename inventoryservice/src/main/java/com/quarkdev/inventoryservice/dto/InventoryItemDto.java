package com.quarkdev.inventoryservice.dto;

import com.quarkdev.inventoryservice.entity.Warehouse;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class InventoryItemDto {

    private Long productVariantId;

    private Integer availabilityQuantity;

    private Integer reservedQuantity;

    private Warehouse warehouseName;

}
