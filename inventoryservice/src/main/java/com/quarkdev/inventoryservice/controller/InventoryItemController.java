package com.quarkdev.inventoryservice.controller;

import com.quarkdev.inventoryservice.dto.ConsumeInventoryItemRequestDto;
import com.quarkdev.inventoryservice.dto.InventoryItemDto;
import com.quarkdev.inventoryservice.dto._publics.ResponseApiDto;
import org.springframework.http.ResponseEntity;

public interface InventoryItemController {


    ResponseEntity<ResponseApiDto<InventoryItemDto>> getInventoryItemByProductVariantId(Long id);

    ResponseEntity<ResponseApiDto<String>> generateConsumptionOrReservation(ConsumeInventoryItemRequestDto consumeInventoryItemRequestDto);

}
