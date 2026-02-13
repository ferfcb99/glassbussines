package com.quarkdev.productservice.repository;

import com.quarkdev.productservice.entity.ProductVariant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Repository
public interface ProductVariantRepository extends JpaRepository<ProductVariant, Long> {

    // jpql
    @Query("SELECT pv FROM ProductVariant pv WHERE pv.product.id = :productId")
    List<ProductVariant> getProductVariantsByProductId(@PathVariable("productId") Long productId);

    @Query("SELECT pv FROM ProductVariant pv WHERE pv.product.name = :productName")
    List<ProductVariant> getProductVariantsByProductName(@PathVariable("productName") String productName);

    @Query("SELECT pv FROM ProductVariant pv WHERE pv.product.category.id = :categoryId")
    List<ProductVariant> getProductVariantsByProductCategoryId(@PathVariable("categoryId") Long categoryId);

    @Query("SELECT pv FROM ProductVariant pv WHERE pv.id = :productVariantId")
    ProductVariant getProductVariantById(@PathVariable("productVariantId") Long productVariantId);

}
