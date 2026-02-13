-- data for brand table
INSERT INTO brand (name) VALUES ('ClearView Glass');
INSERT INTO brand (name) VALUES ('CrystalEdge');
INSERT INTO brand (name) VALUES ('BluePane Industries');
INSERT INTO brand (name) VALUES ('PrimeGlass Solutions');
INSERT INTO brand (name) VALUES ('EverBright Glassworks');


-- Categories for a glass selling system (windows and construction)
INSERT INTO category (name, description) VALUES
('Clear Float Glass', 'Standard transparent flat glass for windows, doors, and general glazing applications'),
('Tempered Glass', 'Heat-treated safety glass that shatters into small granular pieces when broken'),
('Laminated Glass', 'Two or more glass layers bonded with interlayer for security and sound insulation'),
('Insulated Glass Units', 'Double or triple pane glass units with sealed air space for thermal insulation'),
('Tinted Glass', 'Color-tinted glass that reduces glare and solar heat gain in buildings'),
('Reflective Glass', 'Metallic-coated glass that reflects solar radiation and provides privacy'),
('Low-E Glass', 'Low emissivity coated glass for superior energy efficiency and temperature control'),
('Patterned Glass', 'Decorative textured glass offering privacy while allowing natural light transmission'),
('Frosted Glass', 'Acid-etched or sandblasted glass providing translucency and elegant privacy solutions'),
('Mirrors', 'Reflective glass with metallic backing for decorative and functional mirror applications'),
('Shower Glass', 'Water-resistant glass panels and enclosures specifically designed for bathroom showers'),
('Bulletproof Glass', 'Multi-layer security glass designed to resist ballistic impacts and forced entry'),
('Fire-Rated Glass', 'Specialized glass with fire resistance properties for safety compliance requirements'),
('Acoustic Glass', 'Sound-dampening glass designed to reduce noise transmission in buildings'),
('Stained Glass', 'Colored decorative glass pieces arranged in artistic patterns for architectural beauty');



-- Products for glass selling system
-- ProductStatus enum values: AVAILABLE, UNAVAILABLE

-- ClearView Glass products
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('ClearView Premium Float 6mm', 'High-quality transparent float glass, 6mm thickness, perfect for residential windows', '2024-01-15 10:30:00', NULL, 'AVAILABLE', 1, 1);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('ClearView Tempered Safety Glass', '8mm tempered glass for shower enclosures and safety applications', '2024-01-16 09:15:00', NULL, 'AVAILABLE', 2, 1);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('ClearView Double Glazed Unit', 'Energy-efficient double pane insulated glass unit for superior thermal performance', '2024-01-18 14:20:00', NULL, 'AVAILABLE', 4, 1);

-- CrystalEdge products
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('CrystalEdge Laminated Security', '10mm laminated glass with PVB interlayer for security and sound reduction', '2024-01-20 11:45:00', NULL, 'AVAILABLE', 3, 2);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('CrystalEdge Bronze Tinted', 'Bronze tinted glass reducing solar heat gain and glare in commercial buildings', '2024-01-22 08:30:00', NULL, 'AVAILABLE', 5, 2);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('CrystalEdge Low-E Coating', 'Advanced low emissivity coating for maximum energy savings and comfort', '2024-01-25 13:10:00', NULL, 'AVAILABLE', 7, 2);

-- BluePane Industries products

INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('BluePane Reflective Silver', 'Silver reflective glass providing privacy and solar control for office buildings', '2024-02-01 10:00:00', NULL, 'AVAILABLE', 6, 3);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('BluePane Patterned Obscure', 'Decorative patterned glass with rain texture for privacy and aesthetic appeal', '2024-02-03 15:30:00', NULL, 'AVAILABLE', 8, 3);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('BluePane Frosted Elegance', 'Acid-etched frosted glass for bathroom partitions and interior design', '2024-02-05 09:45:00', NULL, 'UNAVAILABLE', 9, 3);

