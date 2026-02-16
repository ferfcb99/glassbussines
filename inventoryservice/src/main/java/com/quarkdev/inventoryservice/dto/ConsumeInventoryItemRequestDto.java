package com.quarkdev.inventoryservice.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ConsumeInventoryItemRequestDto {

    private Long productVariantId;

    private Long consumeQuantity;

    private Boolean isReservation;

}
