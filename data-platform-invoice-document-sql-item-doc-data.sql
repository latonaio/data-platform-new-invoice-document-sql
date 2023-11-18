CREATE TABLE `data_platform_invoice_document_item_doc_data`
(
  `InvoiceDocument`                int(16) NOT NULL,
  `InvoiceDocumentItem`            int(6) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
 
    PRIMARY KEY (`InvoiceDocument`, `InvoiceDocumentItem`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformInvoiceDocumentItemDocData_fk` FOREIGN KEY (`InvoiceDocument`, `InvoiceDocumentItem`) REFERENCES `data_platform_invoice_document_item_data` (`InvoiceDocument`, `InvoiceDocumentItem`),
    CONSTRAINT `DataPlatformInvoiceDocumentItemDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    -- CONSTRAINT `DataPlatformInvoiceDocumentItemDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)　too long

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
