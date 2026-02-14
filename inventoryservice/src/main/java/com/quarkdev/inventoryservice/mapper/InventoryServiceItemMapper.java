package com.quarkdev.inventoryservice.mapper;

import com.quarkdev.inventoryservice.dto.InventoryItemDto;
import com.quarkdev.inventoryservice.entity.InventoryItem;

public final class InventoryServiceItemMapper {

    public static InventoryItemDto toDto(InventoryItem inventoryItem){
        InventoryItemDto inventoryItemDto = new InventoryItemDto();
        
        return inventoryItemDto;
    }

}
