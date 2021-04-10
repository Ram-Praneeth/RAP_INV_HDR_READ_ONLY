@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Invoice header Interface view'
define root view entity ZI_RBKP
  as select from ZDEVL_RBKP_TABF
{
  key belnr,
  key gjahr,
      objid,
      blart,
      bldat,
      budat,
      tcode,
      usnam,
      cpudt,
      cputm,
      xblnr,
      lifnr,
      waers,
      kursf,
      wmwst1,
      dmbtr,
      mwskz1,
      zterm,
      rbstat,
      docst
}
