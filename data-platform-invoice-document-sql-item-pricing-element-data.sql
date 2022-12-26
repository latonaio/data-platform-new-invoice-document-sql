CREATE TABLE `data_platform_invoice_document_item_pricing_element_data`
(
  `InvoiceDocument`             int(16) NOT NULL,
  `InvoiceDocumentItem`         int(6) NOT NULL,
  `PricingProcedureCounter`     int(3) NOT NULL,
  `ConditionRecord`             int(12) DEFAULT NULL,
  `ConditionSequentialNumber`   int(3) DEFAULT NULL,
  `ConditionType`               varchar(4) DEFAULT NULL,
  `PricingDate`                 date DEFAULT NULL,
  `ConditionRateValue`          float(13) DEFAULT NULL,
  `ConditionCurrency`           varchar(5) DEFAULT NULL,
  `ConditionQuantity`           float(6) DEFAULT NULL,
  `ConditionQuantityUnit`       varchar(3) DEFAULT NULL,
  `TaxCode`                     varchar(2) DEFAULT NULL,
  `ConditionAmount`             float(13) DEFAULT NULL,
  `TransactionCurrency`         varchar(5) DEFAULT NULL,
  `ConditionIsManuallyChanged`  tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`, `PricingProcedureCounter`),
    
  CONSTRAINT `DataPlatformInvoiceDocumentItemPricingElementData_fk` FOREIGN KEY (`InvoiceDocument`, `InvoiceDocumentItem`) REFERENCES `data_platform_invoice_document_item_data` (`InvoiceDocument`, `InvoiceDocumentItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