-- PrimeGlass Solutions products
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('PrimeGlass Wall Mirror 4mm', '4mm thickness silver-backed mirror for residential and commercial use', '2024-02-08 11:20:00', NULL, 'AVAILABLE', 10, 4);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('PrimeGlass Shower Enclosure Kit', 'Complete frameless shower glass system with 10mm tempered panels', '2024-02-10 14:00:00', NULL, 'AVAILABLE', 11, 4);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('PrimeGlass Bulletproof Level 3', 'Multi-layer ballistic resistant glass for banks and high-security facilities', '2024-02-12 08:15:00', NULL, 'UNAVAILABLE', 12, 4);

-- EverBright Glassworks products
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('EverBright Fire-Rated 60min', '60-minute fire-rated glass for emergency exits and fire safety compliance', '2024-02-15 10:30:00', NULL, 'AVAILABLE', 13, 5);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('EverBright Acoustic Plus', 'Premium acoustic laminated glass reducing noise transmission up to 45dB', '2024-02-17 13:45:00', NULL, 'AVAILABLE', 14, 5);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('EverBright Stained Art Glass', 'Handcrafted stained glass panels for decorative architectural features', '2024-02-20 09:00:00', NULL, 'AVAILABLE', 15, 5);

-- Additional variety products
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('ClearView Triple Glazed Elite', 'Triple pane insulated unit with argon gas fill for extreme climates', '2024-02-22 11:00:00', '2024-02-23 14:30:00', 'AVAILABLE', 4, 1);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('CrystalEdge Grey Tinted 8mm', '8mm grey tinted glass for automotive and architectural applications', '2024-02-25 15:20:00', NULL, 'AVAILABLE', 5, 2);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('BluePane Vintage Float 4mm', 'Standard 4mm clear float glass for picture framing and light applications', '2024-01-10 08:00:00', NULL, 'UNAVAILABLE', 1, 3);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('PrimeGlass Safety Laminate', '6.38mm laminated glass combining safety and security features', '2024-02-28 10:45:00', NULL, 'AVAILABLE', 3, 4);
INSERT INTO product (name, description, created_at, updated_at, status, category_id, brand_id) VALUES ('EverBright Solar Control', 'High-performance solar control glass reducing cooling costs significantly', '2024-03-01 12:30:00', NULL, 'AVAILABLE', 6, 5);

-- Product Variants for ClearView Premium Float 6mm (product_id: 1)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-PF6-CLR-STD-001', 45.99, 'Silver', 'Clear', '1000x1500mm', 'Float', 'Soda-lime glass', false, '2024-01-15 10:35:00', 1);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-PF6-CLR-LRG-002', 89.99, 'Silver', 'Clear', '2000x2500mm', 'Float', 'Soda-lime glass', false, '2024-01-15 10:36:00', 1);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-PF6-CLR-SML-003', 32.50, 'Silver', 'Clear', '600x800mm', 'Float', 'Soda-lime glass', false, '2024-01-15 10:37:00', 1);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-PF6-CLR-MED-004', 65.00, 'Silver', 'Clear', '1500x2000mm', 'Float', 'Soda-lime glass', false, '2024-01-15 10:38:00', 1);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-PF6-CLR-XLG-005', 125.00, 'Silver', 'Clear', '2500x3000mm', 'Float', 'Soda-lime glass', false, '2024-01-15 10:39:00', 1);

-- Product Variants for ClearView Tempered Safety Glass (product_id: 2)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TSG-CLR-STD-006', 95.50, 'Chrome', 'Clear', '800x2000mm', 'Tempered', 'Heat-treated glass', true, '2024-01-16 09:20:00', 2);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TSG-CLR-SML-007', 75.00, 'Chrome', 'Clear', '600x1800mm', 'Tempered', 'Heat-treated glass', true, '2024-01-16 09:21:00', 2);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TSG-FRT-STD-008', 110.00, 'Chrome', 'Frosted', '800x2000mm', 'Tempered', 'Heat-treated glass', true, '2024-01-16 09:22:00', 2);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TSG-CLR-LRG-009', 135.00, 'Chrome', 'Clear', '1000x2200mm', 'Tempered', 'Heat-treated glass', true, '2024-01-16 09:23:00', 2);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TSG-TNT-STD-010', 105.00, 'Bronze', 'Tinted Bronze', '800x2000mm', 'Tempered', 'Heat-treated glass', true, '2024-01-16 09:24:00', 2);

