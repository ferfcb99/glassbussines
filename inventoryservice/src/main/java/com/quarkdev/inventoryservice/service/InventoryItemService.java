package com.quarkdev.inventoryservice.service;

import com.quarkdev.inventoryservice.dto.InventoryItemDto;

public interface InventoryItemService {

    InventoryItemDto getInventoryItemByProductVariantId(Long id);

}
