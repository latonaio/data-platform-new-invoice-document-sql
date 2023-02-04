CREATE TABLE `data_platform_invoice_document_item_data`
(
    `InvoiceDocument`                   		int(16) NOT NULL,
    `InvoiceDocumentItem`               		int(6) NOT NULL,
    `InvoiceDocumentItemCategory`       		varchar(4) DEFAULT NULL,
	`SupplyChainRelationshipID`                 int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`         int(6) NOT NULL,
    `SupplyChainRelationshipDeliveryPlantID`    int(4) NOT NULL,
    `InvoiceDocumentItemText`           		varchar(200) DEFAULT NULL,
    `InvoiceDocumentItemTextByBuyer`    		varchar(200) NOT NULL,
    `InvoiceDocumentItemTextBySeller`   		varchar(200) NOT NULL,
    `Product`                           		varchar(40) DEFAULT NULL,
    `ProductGroup`                      		varchar(9) DEFAULT NULL,
    `ProductStandardID`                 		varchar(18) DEFAULT NULL,
    `CreationDate`                              date NOT NULL,
    `CreationTime`                              time NOT NULL,
    `LastChangeDate`                            date NOT NULL,
    `LastChangeTime`                            time NOT NULL,
    `ItemBillingIsConfirmed`            		tinyint(1) DEFAULT NULL,
    `Buyer`                             		int(12) DEFAULT NULL,
    `Seller`                            		int(12) DEFAULT NULL,
    `DeliverToParty`                    		int(12) DEFAULT NULL,
    `DeliverFromParty`                  		int(12) DEFAULT NULL,
    `DeliverToPlant`                      		varchar(4) DEFAULT NULL,
    `DeliverToPlantStorageLocation`       		varchar(4) DEFAULT NULL,
    `DeliverFromPlant`                     		varchar(4) DEFAULT NULL,
    `DeliverFromPlantStorageLocation`      		varchar(4) DEFAULT NULL,
    `ProductionPlantBusinessPartner`    		varchar(4) DEFAULT NULL,
    `ProductionPlant`                   		varchar(4) DEFAULT NULL,
    `ProductionPlantStorageLocation`    		varchar(4) DEFAULT NULL,
    `ServicesRenderedDate`              		date DEFAULT NULL,
    `InvoiceQuantity`                   		float(15) DEFAULT NULL,
    `InvoiceQuantityUnit`               		varchar(3) DEFAULT NULL,
    `InvoiceQuantityInBaseUnit`         		float(15) DEFAULT NULL,
    `BaseUnit`                          		varchar(3) DEFAULT NULL,
    `ActualGoodsIssueDate`              		date DEFAULT NULL,
    `ActualGoodsIssueTime`              		time DEFAULT NULL,
    `ActualGoodsReceiptDate`            		date DEFAULT NULL,
    `ActualGoodsReceiptTime`            		time DEFAULT NULL,
    `ItemGrossWeight`                   		float(15) DEFAULT NULL,
    `ItemNetWeight`                     		float(15) DEFAULT NULL,
    `ItemWeightUnit`                    		varchar(3) DEFAULT NULL,
    `NetAmount`                         		float(13) DEFAULT NULL,
    `TaxAmount`                         		float(13) DEFAULT NULL,
    `GrossAmount`                       		float(13) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`     		varchar(35) DEFAULT NULL,
    `TransactionCurrency`               		varchar(5) DEFAULT NULL,
    `PricingDate`                       		date DEFAULT NULL,
    `TransactionTaxClassification`              varchar(1) NOT NULL,
    `ProductTaxClassificationBillToCountry`		varchar(1) NOT NULL,
    `ProductTaxClassificationBillFromCountry`	varchar(1) NOT NULL,
    `DefinedTaxClassification`                  varchar(1) NOT NULL,
    `Project`                           		varchar(24) DEFAULT NULL,
    `OrderID`                           		int(16) DEFAULT NULL,
    `OrderItem`                         		int(6) DEFAULT NULL,
    `OrderType`                         		varchar(3) DEFAULT NULL,
    `ContractType`                      		varchar(4) DEFAULT NULL,
    `OrderVaridityStartDate`            		date DEFAULT NULL,
    `OrderVaridityEndDate`              		date DEFAULT NULL,
    `InvoicePeriodStartDate`             		date DEFAULT NULL,
    `InvoicePeriodEndDate`               		date DEFAULT NULL,
    `DeliveryDocument`                  		int(16) DEFAULT NULL,
    `DeliveryDocumentItem`              		int(6) DEFAULT NULL,
    `OriginDocument`                    		int(16) DEFAULT NULL,
    `OriginDocumentItem`                		int(6) DEFAULT NULL,
    `ReferenceDocument`                			int(16) DEFAULT NULL,
    `ReferenceDocumentItem`             		int(6) DEFAULT NULL,
    `ExternalReferenceDocument`         		varchar(35) DEFAULT NULL,
    `ExternalReferenceDocumentItem`     		varchar(6) DEFAULT NULL,
    `TaxCode`                           		varchar(2) DEFAULT NULL,
    `TaxRate`                           		float(6) DEFAULT NULL,
    `CountryOfOrigin`                   		varchar(3) DEFAULT NULL,
    `CountryOfOriginLanguage`                   varchar(2) DEFAULT NULL,
    `ItemPaymentRequisitionIsCreated`   		tinyint(1) DEFAULT NULL,
    `ItemPaymentBlockStatus`            		tinyint(1) DEFAULT NULL,
    `IsCancelled`                               tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentItemData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataSupplyChainRelationshipDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_supply_chain_relationship_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataSupplyChainRelationshipDeliveryPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_supply_chain_relationship_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataSupplyChainRelationshipDeliveryPlantRelationProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_delivery_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductGroup_fk` FOREIGN KEY (`ProductGroup`) REFERENCES `data_platform_product_group_product_group_data` (`ProductGroup`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductionPlant_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProductionPlantStorageLocation_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `ProductionPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliverToPlantStorageLocation_fk` FOREIGN KEY (`DeliverToParty`, `DeliverToPlant`, `DeliverToPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliverFromPlantStorageLocation_fk` FOREIGN KEY (`DeliverFromParty`, `DeliverFromPlant`, `DeliverFromPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataInvoiceQuantityUnit_fk` FOREIGN KEY (`InvoiceQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataItemWeightUnit_fk` FOREIGN KEY (`ItemWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataOrderItem_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataDeliveryDocumentItem_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`) REFERENCES `data_platform_delivery_document_item_data` (`DeliveryDocument`, `DeliveryDocumentItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataTaxCode_fk` FOREIGN KEY (`TaxCode`) REFERENCES `data_platform_tax_code_tax_code_data` (`TaxCode`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDataCountryOfOriginLanguage_fk` FOREIGN KEY (`CountryOfOriginLanguage`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