-- Product Variants for ClearView Double Glazed Unit (product_id: 3)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-DGU-CLR-STD-011', 185.00, 'White', 'Clear', '1200x1500mm', 'Insulated', 'Double pane glass', true, '2024-01-18 14:25:00', 3);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-DGU-CLR-LRG-012', 295.00, 'White', 'Clear', '1800x2200mm', 'Insulated', 'Double pane glass', true, '2024-01-18 14:26:00', 3);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-DGU-LOW-STD-013', 215.00, 'White', 'Low-E Clear', '1200x1500mm', 'Insulated', 'Low-E coated glass', true, '2024-01-18 14:27:00', 3);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-DGU-CLR-SML-014', 145.00, 'White', 'Clear', '900x1200mm', 'Insulated', 'Double pane glass', true, '2024-01-18 14:28:00', 3);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-DGU-ARG-LRG-015', 325.00, 'Aluminum', 'Argon-filled', '1800x2200mm', 'Insulated', 'Argon gas filled', true, '2024-01-18 14:29:00', 3);

-- Product Variants for CrystalEdge Laminated Security (product_id: 4)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LAM-CLR-STD-016', 165.00, 'Black', 'Clear', '1000x1500mm', 'Laminated', 'PVB laminated glass', true, '2024-01-20 11:50:00', 4);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LAM-CLR-LRG-017', 285.00, 'Black', 'Clear', '2000x2500mm', 'Laminated', 'PVB laminated glass', true, '2024-01-20 11:51:00', 4);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LAM-GRY-STD-018', 175.00, 'Black', 'Grey Tinted', '1000x1500mm', 'Laminated', 'PVB laminated glass', true, '2024-01-20 11:52:00', 4);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LAM-CLR-XLG-019', 425.00, 'Black', 'Clear', '3000x3500mm', 'Laminated', 'PVB laminated glass', true, '2024-01-20 11:53:00', 4);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LAM-ACT-STD-020', 195.00, 'Black', 'Acoustic', '1000x1500mm', 'Laminated', 'Acoustic PVB interlayer', true, '2024-01-20 11:54:00', 4);

-- Product Variants for CrystalEdge Bronze Tinted (product_id: 5)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-BRT-BRZ-STD-021', 78.00, 'Bronze', 'Bronze', '1200x1800mm', 'Tinted', 'Bronze tinted glass', true, '2024-01-22 08:35:00', 5);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-BRT-BRZ-LRG-022', 145.00, 'Bronze', 'Bronze', '2000x3000mm', 'Tinted', 'Bronze tinted glass', true, '2024-01-22 08:36:00', 5);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-BRT-BRZ-SML-023', 52.00, 'Bronze', 'Bronze', '800x1200mm', 'Tinted', 'Bronze tinted glass', true, '2024-01-22 08:37:00', 5);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-BRT-DBRZ-STD-024', 92.00, 'Bronze', 'Dark Bronze', '1200x1800mm', 'Tinted', 'Dark bronze tinted glass', true, '2024-01-22 08:38:00', 5);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-BRT-BRZ-MED-025', 98.00, 'Bronze', 'Bronze', '1500x2200mm', 'Tinted', 'Bronze tinted glass', true, '2024-01-22 08:39:00', 5);

-- Product Variants for CrystalEdge Low-E Coating (product_id: 6)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LOW-CLR-STD-026', 125.00, 'Silver', 'Clear', '1200x1600mm', 'Low-E', 'Low-E coated glass', true, '2024-01-25 13:15:00', 6);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LOW-CLR-LRG-027', 225.00, 'Silver', 'Clear', '2000x2800mm', 'Low-E', 'Low-E coated glass', true, '2024-01-25 13:16:00', 6);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LOW-TNT-STD-028', 145.00, 'Silver', 'Tinted Grey', '1200x1600mm', 'Low-E', 'Low-E tinted glass', true, '2024-01-25 13:17:00', 6);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LOW-CLR-SML-029', 85.00, 'Silver', 'Clear', '900x1200mm', 'Low-E', 'Low-E coated glass', true, '2024-01-25 13:18:00', 6);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-LOW-DBL-LRG-030', 275.00, 'Silver', 'Double Silver', '2000x2800mm', 'Low-E', 'Double silver Low-E', true, '2024-01-25 13:19:00', 6);

