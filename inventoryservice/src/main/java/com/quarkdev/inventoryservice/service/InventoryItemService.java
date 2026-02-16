package com.quarkdev.inventoryservice.service;

import com.quarkdev.inventoryservice.dto.ConsumeInventoryItemRequestDto;
import com.quarkdev.inventoryservice.dto.InventoryItemDto;

public interface InventoryItemService {

    InventoryItemDto getInventoryItemByProductVariantId(Long id);

    String generateConsumptionOrReservation(ConsumeInventoryItemRequestDto consumeInventoryItemRequestDto);

}
