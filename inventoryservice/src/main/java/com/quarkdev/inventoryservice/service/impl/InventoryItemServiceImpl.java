package com.quarkdev.inventoryservice.service.impl;

import com.quarkdev.inventoryservice.dto.ConsumeInventoryItemRequestDto;
import com.quarkdev.inventoryservice.dto.InventoryItemDto;
import com.quarkdev.inventoryservice.entity.InventoryItem;
import com.quarkdev.inventoryservice.mapper.InventoryServiceItemMapper;
import com.quarkdev.inventoryservice.repository.InventoryItemRepository;
import com.quarkdev.inventoryservice.service.InventoryItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class InventoryItemServiceImpl implements InventoryItemService {

    private static final Logger log = LoggerFactory.getLogger(InventoryItemServiceImpl.class);

    private final InventoryItemRepository inventoryItemRepository;

    public InventoryItemServiceImpl(InventoryItemRepository inventoryItemRepository){
        this.inventoryItemRepository = inventoryItemRepository;
    }

    @Override
    public InventoryItemDto getInventoryItemByProductVariantId(Long id) {
        InventoryItem inventoryItem = this.inventoryItemRepository.getReferenceById(id);

        return InventoryServiceItemMapper.toDto(inventoryItem);
    }

    @Override
    public String generateConsumptionOrReservation(ConsumeInventoryItemRequestDto consumeInventoryItemRequestDto) {
        String outcome = "";
        Optional<InventoryItem> inventoryItemToUpdateOptional = this.inventoryItemRepository.findById(consumeInventoryItemRequestDto.getProductVariantId());
        if(inventoryItemToUpdateOptional.isEmpty()){
            outcome = "Product has not been found";
            return outcome;
        }

        InventoryItem inventoryItemToUpdate = inventoryItemToUpdateOptional.get();
        Integer quantityToConsume = Math.toIntExact(consumeInventoryItemRequestDto.getConsumeQuantity());
        Integer quantityAvailable = inventoryItemToUpdate.getAvailabilityQuantity();

        if(!consumeInventoryItemRequestDto.getIsReservation()){
            outcome = processConsumption(inventoryItemToUpdate, quantityToConsume, quantityAvailable);
        }else{
            outcome = processReservation(inventoryItemToUpdate, quantityToConsume, quantityAvailable);
        }

        return outcome;
    }

    private String processConsumption(InventoryItem inventoryItemToUpdate, Integer quantityToConsume, Integer quantityAvailable) {
        String outcome = "The consumption has been applied";
        if(quantityToConsume <= quantityAvailable){
            inventoryItemToUpdate.setAvailabilityQuantity(quantityAvailable - quantityToConsume);
            this.inventoryItemRepository.save(inventoryItemToUpdate);
        }else{
            outcome = "The consumption has been rejected, there are too many available products";
        }
        return outcome;
    }

    private String processReservation(InventoryItem inventoryItemToUpdate, Integer quantityToReserve, Integer quantityAvailable) {
        String outcome = "The reservation has been applied";
        if(quantityToReserve <= quantityAvailable){
            inventoryItemToUpdate.setAvailabilityQuantity(quantityAvailable - quantityToReserve);
            Integer reservedQuantity = inventoryItemToUpdate.getReservedQuantity();
            inventoryItemToUpdate.setReservedQuantity(reservedQuantity + quantityToReserve);
            this.inventoryItemRepository.save(inventoryItemToUpdate);
        }else{
            outcome = "The consumption has been rejected, there are too many available products";
        }
        return outcome;
    }


}