-- Product Variants for BluePane Reflective Silver (product_id: 7)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-REF-SLV-STD-031', 105.00, 'Aluminum', 'Silver', '1200x1800mm', 'Reflective', 'Metallic coated glass', true, '2024-02-01 10:05:00', 7);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-REF-SLV-LRG-032', 195.00, 'Aluminum', 'Silver', '2000x3000mm', 'Reflective', 'Metallic coated glass', true, '2024-02-01 10:06:00', 7);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-REF-BLU-STD-033', 115.00, 'Aluminum', 'Blue Reflective', '1200x1800mm', 'Reflective', 'Blue metallic coating', true, '2024-02-01 10:07:00', 7);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-REF-GLD-STD-034', 125.00, 'Gold', 'Gold Reflective', '1200x1800mm', 'Reflective', 'Gold metallic coating', true, '2024-02-01 10:08:00', 7);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-REF-SLV-XLG-035', 295.00, 'Aluminum', 'Silver', '2500x3500mm', 'Reflective', 'Metallic coated glass', true, '2024-02-01 10:09:00', 7);

-- Product Variants for BluePane Patterned Obscure (product_id: 8)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-PAT-RAN-STD-036', 68.00, 'Clear', 'Clear', '1000x1500mm', 'Patterned', 'Rain pattern glass', false, '2024-02-03 15:35:00', 8);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-PAT-FLT-STD-037', 72.00, 'Clear', 'Clear', '1000x1500mm', 'Patterned', 'Fluted pattern glass', false, '2024-02-03 15:36:00', 8);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-PAT-RAN-LRG-038', 125.00, 'Clear', 'Clear', '1800x2400mm', 'Patterned', 'Rain pattern glass', false, '2024-02-03 15:37:00', 8);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-PAT-RIP-STD-039', 70.00, 'Clear', 'Clear', '1000x1500mm', 'Patterned', 'Ripple pattern glass', false, '2024-02-03 15:38:00', 8);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-PAT-DMD-SML-040', 48.00, 'Clear', 'Clear', '800x1200mm', 'Patterned', 'Diamond pattern glass', false, '2024-02-03 15:39:00', 8);

-- Product Variants for BluePane Frosted Elegance (product_id: 9)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-FRT-WHT-STD-041', 88.00, 'White', 'Frosted White', '1000x1800mm', 'Frosted', 'Acid-etched glass', false, '2024-02-05 09:50:00', 9);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-FRT-WHT-LRG-042', 155.00, 'White', 'Frosted White', '1500x2500mm', 'Frosted', 'Acid-etched glass', false, '2024-02-05 09:51:00', 9);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-FRT-SND-STD-043', 95.00, 'Clear', 'Sandblasted', '1000x1800mm', 'Frosted', 'Sandblasted glass', false, '2024-02-05 09:52:00', 9);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-FRT-WHT-SML-044', 62.00, 'White', 'Frosted White', '800x1400mm', 'Frosted', 'Acid-etched glass', false, '2024-02-05 09:53:00', 9);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-FRT-PAR-STD-045', 92.00, 'Clear', 'Partial Frosted', '1000x1800mm', 'Frosted', 'Selective etched glass', false, '2024-02-05 09:54:00', 9);

