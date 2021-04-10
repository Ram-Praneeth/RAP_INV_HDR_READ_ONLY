@EndUserText.label: 'Invoice header Consumption'
@AccessControl.authorizationCheck: #CHECK

@UI.headerInfo: { typeName: 'Invoice Header',
                  typeNamePlural: 'Invoice Header list' }

@Search.searchable: true

define root view entity ZC_RBKP
  as projection on ZI_RBKP
{
      @UI.facet: [
          { id:     'InvHdr',
          purpose:  #STANDARD,
          type:     #IDENTIFICATION_REFERENCE,
          label:    'Invoice Header details',
          position: 10 } ]

      @UI: { lineItem: [{position: 10, importance: #HIGH, label: 'Invoice no' }],
             fieldGroup: [{qualifier: 'GeneralData1',position: 10,importance: #HIGH, label: 'Invoice Documnent no' }],
             identification: [ { position: 10, label: 'Invoice Documnent no' } ],
             selectionField: [{position: 10 }] }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @EndUserText.quickInfo: 'Invoice Document number'
  key belnr  as Belnr,

      @UI: { lineItem: [{position: 20, importance: #HIGH, label: 'Fiscal year' }],
             fieldGroup: [{qualifier: 'GeneralData1',position: 20,importance: #HIGH, label: 'Fiscal year' }],
             identification: [ { position: 20, label: 'Fiscal year' } ],
             selectionField: [{position: 20 }] }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @EndUserText.quickInfo: 'Fiscal year'
  key gjahr  as FiscalYear,

      @UI : { lineItem: [{position: 30, importance: #HIGH, label: 'Object Id'  }],
              fieldGroup: [{qualifier: 'GeneralData1',position: 30,importance: #HIGH, label: 'Object Id' }],
              identification: [ { position: 30, label: 'Object Id' } ] }
      @EndUserText.quickInfo: 'Object Id'
      objid  as ObjectId,

      @UI: {lineItem: [{position: 40, importance: #HIGH, label: 'Document type'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 40,importance: #HIGH, label: 'Document type' }],
            identification: [ { position: 40, label: 'Document type' } ] }
      @EndUserText.quickInfo: 'Document type'
      blart  as DocType,

      @UI: {lineItem: [{position: 45, importance: #HIGH, label: 'Document date'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 45,importance: #HIGH, label: 'Document date' }],
            identification: [ { position: 50, label: 'Invoice Documnent no' } ] }
      @EndUserText.quickInfo: 'Document date'
      bldat  as DocDate,

      @UI: { lineItem: [{position: 50, importance: #HIGH, label: 'Posting date'  }],
             fieldGroup: [{qualifier: 'GeneralData1',position: 50,importance: #HIGH, label: 'Posting date' }],
             identification: [ { position: 60, label: 'Posting date' } ]  }
      @EndUserText.quickInfo: 'Posting date'
      budat  as PostingDate,

      @UI: {lineItem: [{position: 55, importance: #HIGH, label: 'Transaction code'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 55,importance: #HIGH, label: 'Transaction code' }],
            identification: [ { position: 70, label: 'Transaction code' } ] }
      @EndUserText.quickInfo: 'Transaction code'
      tcode  as Tcode,

      @UI: {lineItem: [{position: 60, importance: #HIGH, label: 'Invoice creator'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 60,importance: #HIGH, label: 'Invoice creator' }],
            identification: [ { position: 80, label: 'Invoice creator' } ] }
      @EndUserText.quickInfo: 'Invoice creator'
      usnam  as Usnam,

      @UI: {lineItem: [{position: 70, importance: #HIGH, label: 'Invoice Date'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 70,importance: #HIGH, label: 'Invoice Date' }],
            identification: [ { position: 90, label: 'Invoice Date' } ] }
      @EndUserText.quickInfo: 'Invoice Date'
      cpudt  as Cpudt,

      @UI: {lineItem: [{position: 80, importance: #HIGH, label: 'Invoice time'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 80,importance: #HIGH, label: 'Invoice time' }],
            identification: [ { position: 100, label: 'Invoice time' } ] }
      @EndUserText.quickInfo: 'Invoice time'
      cputm  as Cputm,

      @UI: {lineItem: [{position: 90, importance: #HIGH, label: 'Reference Doc. no'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 90,importance: #HIGH, label: 'Reference Document no' }],
            identification: [ { position: 110, label: 'Reference Document no' } ] }
      @EndUserText.quickInfo: 'Reference Document no'
      xblnr  as Refno,

      @UI: {lineItem: [{position: 95, importance: #HIGH, label: 'Vendor'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 95,importance: #HIGH, label: 'Vendor' }],
            identification: [ { position: 120, label: 'Vendor' } ],
                         selectionField: [{position: 10 }] }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @EndUserText.quickInfo: 'Vendor'
      lifnr  as Lifnr,

      @UI: {lineItem: [{position: 100, importance: #HIGH, label: 'Currency'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 100,importance: #HIGH, label: 'Currency' }],
            identification: [ { position: 130, label: 'Currency' } ] }
      @EndUserText.quickInfo: 'Currency'
      @Consumption.valueHelpDefinition: [{entity: {name: 'I_Currency', element: 'Currency' }}]
      waers  as Currency,

      @UI: {lineItem: [{position: 110, importance: #HIGH, label: 'Exchange Rate'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 110,importance: #HIGH, label: 'Exchange Rate' }],
            identification: [ { position: 140, label: 'Exchange Rate' } ] }
      @EndUserText.quickInfo: 'Exchange Rate'
      kursf  as ExchRate,

      @UI: {lineItem: [{position: 120, importance: #HIGH, label: 'Tax Amount'  }],
           fieldGroup: [{qualifier: 'GeneralData1',position: 120,importance: #HIGH, label: 'Tax Amount' }],
           identification: [ { position: 150, label: 'Tax Amount' } ] }
      @EndUserText.quickInfo: 'Tax Amount'
      @Semantics.amount.currencyCode: 'Currency'
      wmwst1 as TaxAmt,

      @UI: {lineItem: [{position: 130, importance: #HIGH, label: 'Invoice Amount'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 130,importance: #HIGH, label: 'Invoice Amount' }],
            identification: [ { position: 160, label: 'Invoice Amount' } ] }
      @EndUserText.quickInfo: 'Invoice Amount'
      @Semantics.amount.currencyCode: 'Currency'
      dmbtr  as NetAmt,

      @UI: {lineItem: [{position: 140, importance: #HIGH, label: 'Tax code'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 140,importance: #HIGH, label: 'Tax code' }],
            identification: [ { position: 170, label: 'Tax code' } ] }
      @EndUserText.quickInfo: 'Tax code'

      mwskz1 as Taxcode,

      @UI: {lineItem: [{position: 150, importance: #HIGH, label: 'Payment Terms'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 150,importance: #HIGH, label: 'Payment Terms' }],
            identification: [ { position: 180, label: 'Payment Terms' } ] }
      @EndUserText.quickInfo: 'Terms of Payment'
      zterm  as PaymentTerms,

      @UI: {lineItem: [{position: 160, importance: #HIGH, label: 'Invoice status'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 160,importance: #HIGH, label: 'Invoice status' }],
            identification: [ { position: 190, label: 'Invoice status' } ],
             selectionField: [{position: 10 }] }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @EndUserText.quickInfo: 'Invoice status'
      rbstat as InvStatus,

      @UI: {lineItem: [{position: 170, importance: #HIGH, label: 'Invoice status'  }],
            fieldGroup: [{qualifier: 'GeneralData1',position: 170,importance: #HIGH, label: 'Invoice status' }],
            identification: [ { position: 200, label: 'Invoice status' } ] }
      @EndUserText.quickInfo: 'Invoice status'
      docst  as InvStat
}
