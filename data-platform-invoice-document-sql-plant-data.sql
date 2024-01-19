CREATE TABLE `data_platform_invoice_document_plant_data`
(
    `InvoiceDocument`                int(16) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `Plant`                           varchar(4) NOT NULL,
    `PlantFullName`                   varchar(200) DEFAULT NULL,
    `PlantName`                       varchar(100) DEFAULT NULL,
    `Country`                         varchar(3) DEFAULT NULL,
    `Language`                        varchar(2) DEFAULT NULL,
    `ExternalDocumentID`              varchar(40) DEFAULT NULL,
    `AddressID`                       int(12) DEFAULT NULL,
    `EmailAddress`                    varchar(200) DEFAULT NULL,
    
    PRIMARY KEY (`InvoiceDocument`, `BusinessPartner`, `Plant`),
    
    CONSTRAINT `DPFMInvoiceDocumentPlantData_fk` FOREIGN KEY (`InvoiceDocument`) REFERENCES `data_platform_invoice_document_header_data` (`InvoiceDocument`),
    CONSTRAINT `DPFMInvoiceDocumentPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMInvoiceDocumentPlantDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMInvoiceDocumentPlantDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DPFMInvoiceDocumentPlantDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