-- Product Variants for PrimeGlass Wall Mirror 4mm (product_id: 10)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-MIR-SLV-STD-046', 55.00, 'Silver', 'Mirror Silver', '600x900mm', 'Mirror', 'Silver-backed mirror', false, '2024-02-08 11:25:00', 10);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-MIR-SLV-LRG-047', 125.00, 'Silver', 'Mirror Silver', '1200x1800mm', 'Mirror', 'Silver-backed mirror', false, '2024-02-08 11:26:00', 10);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-MIR-BRZ-STD-048', 62.00, 'Bronze', 'Bronze Mirror', '600x900mm', 'Mirror', 'Bronze-backed mirror', false, '2024-02-08 11:27:00', 10);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-MIR-SLV-XLG-049', 225.00, 'Silver', 'Mirror Silver', '2000x3000mm', 'Mirror', 'Silver-backed mirror', false, '2024-02-08 11:28:00', 10);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-MIR-GRY-STD-050', 58.00, 'Grey', 'Grey Mirror', '600x900mm', 'Mirror', 'Grey-tinted mirror', false, '2024-02-08 11:29:00', 10);

-- Product Variants for PrimeGlass Shower Enclosure Kit (product_id: 11)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SHW-CLR-STD-051', 385.00, 'Chrome', 'Clear', '900x2000mm', 'Tempered', 'Frameless shower glass', false, '2024-02-10 14:05:00', 11);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SHW-CLR-LRG-052', 485.00, 'Chrome', 'Clear', '1200x2000mm', 'Tempered', 'Frameless shower glass', false, '2024-02-10 14:06:00', 11);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SHW-FRT-STD-053', 425.00, 'Chrome', 'Frosted', '900x2000mm', 'Tempered', 'Frosted shower glass', false, '2024-02-10 14:07:00', 11);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SHW-CLR-XLG-054', 595.00, 'Chrome', 'Clear', '1500x2200mm', 'Tempered', 'Frameless shower glass', false, '2024-02-10 14:08:00', 11);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SHW-BLK-STD-055', 415.00, 'Black', 'Clear', '900x2000mm', 'Tempered', 'Black frame shower glass', false, '2024-02-10 14:09:00', 11);

-- Product Variants for PrimeGlass Bulletproof Level 3 (product_id: 12)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-BUL-L3-STD-056', 1250.00, 'Black', 'Clear', '1000x1500mm', 'Bulletproof', 'Multi-layer ballistic glass', true, '2024-02-12 08:20:00', 12);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-BUL-L3-LRG-057', 2150.00, 'Black', 'Clear', '1500x2000mm', 'Bulletproof', 'Multi-layer ballistic glass', true, '2024-02-12 08:21:00', 12);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-BUL-L4-STD-058', 1650.00, 'Black', 'Clear', '1000x1500mm', 'Bulletproof', 'Level 4 ballistic glass', true, '2024-02-12 08:22:00', 12);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-BUL-L3-SML-059', 895.00, 'Black', 'Clear', '800x1200mm', 'Bulletproof', 'Multi-layer ballistic glass', true, '2024-02-12 08:23:00', 12);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-BUL-L3-TNT-060', 1385.00, 'Black', 'Tinted Grey', '1000x1500mm', 'Bulletproof', 'Tinted ballistic glass', true, '2024-02-12 08:24:00', 12);

-- Product Variants for EverBright Fire-Rated 60min (product_id: 13)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-FIR-60-STD-061', 425.00, 'Steel', 'Clear', '900x2100mm', 'Fire-rated', 'Borosilicate fire glass', true, '2024-02-15 10:35:00', 13);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-FIR-60-LRG-062', 695.00, 'Steel', 'Clear', '1200x2400mm', 'Fire-rated', 'Borosilicate fire glass', true, '2024-02-15 10:36:00', 13);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-FIR-90-STD-063', 585.00, 'Steel', 'Clear', '900x2100mm', 'Fire-rated', '90-min fire-rated glass', true, '2024-02-15 10:37:00', 13);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-FIR-60-SML-064', 325.00, 'Steel', 'Clear', '700x1800mm', 'Fire-rated', 'Borosilicate fire glass', true, '2024-02-15 10:38:00', 13);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-FIR-60-WIR-065', 495.00, 'Steel', 'Wired', '900x2100mm', 'Fire-rated', 'Wired fire-rated glass', true, '2024-02-15 10:39:00', 13);

