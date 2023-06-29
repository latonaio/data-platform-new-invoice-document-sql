CREATE TABLE `data_platform_invoice_document_item_pricing_element_data`
(
  `InvoiceDocument`             int(16) NOT NULL,
  `InvoiceDocumentItem`         int(6) NOT NULL,
  `PricingProcedureCounter`     int(3) NOT NULL,
  `SupplyChainRelationshipID`   int(16) NOT NULL,
  `Buyer`                       int(12) NOT NULL,
  `Seller`                      int(12) NOT NULL,
  `ConditionRecord`             int(12) NOT NULL,
  `ConditionSequentialNumber`   int(3) NOT NULL,
  `ConditionType`               varchar(4) NOT NULL,
  `PricingDate`                 date NOT NULL,
  `ConditionRateValue`          float(13) NOT NULL,
  `ConditionRateValueUnit`      int(6) NOT NULL,
  `ConditionScaleQuantity`      int(13) NOT NULL,
  `ConditionCurrency`           varchar(5) NOT NULL,
  `ConditionQuantity`           float(6) NOT NULL,
  `TaxCode`                     varchar(2) DEFAULT NULL,
  `ConditionAmount`             float(13) NOT NULL,
  `TransactionCurrency`         varchar(5) NOT NULL,
  `ConditionIsManuallyChanged`  tinyint(1) DEFAULT NULL,
  `CreationDate`                date NOT NULL,
  `CreationTime`                time NOT NULL,
  `LastChangeDate`              date NOT NULL,
  `LastChangeTime`              time NOT NULL,
  `IsCancelled`                 tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`, `PricingProcedureCounter`),
    
  CONSTRAINT `DataPlatformInvoiceDocumentItemPricingElementData_fk` FOREIGN KEY (`InvoiceDocument`, `InvoiceDocumentItem`) REFERENCES `data_platform_invoice_document_item_data` (`InvoiceDocument`, `InvoiceDocumentItem`),
  CONSTRAINT `DataPlatformInvoiceDocumentItemPricingElementDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
