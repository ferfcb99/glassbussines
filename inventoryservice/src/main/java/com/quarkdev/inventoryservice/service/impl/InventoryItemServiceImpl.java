package com.quarkdev.inventoryservice.service.impl;

import com.quarkdev.inventoryservice.dto.InventoryItemDto;
import com.quarkdev.inventoryservice.repository.InventoryItemRepository;
import com.quarkdev.inventoryservice.service.InventoryItemService;
import org.springframework.stereotype.Service;

@Service
public class InventoryItemServiceImpl implements InventoryItemService {

    private final InventoryItemRepository inventoryItemRepository;

    public InventoryItemServiceImpl(InventoryItemRepository inventoryItemRepository){
        this.inventoryItemRepository = inventoryItemRepository;
    }

    @Override
    public InventoryItemDto getInventoryItemByProductVariantId(Long id) {

    }
}