-- Product Variants for EverBright Acoustic Plus (product_id: 14)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-ACU-CLR-STD-066', 285.00, 'Aluminum', 'Clear', '1200x1800mm', 'Acoustic', 'Acoustic laminated glass', true, '2024-02-17 13:50:00', 14);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-ACU-CLR-LRG-067', 485.00, 'Aluminum', 'Clear', '2000x2800mm', 'Acoustic', 'Acoustic laminated glass', true, '2024-02-17 13:51:00', 14);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-ACU-TNT-STD-068', 315.00, 'Aluminum', 'Tinted Grey', '1200x1800mm', 'Acoustic', 'Tinted acoustic glass', true, '2024-02-17 13:52:00', 14);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-ACU-CLR-SML-069', 195.00, 'Aluminum', 'Clear', '900x1400mm', 'Acoustic', 'Acoustic laminated glass', true, '2024-02-17 13:53:00', 14);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-ACU-DBL-LRG-070', 625.00, 'Aluminum', 'Clear', '2000x2800mm', 'Acoustic', 'Double acoustic laminate', true, '2024-02-17 13:54:00', 14);

-- Product Variants for EverBright Stained Art Glass (product_id: 15)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-STN-MUL-STD-071', 385.00, 'Lead', 'Multicolor', '800x1200mm', 'Stained', 'Hand-crafted stained glass', false, '2024-02-20 09:05:00', 15);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-STN-MUL-LRG-072', 685.00, 'Lead', 'Multicolor', '1200x1800mm', 'Stained', 'Hand-crafted stained glass', false, '2024-02-20 09:06:00', 15);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-STN-BLU-STD-073', 425.00, 'Lead', 'Blue Tones', '800x1200mm', 'Stained', 'Blue art glass', false, '2024-02-20 09:07:00', 15);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-STN-MUL-SML-074', 285.00, 'Lead', 'Multicolor', '600x900mm', 'Stained', 'Hand-crafted stained glass', false, '2024-02-20 09:08:00', 15);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-STN-RED-STD-075', 415.00, 'Lead', 'Red Tones', '800x1200mm', 'Stained', 'Red art glass', false, '2024-02-20 09:09:00', 15);

-- Product Variants for ClearView Triple Glazed Elite (product_id: 16)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TRI-CLR-STD-076', 395.00, 'White', 'Clear', '1200x1600mm', 'Triple Glazed', 'Triple pane argon glass', true, '2024-02-22 11:05:00', 16);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TRI-CLR-LRG-077', 625.00, 'White', 'Clear', '1800x2400mm', 'Triple Glazed', 'Triple pane argon glass', true, '2024-02-22 11:06:00', 16);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TRI-LOW-STD-078', 445.00, 'White', 'Low-E Clear', '1200x1600mm', 'Triple Glazed', 'Low-E triple pane', true, '2024-02-22 11:07:00', 16);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TRI-CLR-SML-079', 295.00, 'White', 'Clear', '900x1200mm', 'Triple Glazed', 'Triple pane argon glass', true, '2024-02-22 11:08:00', 16);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CV-TRI-KRY-LRG-080', 725.00, 'Aluminum', 'Krypton-filled', '1800x2400mm', 'Triple Glazed', 'Krypton gas filled', true, '2024-02-22 11:09:00', 16);

-- Product Variants for CrystalEdge Grey Tinted 8mm (product_id: 17)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-GRT-GRY-STD-081', 85.00, 'Grey', 'Grey', '1200x1800mm', 'Tinted', 'Grey tinted glass', true, '2024-02-25 15:25:00', 17);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-GRT-GRY-LRG-082', 155.00, 'Grey', 'Grey', '2000x3000mm', 'Tinted', 'Grey tinted glass', true, '2024-02-25 15:26:00', 17);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-GRT-DGRY-STD-083', 95.00, 'Grey', 'Dark Grey', '1200x1800mm', 'Tinted', 'Dark grey tinted glass', true, '2024-02-25 15:27:00', 17);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-GRT-GRY-SML-084', 58.00, 'Grey', 'Grey', '800x1200mm', 'Tinted', 'Grey tinted glass', true, '2024-02-25 15:28:00', 17);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('CE-GRT-GRY-MED-085', 115.00, 'Grey', 'Grey', '1500x2200mm', 'Tinted', 'Grey tinted glass', true, '2024-02-25 15:29:00', 17);

