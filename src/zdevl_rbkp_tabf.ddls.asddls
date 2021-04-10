@EndUserText.label: 'RBKP Table function'
//@ClientHandling.type: #CLIENT_INDEPENDENT
define table function ZDEVL_RBKP_TABF
  //with parameters parameter_name : parameter_type
returns
{
  key client : abap.clnt;
  key belnr  : zre_belnr;
  key gjahr  : zgjahr;
      objid  : abap.char( 14 );
      blart  : zblart;
      bldat  : abap.dats;
      budat  : abap.dats;
      tcode  : abap.char(20);
      usnam  : syuname;
      cpudt  : abap.dats;
      cputm  : abap.tims;
      xblnr  : abap.char(16);
      lifnr  : abap.char(10);
      @Semantics.currencyCode: true
      waers  : /dmo/currency_code;
      kursf  : abap.dec(9,5);
      @Semantics.amount.currencyCode: 'waers'
      wmwst1 : abap.curr(16,2);
      @Semantics.amount.currencyCode: 'waers'
      dmbtr  : abap.curr(16,2);
      mwskz1 : abap.char(2);
      zterm  : abap.char(4);
      rbstat : abap.char(1);
      docst  : abap.char( 10 );

}
implemented by method
  zcl_rbkp=>get_data;