package com.quarkdev.inventoryservice.controller.impl;

import com.quarkdev.inventoryservice.controller.InventoryItemController;
import com.quarkdev.inventoryservice.dto.InventoryItemDto;
import com.quarkdev.inventoryservice.dto._publics.ResponseApiDto;
import com.quarkdev.inventoryservice.service.InventoryItemService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/inventory-items/v1")
public class InventoryItemControllerImpl implements InventoryItemController {

    private final InventoryItemService inventoryItemService;

    public InventoryItemControllerImpl(InventoryItemService inventoryItemService){
        this.inventoryItemService = inventoryItemService;
    }

    @Override
    @GetMapping(value = "/get-variant-product-variant-id/{id}")
    public ResponseEntity<ResponseApiDto<InventoryItemDto>> getInventoryItemByProductVariantId(@PathVariable("id") Long id) {

        InventoryItemDto inventoryItemDto = this.inventoryItemService.getInventoryItemByProductVariantId(id);

        return ResponseEntity.status(HttpStatus.OK)
                .body(new ResponseApiDto<>("", "", inventoryItemDto));
    }
}