-- Product Variants for BluePane Vintage Float 4mm (product_id: 18)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-VIN-CLR-SML-086', 28.00, 'Clear', 'Clear', '400x600mm', 'Float', 'Vintage float glass', false, '2024-01-10 08:05:00', 18);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-VIN-CLR-STD-087', 42.00, 'Clear', 'Clear', '600x800mm', 'Float', 'Vintage float glass', false, '2024-01-10 08:06:00', 18);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-VIN-CLR-MED-088', 55.00, 'Clear', 'Clear', '800x1000mm', 'Float', 'Vintage float glass', false, '2024-01-10 08:07:00', 18);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-VIN-CLR-XSM-089', 18.00, 'Clear', 'Clear', '300x400mm', 'Float', 'Vintage float glass', false, '2024-01-10 08:08:00', 18);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('BP-VIN-CLR-LRG-090', 72.00, 'Clear', 'Clear', '1000x1200mm', 'Float', 'Vintage float glass', false, '2024-01-10 08:09:00', 18);

-- Product Variants for PrimeGlass Safety Laminate (product_id: 19)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SAF-CLR-STD-091', 145.00, 'Clear', 'Clear', '1000x1500mm', 'Laminated', 'Safety laminated glass', true, '2024-02-28 10:50:00', 19);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SAF-CLR-LRG-092', 265.00, 'Clear', 'Clear', '2000x2500mm', 'Laminated', 'Safety laminated glass', true, '2024-02-28 10:51:00', 19);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SAF-TNT-STD-093', 165.00, 'Clear', 'Tinted', '1000x1500mm', 'Laminated', 'Tinted safety laminate', true, '2024-02-28 10:52:00', 19);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SAF-CLR-SML-094', 98.00, 'Clear', 'Clear', '800x1200mm', 'Laminated', 'Safety laminated glass', true, '2024-02-28 10:53:00', 19);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('PG-SAF-CLR-XLG-095', 395.00, 'Clear', 'Clear', '3000x3500mm', 'Laminated', 'Safety laminated glass', true, '2024-02-28 10:54:00', 19);

-- Product Variants for EverBright Solar Control (product_id: 20)
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-BLU-STD-096', 135.00, 'Aluminum', 'Blue Tint', '1200x1800mm', 'Solar Control', 'Solar control coated glass', true, '2024-03-01 12:35:00', 20);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-GRN-STD-097', 138.00, 'Aluminum', 'Green Tint', '1200x1800mm', 'Solar Control', 'Green solar control glass', true, '2024-03-01 12:36:00', 20);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-BLU-LRG-098', 245.00, 'Aluminum', 'Blue Tint', '2000x3000mm', 'Solar Control', 'Solar control coated glass', true, '2024-03-01 12:37:00', 20);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-GRY-STD-099', 142.00, 'Aluminum', 'Grey Tint', '1200x1800mm', 'Solar Control', 'Grey solar control glass', true, '2024-03-01 12:38:00', 20);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-BLU-SML-100', 95.00, 'Aluminum', 'Blue Tint', '900x1400mm', 'Solar Control', 'Solar control coated glass', true, '2024-03-01 12:39:00', 20);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-REF-LRG-101', 285.00, 'Aluminum', 'Reflective Blue', '2000x3000mm', 'Solar Control', 'Reflective solar control', true, '2024-03-01 12:40:00', 20);
INSERT INTO product_variant (sku, price, frame_color, color, size, type, material, uv_protection, created_at, product_id) VALUES ('EB-SOL-SLV-STD-102', 145.00, 'Silver', 'Silver Reflective', '1200x1800mm', 'Solar Control', 'Silver solar reflective', true, '2024-03-01 12:41:00', 20);