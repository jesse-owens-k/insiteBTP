@AbapCatalog.sqlViewName: 'ZAPLX_V_DOC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Document view - CDS data model'

@UI: {
  headerInfo: { typeName: 'Document', typeNamePlural: 'Documents', title: { type: #STANDARD, value: 'belnr' } } }
  
@Search.searchable: true
define root view  zaplx_i_document_u as select from zaplx_xs_doc_hdr 
association [0..1] to zaplx_xs_doc_var as _docvar on $projection.Dvid = _docvar.dvid
association [0..1] to zaplx_xs_region as _region on $projection.Regio = _region.regio
association [0..1] to zaplx_xs_var_grp as _vargrp on $projection.Vgid = _vargrp.vgid
association [0..1] to t001 as _compcode on $projection.Bukrs = _compcode.bukrs
association [0..1] to lfa1 as _vendor on $projection.Lifnr = _vendor.lifnr
{

 
    key mandt as Mandt,
    key u_id as UIdd,
    fpuid as Fpuid,
    guid as Guid,
    chn_id as ChnId,
    chn_typ as ChnTyp,
    dcid as Dcid,
    dcsid as Dcsid,
    dcode as Dcode,
    vgid as Vgid,
    dvid as Dvid,
    regio as Regio,
     @UI: {
          lineItem:       [ { position: 10, importance: #HIGH } ],
          identification: [ { position: 10, label: 'Company' } ],
          selectionField: [ { position: 10 } ] }
      @Consumption.valueHelpDefinition: [{ entity : {name: 't001', element: 'bukrs'  } }]
      @ObjectModel.text.element: ['butxt']
      @Search.defaultSearchElement: true
    bukrs as Bukrs,
    _compcode.butxt,
    @UI.facet: [ { id:              'belnr',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'Document',
                     position:        20 } ]
    belnr as Belnr,
    gjahr as Gjahr,
    blart as Blart,
     @UI: {
          lineItem:       [ { position: 30, importance: #HIGH } ],
          identification: [ { position: 30, label: 'Reference' } ],
          selectionField: [ { position: 30 } ] }
    vbeln as Vbeln,
    fkdat as Fkdat,
    ebeln as Ebeln,
    bedat as Bedat,
    bldat as Bldat,
    xblnr as Xblnr,
    @Semantics.amount.currencyCode : 'waerk'
    sub_total as SubTotal,
    @Semantics.amount.currencyCode : 'waerk'
    ttax as Ttax,
    @Semantics.amount.currencyCode : 'waerk'
    netwr as Netwr,
    waerk as Waerk,
    lifnr as Lifnr,
    kunnr as Kunnr,
    cust_name as CustName,
    file_name as FileName,
    status as Status,
    notes1 as Notes1,
    ddate as Ddate,
    cname as Cname,
    caddr1 as Caddr1,
    caddr2 as Caddr2,
    cpfach as Cpfach,
    ccity as Ccity,
    cpcode as Cpcode,
    cregio as Cregio,
    ccntry as Ccntry,
    vendor_name as VendorName,
    vaddr1 as Vaddr1,
    vaddr2 as Vaddr2,
    vpfach as Vpfach,
    vcity as Vcity,
    vpcode as Vpcode,
    vregio as Vregio,
    vcntry as Vcntry,
    zterm as Zterm,
    vtext as Vtext,
    bankl as Bankl,
    zlsch as Zlsch,
    mpayto as Mpayto,
    tdisty as Tdisty,
    @Semantics.amount.currencyCode : 'waerk'
    zbd1p as Zbd1p,
    zbd1t as Zbd1t,
    @Semantics.amount.currencyCode : 'waerk'
    fwste as Fwste,
    @Semantics.amount.currencyCode : 'waerk'
    hwste as Hwste,
    qnum as Qnum,
    audat as Audat,
    inco2 as Inco2,
    gtart as Gtart,
    vsart as Vsart,
    bolnum as Bolnum,
    bdate as Bdate,
    packnr as Packnr,
    tfrnr as Tfrnr,
    vrtnr as Vrtnr,
    @Semantics.amount.currencyCode : 'waerk'
    dkbetr as Dkbetr,
    signi as Signi,
    datbg as Datbg,
    fob as Fob,
    vstel as Vstel,
    traid as Traid,
    trlnum as Trlnum,
    dterm as Dterm,
    csupp as Csupp,
    crefnr as Crefnr,
    rordnum as Rordnum,
    repres as Repres,
    atelno as Atelno,
    afaxno as Afaxno,
    konnr as Konnr,
    datab as Datab,
    datbi as Datbi,
    attn as Attn,
    dinq as Dinq,
    ekunnr as Ekunnr,
    foruse as Foruse,
    requester as Requester,
    mverified as Mverified,
    recdt as Recdt,
    expense_type as ExpenseType,
    gstin as Gstin,
    cstate_code as CstateCode,
    cstate_name as CstateName,
    vstate_code as VstateCode,
    vstate_name as VstateName,
    @Semantics.amount.currencyCode : 'waerk'
    tot_taxval as TotTaxval,
    @Semantics.amount.currencyCode : 'waerk'
    gst_rate as GstRate,
    @Semantics.amount.currencyCode : 'waerk'
    tot_sgst as TotSgst,
    @Semantics.amount.currencyCode : 'waerk'
    tot_cgst as TotCgst,
    @Semantics.amount.currencyCode : 'waerk'
    tot_igst as TotIgst,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDate.createdAt: true
    created_date as CreatedDate,
    @Semantics.systemTime.createdAt: true
    created_time as CreatedTime,
    @Semantics.user.lastChangedBy: true
    changed_by as ChangedBy,
    @Semantics.systemDate.lastChangedAt: true
    changed_date as ChangedDate,
    @Semantics.systemTime.lastChangedAt: true
    changed_time as ChangedTime,
    
    _docvar,
    _region,
    _vargrp,
    _compcode,
    _vendor
}
