--------------------------------------------------------
--  File created - Sunday-June-08-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BINV_ITEMTYPE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SFERP"."BINV_ITEMTYPE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OASSET_CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SFERP"."OASSET_CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OASSET_INFO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SFERP"."OASSET_INFO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_GENERATOR
--------------------------------------------------------

   CREATE SEQUENCE  "SFERP"."SEQUENCE_GENERATOR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 50 START WITH 2050 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence XGLB_COUNTRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SFERP"."XGLB_COUNTRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AGL_ACMAIN
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_ACMAIN" 
   (	"ACMAIN_CODE" VARCHAR2(100), 
	"ACMAIN_NAME" VARCHAR2(100), 
	"ACTYPE_CODE" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(200), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_ACSUB
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_ACSUB" 
   (	"ACSUB_CODE" VARCHAR2(50), 
	"ACMAIN_CODE" VARCHAR2(50), 
	"AC_CODE" VARCHAR2(150), 
	"AC_NAME" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_ACTYPE
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_ACTYPE" 
   (	"ACTYPE_CODE" VARCHAR2(50), 
	"ACTYPE_NAME" VARCHAR2(100), 
	"ACTYPE_GROUP" VARCHAR2(20), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_BUDGET01
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_BUDGET01" 
   (	"PKEY" VARCHAR2(50), 
	"COM_CODE" VARCHAR2(50), 
	"PROJECT_CODE" VARCHAR2(50), 
	"BUDGET_STARTDATE" DATE, 
	"BUDGET_ENDDATE" DATE, 
	"TASK_NOTE" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"TRAN_STATUS" NUMBER
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_BUDGET02
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_BUDGET02" 
   (	"FKEY" VARCHAR2(100), 
	"PKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER, 
	"AC_CODE" VARCHAR2(100), 
	"ACCC_CODE" VARCHAR2(100), 
	"DONER_CODE" VARCHAR2(100), 
	"BUDGET_AMOUNT" NUMBER(18,2)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_CC
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_CC" 
   (	"ACCC_CODE" VARCHAR2(50), 
	"ACCC_NAME" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_TRAN01
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_TRAN01" 
   (	"PKEY" VARCHAR2(100), 
	"TRAN_DATE" DATE, 
	"TRAN_VOUCHNO" VARCHAR2(100), 
	"TRANTYPE_CODE" VARCHAR2(50), 
	"COM_CODE" VARCHAR2(50), 
	"PROJECT_CODE" VARCHAR2(50), 
	"TRAN_ACWITH" VARCHAR2(100), 
	"TASK_NOTE" VARCHAR2(200), 
	"CREATED_AT" DATE, 
	"UPDATED_AT" DATE, 
	"TRAN_STATUS" VARCHAR2(10), 
	"CREATED_BY" VARCHAR2(60), 
	"UPDATED_BY" VARCHAR2(60), 
	"DONOR_CODE" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_TRAN02
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_TRAN02" 
   (	"PKEY" VARCHAR2(100), 
	"FKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER(*,0), 
	"AC_CODE" VARCHAR2(100), 
	"ACCC_CODE" VARCHAR2(50), 
	"TRAN_CRAMT" NUMBER(15,2), 
	"TRAN_DRAMT" NUMBER(15,2), 
	"TRAN_NARRAT" VARCHAR2(200)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table AGL_TRANTYPE
--------------------------------------------------------

  CREATE TABLE "SFERP"."AGL_TRANTYPE" 
   (	"TRANTYPE_CODE" VARCHAR2(50), 
	"TRANTYPE_NAME" VARCHAR2(100), 
	"VOUCH_PREFIX" VARCHAR2(100), 
	"VOUCH_FORMAT" VARCHAR2(100), 
	"AC_REMARK" VARCHAR2(200), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"CREATED_BY" VARCHAR2(60), 
	"UPDATED_BY" VARCHAR2(60)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BGLOBAL_UOM_CONV
--------------------------------------------------------

  CREATE TABLE "SFERP"."BGLOBAL_UOM_CONV" 
   (	"PKEY" VARCHAR2(255), 
	"FROM_UOM_CODE" VARCHAR2(50), 
	"TO_UOM_CODE" VARCHAR2(50), 
	"CONV_FACTOR" FLOAT(126), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BGL_ITEMIZED_UOM_CONV
--------------------------------------------------------

  CREATE TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" 
   (	"PKEY" VARCHAR2(255), 
	"ITEM_CODE" VARCHAR2(30), 
	"FROM_UOM_CODE" VARCHAR2(50), 
	"TO_UOM_CODE" VARCHAR2(50), 
	"CONV_FACTOR" FLOAT(126), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_BOM01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_BOM01" 
   (	"PKEY" VARCHAR2(50), 
	"BOM_CODE" VARCHAR2(50), 
	"BOM_NAME" VARCHAR2(50), 
	"ITEM_CODE" VARCHAR2(50), 
	"BOMREQ_QTY" NUMBER(15,2), 
	"TASK_NOTE" VARCHAR2(100), 
	"BOM_VALIDFROM" DATE, 
	"BOM_EXPIRYDATE" DATE, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"TRAN_STATUS" NUMBER
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_BOM02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_BOM02" 
   (	"PKEY" VARCHAR2(50), 
	"FKEY" VARCHAR2(50), 
	"ITEM_CODE" VARCHAR2(50), 
	"BOM_QTY" NUMBER(15,2), 
	"UOM_CODE" VARCHAR2(20), 
	"BOM_UCOST" FLOAT(126), 
	"TRAN_SL" NUMBER(*,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_BOM03_BYP
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_BOM03_BYP" 
   (	"PKEY" VARCHAR2(50), 
	"FKEY" VARCHAR2(50), 
	"ITEM_CODE" VARCHAR2(50), 
	"BOM_QTY" NUMBER(15,2), 
	"UOM_CODE" VARCHAR2(20), 
	"BOM_UCOST" FLOAT(126), 
	"TRAN_SL" NUMBER(*,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_CATEGORY
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_CATEGORY" 
   (	"CATEGORY_CODE" VARCHAR2(50), 
	"CATEGORY_NAME" VARCHAR2(100), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"AC_CODE" VARCHAR2(100), 
	"ITEM_CL_STOCK_AC_CODE" VARCHAR2(100)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_ITEM
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_ITEM" 
   (	"ITEM_ID" NUMBER, 
	"ITEM_CODE" VARCHAR2(30), 
	"ITEM_NAME" VARCHAR2(150), 
	"CATEGORY_CODE" VARCHAR2(50), 
	"ITEMTYPE_CODE" VARCHAR2(50), 
	"UOM_CODE" VARCHAR2(50), 
	"MIN_STOCK_LEVEL" NUMBER(15,2), 
	"MAX_STOCK_LEVEL" NUMBER(15,2), 
	"REORDER_LEVEL" NUMBER(15,2), 
	"REORDER_QUANTITY" NUMBER(15,2), 
	"AC_CODE" VARCHAR2(30), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_ITEMADJUSTMENT01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_ITEMADJUSTMENT01" 
   (	"PKEY" VARCHAR2(100), 
	"ADJUST_NO" VARCHAR2(100), 
	"ADJUST_DATE" DATE DEFAULT SYSDATE, 
	"TASK_NOTE" VARCHAR2(200), 
	"WAREHOUSE_CODE" VARCHAR2(50), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_ITEMADJUSTMENT02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_ITEMADJUSTMENT02" 
   (	"PKEY" VARCHAR2(100), 
	"FKEY" VARCHAR2(100), 
	"ITEM_CODE" VARCHAR2(100), 
	"UOM_CODE" VARCHAR2(20), 
	"ADJUST_QTY" NUMBER(15,2), 
	"ADJUST_TYPE" VARCHAR2(30)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_ITEMMOVEMENT01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_ITEMMOVEMENT01" 
   (	"PKEY" VARCHAR2(100), 
	"MOVEMENT_NO" VARCHAR2(50), 
	"MOVEMENT_DATE" DATE DEFAULT SYSDATE, 
	"FROM_WAREHOUSE_ID" VARCHAR2(50), 
	"TO_WAREHOUSE_ID" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(200), 
	"MOVEMENT_TYPE" VARCHAR2(50), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_ITEMMOVEMENT02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_ITEMMOVEMENT02" 
   (	"PKEY" VARCHAR2(100), 
	"FKEY" VARCHAR2(100), 
	"ITEM_CODE" VARCHAR2(100), 
	"UOM_CODE" VARCHAR2(20), 
	"MOVEMENT_QTY" NUMBER(10,2), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_OPENING01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_OPENING01" 
   (	"PKEY" VARCHAR2(255), 
	"OPENING_DATE" DATE, 
	"OPENING_REFNO" VARCHAR2(100), 
	"WAREHOUSE_CODE" VARCHAR2(50), 
	"OPENIN_APPROVEDBY" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"TRAN_STATUS" NUMBER
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_OPENING02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_OPENING02" 
   (	"PKEY" VARCHAR2(255), 
	"FKEY" VARCHAR2(255), 
	"TRAN_SL" NUMBER(*,0), 
	"ITEM_CODE" VARCHAR2(50), 
	"ITEM_EXPIRYDATE" DATE, 
	"ITEM_BATCHNO" VARCHAR2(50), 
	"UOM_CODE" VARCHAR2(50), 
	"ITEM_QTY" NUMBER(15,2), 
	"ITEM_PRICE" FLOAT(126)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PO01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PO01" 
   (	"PKEY" VARCHAR2(100), 
	"PO_NO" VARCHAR2(50), 
	"PO_DATE" DATE, 
	"PODELIVERY_DATE" DATE, 
	"TASK_NOTE" VARCHAR2(200), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"APPROVED_BY" VARCHAR2(50), 
	"APPROVED_DATE" DATE, 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"PROJECT_CODE" VARCHAR2(50), 
	"DONOR_CODE" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PO02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PO02" 
   (	"FKEY" VARCHAR2(100), 
	"PKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER(*,0), 
	"ITEM_CODE" VARCHAR2(100), 
	"UOM_CODE" VARCHAR2(20), 
	"PO_QTY" NUMBER(15,2)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PRODUCT01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PRODUCT01" 
   (	"PKEY" VARCHAR2(100), 
	"PRODUCT_CODE" VARCHAR2(100), 
	"PRODUCT_DATE" DATE, 
	"BOM_CODE" VARCHAR2(100), 
	"TRAN_STATUS" NUMBER, 
	"PRODUCED_BY" VARCHAR2(50), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"TASK_NOTE" VARCHAR2(100), 
	"PROJECT_CODE" VARCHAR2(50), 
	"DONOR_CODE" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PRODUCT02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PRODUCT02" 
   (	"FKEY" VARCHAR2(100), 
	"PKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER(*,0), 
	"ITEM_CODE" VARCHAR2(50), 
	"PRODUCT_QTY" NUMBER(15,2), 
	"UOM_CODE" VARCHAR2(20), 
	"PROCT_UCOST" FLOAT(126)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PRODUCT03_BYP
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PRODUCT03_BYP" 
   (	"FKEY" VARCHAR2(100), 
	"PKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER(*,0), 
	"ITEM_CODE" VARCHAR2(50), 
	"PRODUCT_QTY" NUMBER(15,2), 
	"UOM_CODE" VARCHAR2(20), 
	"PROCT_UCOST" FLOAT(126)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PURCHASE01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PURCHASE01" 
   (	"PKEY" VARCHAR2(100), 
	"PO_NO" VARCHAR2(50), 
	"GRN_DATE" DATE, 
	"GRN_NO" VARCHAR2(100), 
	"BP_CODE" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(200), 
	"RECEIVED_BY" VARCHAR2(50), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"PROJECT_CODE" VARCHAR2(50), 
	"DONOR_CODE" VARCHAR2(50), 
	"WAREHOUSE_CODE" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PURCHASE02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PURCHASE02" 
   (	"FKEY" VARCHAR2(20), 
	"PKEY" VARCHAR2(20), 
	"TRAN_SL" NUMBER(*,0), 
	"ITEM_CODE" VARCHAR2(100), 
	"UOM_CODE" VARCHAR2(20), 
	"GRN_QTY" NUMBER(15,2), 
	"GRN_UCOST" NUMBER(15,2)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PURCHRETURN01
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PURCHRETURN01" 
   (	"PKEY" VARCHAR2(100), 
	"RETURN_NO" VARCHAR2(50), 
	"RETURN_DATE" DATE DEFAULT SYSDATE, 
	"GRN_NO" VARCHAR2(100), 
	"BP_CODE" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(200), 
	"RETURN_BY" VARCHAR2(50), 
	"PROJECT_CODE" VARCHAR2(50), 
	"DONOR_CODE" VARCHAR2(50), 
	"WAREHOUSE_CODE" VARCHAR2(50), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_PURCHRETURN02
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_PURCHRETURN02" 
   (	"FKEY" VARCHAR2(100), 
	"PKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER, 
	"ITEM_CODE" VARCHAR2(100), 
	"UOM_CODE" VARCHAR2(20), 
	"RETURN_QTY" NUMBER(15,2), 
	"RETURN_UCOST" NUMBER(15,2)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_TYPE
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_TYPE" 
   (	"ITEMTYPE_ID" NUMBER, 
	"ITEMTYPE_CODE" VARCHAR2(50), 
	"ITEMTYPE_NAME" VARCHAR2(100), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BINV_UOM
--------------------------------------------------------

  CREATE TABLE "SFERP"."BINV_UOM" 
   (	"UOM_CODE" VARCHAR2(50), 
	"UOM_NAME" VARCHAR2(50), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CFG_COLUMN_CONFIG_01
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_COLUMN_CONFIG_01" 
   (	"PKEY" VARCHAR2(64), 
	"SCHEMA_NAME" VARCHAR2(128), 
	"TABLE_NAME" VARCHAR2(128), 
	"TBL_TITLE" VARCHAR2(128), 
	"NGCLASS" VARCHAR2(128), 
	"NGSELECTOR" VARCHAR2(132), 
	"FN" VARCHAR2(128), 
	"KEY_COLUMN" VARCHAR2(4000), 
	"COLUMNS_INFO" CLOB, 
	"BUILD_COMPLETED" CHAR(1), 
	"CODE_BLOCKS" CLOB, 
	"CUSTOM_HTML" VARCHAR2(10) DEFAULT 'N'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CFG_GEN_STORAGE
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_GEN_STORAGE" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})','\1-\2-\3-\4-\5'), 
	"TEMPLATE_INFO" VARCHAR2(60), 
	"PARENT_FOLDER" VARCHAR2(255), 
	"SRC_FOLDER" VARCHAR2(255), 
	"TABLE_NAME" VARCHAR2(255), 
	"TBL_TITLE" VARCHAR2(255), 
	"MASTER_DETAIL_INFO" VARCHAR2(10), 
	"NG_CLASS" VARCHAR2(255), 
	"NG_SELECTOR" VARCHAR2(255), 
	"ROUTE_ENTRY" VARCHAR2(255), 
	"MENU_ENTRY" VARCHAR2(255), 
	"TS_TEXT" CLOB, 
	"CSS_TEXT" CLOB, 
	"HTML_TEXT" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_LOOKUP_INFO
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_LOOKUP_INFO" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
                          '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
                          '\1-\2-\3-\4-\5'), 
	"LOOKUP_KEY" VARCHAR2(60), 
	"LOOKUP_SQL" VARCHAR2(1024)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CFG_LOOKUP_INFO_02
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_LOOKUP_INFO_02" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
                          '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
                          '\1-\2-\3-\4-\5'), 
	"LOOKUP_KEY" VARCHAR2(60), 
	"LABEL" VARCHAR2(244), 
	"VALUE" VARCHAR2(30), 
	"FKEY" VARCHAR2(64)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CFG_LOOKUP_INFO_02_MASTER
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_LOOKUP_INFO_02_MASTER" 
   (	"PKEY" VARCHAR2(4000), 
	"LOOKUP_KEY" VARCHAR2(60), 
	"LOOKUP_DESCRIPTION" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_MASTER_DETAIL_CONFIG
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_MASTER_DETAIL_CONFIG" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
                                                   '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
                                                   '\1-\2-\3-\4-\5'), 
	"MASTER_DETAIL_GROUP" VARCHAR2(60), 
	"MASTER_TABLE_NAME" VARCHAR2(244), 
	"CHILD_TABLE_NAME" VARCHAR2(30), 
	"MASTER_KEY_COLUMN" VARCHAR2(30), 
	"CHILD_REFERENCE_COLUMN" VARCHAR2(30)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CFG_MD_CONFIG_01
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_MD_CONFIG_01" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
    '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
    '\1-\2-\3-\4-\5'), 
	"MD_DESCRIPTION" VARCHAR2(60), 
	"MD_SCHEMA_NAME" VARCHAR2(60) DEFAULT 'sferp', 
	"MASTER_TABLE_NAME" VARCHAR2(244), 
	"MASTER_KEY_COLUMN" VARCHAR2(30), 
	"NGCLASS" VARCHAR2(60), 
	"NGSELECTOR" VARCHAR2(60)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_MD_CONFIG_02
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_MD_CONFIG_02" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
    '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
    '\1-\2-\3-\4-\5'), 
	"FKEY" VARCHAR2(64), 
	"CHILD_TABLE_NAME" VARCHAR2(30), 
	"CHILD_REFERENCE_COLUMN" VARCHAR2(30), 
	"NGCLASS" VARCHAR2(60), 
	"NGSELECTOR" VARCHAR2(60)
   ) ;
--------------------------------------------------------
--  DDL for Table CFG_TEMPLATE_STORAGE
--------------------------------------------------------

  CREATE TABLE "SFERP"."CFG_TEMPLATE_STORAGE" 
   (	"PKEY" VARCHAR2(64) DEFAULT REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
                          '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
                          '\1-\2-\3-\4-\5'), 
	"TEMPLATE_INFO" VARCHAR2(60), 
	"TEMPLATE_TEXT" CLOB
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CITEM_RETURN01
--------------------------------------------------------

  CREATE TABLE "SFERP"."CITEM_RETURN01" 
   (	"PKEY" VARCHAR2(100), 
	"RETURN_NO" VARCHAR2(50), 
	"RETURN_DATE" DATE DEFAULT SYSDATE, 
	"INVOICE_NO" VARCHAR2(50), 
	"BP_CODE" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(100), 
	"RETURN_REASON" VARCHAR2(200), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"PROJECT_CODE" VARCHAR2(50), 
	"DONOR_CODE" VARCHAR2(50), 
	"WAREHOUSE_CODE" VARCHAR2(60)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CITEM_RETURN02
--------------------------------------------------------

  CREATE TABLE "SFERP"."CITEM_RETURN02" 
   (	"PKEY" VARCHAR2(100), 
	"FKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER, 
	"ITEM_CODE" VARCHAR2(50), 
	"UOM_CODE" VARCHAR2(20), 
	"RETURN_QTY" NUMBER(15,2), 
	"UNIT_PRICE" NUMBER(15,2)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CITEM_SALES01
--------------------------------------------------------

  CREATE TABLE "SFERP"."CITEM_SALES01" 
   (	"PKEY" VARCHAR2(100), 
	"INVOICE_NO" VARCHAR2(50), 
	"INVOICE_DATE" DATE DEFAULT SYSDATE, 
	"BP_CODE" VARCHAR2(50), 
	"PAYTERM_ID" VARCHAR2(20), 
	"TASK_NOTE" VARCHAR2(100), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"WAREHOUSE_CODE" VARCHAR2(50), 
	"PROJECT_CODE" VARCHAR2(50), 
	"DONOR_CODE" VARCHAR2(50)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table CITEM_SALES02
--------------------------------------------------------

  CREATE TABLE "SFERP"."CITEM_SALES02" 
   (	"PKEY" VARCHAR2(100), 
	"FKEY" VARCHAR2(100), 
	"TRAN_SL" NUMBER, 
	"ITEM_CODE" VARCHAR2(50), 
	"UOM_CODE" VARCHAR2(20), 
	"SALES_QTY" NUMBER(15,2), 
	"UNIT_PRICE" NUMBER(15,2), 
	"DISCOUNT_AMOUNT" NUMBER(15,2)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table DATABASECHANGELOG
--------------------------------------------------------

  CREATE TABLE "SFERP"."DATABASECHANGELOG" 
   (	"ID" VARCHAR2(255), 
	"AUTHOR" VARCHAR2(255), 
	"FILENAME" VARCHAR2(255), 
	"DATEEXECUTED" TIMESTAMP (6), 
	"ORDEREXECUTED" NUMBER(*,0), 
	"EXECTYPE" VARCHAR2(10), 
	"MD5SUM" VARCHAR2(35), 
	"DESCRIPTION" VARCHAR2(255), 
	"COMMENTS" VARCHAR2(255), 
	"TAG" VARCHAR2(255), 
	"LIQUIBASE" VARCHAR2(20), 
	"CONTEXTS" VARCHAR2(255), 
	"LABELS" VARCHAR2(255), 
	"DEPLOYMENT_ID" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table DATABASECHANGELOGLOCK
--------------------------------------------------------

  CREATE TABLE "SFERP"."DATABASECHANGELOGLOCK" 
   (	"ID" NUMBER(*,0), 
	"LOCKED" NUMBER(1,0), 
	"LOCKGRANTED" TIMESTAMP (6), 
	"LOCKEDBY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table HTE_JHI_USER
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SFERP"."HTE_JHI_USER" 
   (	"ACTIVATED" NUMBER(1,0), 
	"RN_" NUMBER(10,0), 
	"CREATED_DATE" TIMESTAMP (6), 
	"ID" NUMBER(19,0), 
	"LAST_MODIFIED_DATE" TIMESTAMP (6), 
	"RESET_DATE" TIMESTAMP (6), 
	"LANG_KEY" VARCHAR2(10 CHAR), 
	"ACTIVATION_KEY" VARCHAR2(20 CHAR), 
	"RESET_KEY" VARCHAR2(20 CHAR), 
	"CREATED_BY" VARCHAR2(50 CHAR), 
	"FIRST_NAME" VARCHAR2(50 CHAR), 
	"LAST_MODIFIED_BY" VARCHAR2(50 CHAR), 
	"LAST_NAME" VARCHAR2(50 CHAR), 
	"LOGIN" VARCHAR2(50 CHAR), 
	"PASSWORD_HASH" VARCHAR2(60 CHAR), 
	"EMAIL" VARCHAR2(254 CHAR), 
	"IMAGE_URL" VARCHAR2(256 CHAR)
   ) ON COMMIT DELETE ROWS ;
--------------------------------------------------------
--  DDL for Table IMAGES
--------------------------------------------------------

  CREATE TABLE "SFERP"."IMAGES" 
   (	"ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" VARCHAR2(255), 
	"IMAGE" BLOB, 
	"CONTENT_TYPE" VARCHAR2(255 CHAR)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table JHI_AUTHORITY
--------------------------------------------------------

  CREATE TABLE "SFERP"."JHI_AUTHORITY" 
   (	"NAME" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table JHI_USER
--------------------------------------------------------

  CREATE TABLE "SFERP"."JHI_USER" 
   (	"ID" NUMBER(38,0), 
	"LOGIN" VARCHAR2(50), 
	"PASSWORD_HASH" VARCHAR2(60), 
	"FIRST_NAME" VARCHAR2(50), 
	"LAST_NAME" VARCHAR2(50), 
	"EMAIL" VARCHAR2(191), 
	"IMAGE_URL" VARCHAR2(256), 
	"ACTIVATED" NUMBER(1,0), 
	"LANG_KEY" VARCHAR2(10), 
	"ACTIVATION_KEY" VARCHAR2(20), 
	"RESET_KEY" VARCHAR2(20), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_DATE" TIMESTAMP (6), 
	"RESET_DATE" TIMESTAMP (6), 
	"LAST_MODIFIED_BY" VARCHAR2(50), 
	"LAST_MODIFIED_DATE" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table JHI_USER_AUTHORITY
--------------------------------------------------------

  CREATE TABLE "SFERP"."JHI_USER_AUTHORITY" 
   (	"USER_ID" NUMBER(38,0), 
	"AUTHORITY_NAME" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table MAR_RECEIPT
--------------------------------------------------------

  CREATE TABLE "SFERP"."MAR_RECEIPT" 
   (	"PKEY" VARCHAR2(100), 
	"MR_DATE" DATE DEFAULT SYSDATE, 
	"MR_NO" VARCHAR2(50), 
	"BP_CODE" VARCHAR2(50), 
	"PAID_AMOUNT" NUMBER(18,2) DEFAULT 0, 
	"PAYTERM_ID" NUMBER, 
	"TASK_NOTE" VARCHAR2(50), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table NAP_PAYMENT
--------------------------------------------------------

  CREATE TABLE "SFERP"."NAP_PAYMENT" 
   (	"PKEY" VARCHAR2(100), 
	"MR_DATE" DATE DEFAULT SYSDATE, 
	"MR_NO" VARCHAR2(50), 
	"BP_CODE" VARCHAR2(50), 
	"PAID_AMOUNT" NUMBER(18,2) DEFAULT 0, 
	"PAYTERM_ID" NUMBER, 
	"PARTY_3RDREF" VARCHAR2(50), 
	"TASK_NOTE" VARCHAR2(50), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table OASSET_CATEGORY
--------------------------------------------------------

  CREATE TABLE "SFERP"."OASSET_CATEGORY" 
   (	"CATEGORY_ID" NUMBER, 
	"CATEGORY_NAME" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table OASSET_INFO
--------------------------------------------------------

  CREATE TABLE "SFERP"."OASSET_INFO" 
   (	"ASSET_ID" NUMBER, 
	"ASSET_NAME" VARCHAR2(150), 
	"ASSET_TAG" VARCHAR2(50), 
	"USER_CODE" VARCHAR2(50), 
	"CATEGORY_ID" NUMBER, 
	"PURCHASE_DATE" DATE, 
	"PURCHASE_COST" NUMBER(12,2), 
	"WARRANTY_MONTH" DATE, 
	"DEPRECIATION_RATE" NUMBER(5,2), 
	"DEPRECIATION_MONTH" NUMBER(*,0), 
	"TRAN_STATUS" NUMBER, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"APPROVED_BY" VARCHAR2(50), 
	"APPROVED_DATE" DATE, 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table ROLES
--------------------------------------------------------

  CREATE TABLE "SFERP"."ROLES" 
   (	"ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" VARCHAR2(255 CHAR)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SFERP"."USERS" 
   (	"USERNAME" VARCHAR2(255 CHAR), 
	"PASSWORD" VARCHAR2(255 CHAR)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table USER_ROLES
--------------------------------------------------------

  CREATE TABLE "SFERP"."USER_ROLES" 
   (	"USERNAME" VARCHAR2(255 CHAR), 
	"ROLE_ID" NUMBER(19,0)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_BP
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_BP" 
   (	"BP_CODE" VARCHAR2(50), 
	"BP_NAME" VARCHAR2(100), 
	"BPTYPE_CODE" VARCHAR2(50), 
	"BP_GROUP" VARCHAR2(50), 
	"BP_CONPERSON" VARCHAR2(100), 
	"BP_PHONE" VARCHAR2(100), 
	"BP_EMAIL" VARCHAR2(100), 
	"BP_ADD1" VARCHAR2(100), 
	"BP_ADD2" VARCHAR2(100), 
	"BP_ADD3" VARCHAR2(100), 
	"BP_CITY" VARCHAR2(50), 
	"BP_VATNO" VARCHAR2(100), 
	"BP_CREDITLIMIT" NUMBER(15,2), 
	"BP_BANKNAME" VARCHAR2(100), 
	"BP_BANKACNO" VARCHAR2(100), 
	"AC_REMARK" VARCHAR2(200), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_AT" DATE, 
	"UPDATED_AT" DATE, 
	"CREATED_BY" VARCHAR2(60), 
	"UPDATED_BY" VARCHAR2(60)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_BPTYPE
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_BPTYPE" 
   (	"BPTYPE_CODE" VARCHAR2(50), 
	"BPTYPE_NAME" VARCHAR2(50), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_AT" DATE, 
	"CREATED_BY" VARCHAR2(60), 
	"UPDATED_BY" VARCHAR2(60)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_COMP
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_COMP" 
   (	"COM_CODE" VARCHAR2(50), 
	"COM_NAME" VARCHAR2(100), 
	"COM_REGNO" VARCHAR2(50), 
	"COM_CONPERSON" VARCHAR2(100), 
	"COM_ADD1" VARCHAR2(100), 
	"COM_ADD2" VARCHAR2(100), 
	"COM_ADD3" VARCHAR2(100), 
	"COM_CITY" VARCHAR2(50), 
	"COM_PHONE" VARCHAR2(50), 
	"COM_EMAIL" VARCHAR2(100), 
	"COM_WEBSITE" VARCHAR2(100), 
	"COM_LOGO" BLOB, 
	"COM_FY_START" DATE, 
	"COM_FY_END" DATE, 
	"CURRENCY_CODE" VARCHAR2(50), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_AT" DATE, 
	"UPDATED_AT" DATE, 
	"CREATED_BY" VARCHAR2(60), 
	"UPDATED_BY" VARCHAR2(60)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_COUNTRY
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_COUNTRY" 
   (	"COUNTRY_ID" VARCHAR2(80), 
	"COUNTRY_NAME" VARCHAR2(200), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_DATE
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_DATE" 
   (	"DATERNG_ID" VARCHAR2(255), 
	"DATERNG_CODE" VARCHAR2(100), 
	"GLB_STARTDATE" DATE, 
	"GLB_ENDDATE" DATE, 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" VARCHAR2(10) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_FINAL
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_FINAL" 
   (	"AC_REVENUE" VARCHAR2(100), 
	"AC_INVENTORY" VARCHAR2(100), 
	"AC_COGS" VARCHAR2(100), 
	"AC_PAYABLE" VARCHAR2(100), 
	"AC_RECEIVABLE" VARCHAR2(100), 
	"AC_ASSETS" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_PAYTERM
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_PAYTERM" 
   (	"PAYTERM_ID" NUMBER, 
	"PAYMENT_NAME" VARCHAR2(100), 
	"TASK_NOTE" VARCHAR2(200), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE, 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y'
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_USER
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_USER" 
   (	"COM_CODE" VARCHAR2(50), 
	"USER_CODE" VARCHAR2(50), 
	"USER_NAME" VARCHAR2(100), 
	"USER_PICT" BLOB, 
	"USER_PASS" VARCHAR2(100), 
	"USER_EMAIL" VARCHAR2(100), 
	"USER_MOBILE" VARCHAR2(100), 
	"ROLE_ID" VARCHAR2(50), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"IS_LOCKED" CHAR(1) DEFAULT 'N', 
	"LAST_LOGIN" TIMESTAMP (6), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"DELETED_AT" TIMESTAMP (6)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGLB_WAREHOUSE
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGLB_WAREHOUSE" 
   (	"WAREHOUSE_ID" NUMBER, 
	"WAREHOUSE_CODE" VARCHAR2(50), 
	"WAREHOUSE_NAME" VARCHAR2(100), 
	"WAREHOUSE_ADD1" VARCHAR2(100), 
	"WAREHOUSE_ADD2" VARCHAR2(100), 
	"WAREHOUSE_ADD3" VARCHAR2(100), 
	"CONTACT_PERSON" VARCHAR2(100), 
	"CONTACT_NUMBER" VARCHAR2(50), 
	"CONTACT_EMAIL" VARCHAR2(100), 
	"CATEGORY_CODE" VARCHAR2(30), 
	"UOM_CODE" VARCHAR2(50), 
	"LOCATION_ID" VARCHAR2(150), 
	"WAREHOUSE_SECTION" VARCHAR2(50), 
	"WAREHOUSE_FLOOR" VARCHAR2(20), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" DATE DEFAULT SYSDATE, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" DATE
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGL_DONOR
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGL_DONOR" 
   (	"DONOR_CODE" VARCHAR2(50), 
	"DONOR_NAME" VARCHAR2(100), 
	"DONOR_TYPE" VARCHAR2(50), 
	"DONOR_CONPERSON" VARCHAR2(100), 
	"DONOR_PHONE" VARCHAR2(100), 
	"DONOR_EMAIL" VARCHAR2(100), 
	"DONOR_ADD1" VARCHAR2(100), 
	"DONOR_ADD2" VARCHAR2(100), 
	"DONOR_ADD3" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"PKEY" VARCHAR2(100)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table XGL_PROJECT
--------------------------------------------------------

  CREATE TABLE "SFERP"."XGL_PROJECT" 
   (	"PROJECT_CODE" VARCHAR2(50), 
	"PROJECT_NAME" VARCHAR2(100), 
	"PROJECT_TYPE" VARCHAR2(50), 
	"PROJECT_CONPERSON" VARCHAR2(100), 
	"PROJECT_PHONE" VARCHAR2(100), 
	"PROJECT_EMAIL" VARCHAR2(100), 
	"PROJECT_ADD1" VARCHAR2(100), 
	"PROJECT_ADD2" VARCHAR2(100), 
	"PROJECT_ADD3" VARCHAR2(100), 
	"CREATED_BY" VARCHAR2(50), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(50), 
	"UPDATED_AT" TIMESTAMP (6), 
	"IS_ACTIVE" CHAR(1) DEFAULT 'Y', 
	"PROJECT_DIRECTOR" VARCHAR2(200), 
	"PKEY" VARCHAR2(100)
   )  ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for View VW_BASE_MENU_ITEMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_BASE_MENU_ITEMS" ("MENU_ITEM") AS 
  select
'{
  "label": "'||a.TBL_TITLE||'",
  "icon": "pi pi-table",
  "routerLink": ["/easyerp/easybase", "'||a.PKEY||'"]
}' menu_item
from sferp.CFG_COLUMN_CONFIG_01 a order by a.TABLE_NAME
;
--------------------------------------------------------
--  DDL for View VW_CODE_GEN_HELPER
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_CODE_GEN_HELPER" ("PKEY", "TEMPLATE_INFO", "PARENT_FOLDER", "SRC_FOLDER", "FN", "TABLE_NAME", "TBL_TITLE", "MASTER_DETAIL_INFO", "NG_CLASS", "NG_SELECTOR", "ROUTE_ENTRY", "MENU_ENTRY", "TS_TEXT", "CSS_TEXT", "HTML_TEXT") AS 
  select
REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})','\1-\2-\3-\4-\5') PKEY,
'general' template_info,
'../src/app/ngb/easyerp/sferp' parent_folder,
replace(a.fn,'_','') src_folder,
lower(replace(a.fn,'_','')) fn,
a.TABLE_NAME,a.TBL_TITLE,'N' master_detail_info,
a.NGCLASS NG_CLASS, a.NGSELECTOR NG_SELECTOR,
'  { path: "'||FN||'", component: '||NGCLASS||'Component, canActivate: [AuthGuard] }' route_entry,
'{ label: "'||TBL_TITLE||'" , icon: "pi pi-table", routerLink: ["/easyerp/'||FN||'"] }'   menu_entry,
sferp.getTSForTable(a.TABLE_NAME) TS_TEXT,
'@import "../../primary/base-component/base-crud.scss";' CSS_TEXT,
sferp.gethtmlForTable(TABLE_NAME) HTML_TEXT

from sferp.CFG_COLUMN_CONFIG_01 a

union all

select
REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})','\1-\2-\3-\4-\5') PKEY,
'md-master' template_info,
'../src/app/ngb/easyerp/sferp/master-details' parent_folder,
MASTER_DETAIL_GROUP||'/'||'p'||lower(replace(a.fn,'_','')) src_folder,
'p'||lower(replace(a.fn,'_','')) fn,
a.TABLE_NAME,a.TBL_TITLE,'P' master_detail_info,
'P'||a.NGCLASS NG_CLASS, 'p'||a.NGSELECTOR NG_SELECTOR,
'{ path: "p'||FN||'", component: P'||NGCLASS||'Component, canActivate: [AuthGuard] }' route_entry,
'{ label: "p'||TBL_TITLE||'" , icon: "pi pi-table", routerLink: ["/easyerp/p'||FN||'"] }'   menu_entry,
sferp.getParentTSForTable(a.TABLE_NAME) TS_TEXT,
'@import ''../../../../primary/base-component/base-crud.scss'';' CSS_TEXT,
sferp.getParenthtmlForTable(TABLE_NAME) HTML_TEXT
FROM sferp.vw_master_detail_helper a where is_master=1

union all

select
REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),
'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})','\1-\2-\3-\4-\5') PKEY,
'md-detail' template_info,
'../src/app/ngb/easyerp/sferp/master-details' parent_folder,
MASTER_DETAIL_GROUP||'/'||'c'||lower(replace(a.fn,'_','')) src_folder,
'c'||lower(replace(a.fn,'_','')) fn,
a.TABLE_NAME,a.TBL_TITLE,'C' master_detail_info,
'C'||a.NGCLASS NG_CLASS, 'c'||a.NGSELECTOR NG_SELECTOR,
'{ path: "c'||FN||'", component: C'||NGCLASS||'Component, canActivate: [AuthGuard] }' route_entry,
'{ label: "c'||TBL_TITLE||'" , icon: "pi pi-table", routerLink: ["/easyerp/c'||FN||'"] }'   menu_entry,
sferp.getChildTSForTable(a.TABLE_NAME) TS_TEXT,
'@import ''../../../../primary/base-component/base-crud.scss'';' CSS_TEXT,
sferp.getChildhtmlForTable(TABLE_NAME) HTML_TEXT
FROM sferp.vw_master_detail_helper a where is_master=0
;
--------------------------------------------------------
--  DDL for View VW_COLUMNS_CONFIG
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_COLUMNS_CONFIG" ("US", "RS", "COLUMN_ID", "COLUMN_NAME", "TITLE", "FILTER", "LOOKUP_KEY", "DT", "GRID", "INPUT_TYPE", "OPTIONS", "CSW", "UIS") AS 
  SELECT
    j.us,
    j.rs,
    j.column_id,
    j.column_name,
    j.title,
    j.filter,
    j.lookup_key,
    j.dt,
    j.grid,
    j.input_type,
    j.options,
    j.csw,
    j.uis
FROM cfg_column_config_01 t,
     JSON_TABLE(
         t.columns_info,
         '$[*]'
         COLUMNS (
             us NUMBER PATH '$.us',
             rs NUMBER PATH '$.rs',
             column_id VARCHAR2(50) PATH '$.column_id',
             column_name VARCHAR2(50) PATH '$.column',
             title VARCHAR2(100) PATH '$.title',
             filter varchar2(10) PATH '$.filter',
             lookup_key VARCHAR2(50) PATH '$.lookup_key',
             dt VARCHAR2(50) PATH '$.dt',
             grid NUMBER PATH '$.grid',
             input_type VARCHAR2(50) PATH '$.input_type',
             options VARCHAR2(4000) PATH '$.options',
             csw NUMBER PATH '$.csw',
             uis VARCHAR2(100) PATH '$.uis'
         )
     ) j
;
--------------------------------------------------------
--  DDL for View VW_FOR_DETACHED_HTML
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_FOR_DETACHED_HTML" ("PKEY", "SCHEMA_NAME", "TABLE_NAME", "CODE_BLOCKS", "COLUMNS_INFO", "MASTER_HTML", "ITEM_HTML") AS 
  select
    a.pkey,a.SCHEMA_NAME,
    a.TABLE_NAME,
    a.CODE_BLOCKS,
       a.COLUMNS_INFO,
       generate_static_html(COLUMNS_INFO) master_html,
        generate_static_html_item(COLUMNS_INFO) item_html
from sferp.CFG_COLUMN_CONFIG_01 a
order by 1
;
--------------------------------------------------------
--  DDL for View VW_LOOKUP_HELPER
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_LOOKUP_HELPER" ("TABLE_NAME", "LOOKUP_KEY", "SQL") AS 
  with q10 as (select TABLE_NAME,
                    COLUMN_NAME,
                    COLUMN_ID,
                    lead(COLUMN_NAME) over (partition by table_name order by COLUMN_ID) next_column
             from USER_TAB_COLUMNS
             where TABLE_NAME in ('AGL_ACMAIN', 'AGL_ACSUB',
                                  'AGL_ACTYPE'))
select
TABLE_NAME,
lower(TABLE_NAME||'.'||COLUMN_NAME) lookup_key, 'select '||COLUMN_NAME||' '||' || '||'''-''|| '||''   ||next_column||' label , '
    || column_name||' value from sferp.'||table_name||' order by 1' sql from q10 a where COLUMN_ID=1
;
--------------------------------------------------------
--  DDL for View VW_LOOKUP_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_LOOKUP_INFO" ("LOOKUP_KEY", "LOOKUP_SQL") AS 
  select LOOKUP_KEY,LOOKUP_SQL from sferp.CFG_LOOKUP_INFO
union all
select distinct b.LOOKUP_KEY,  'select LABEL ,VALUE  from sferp.cfg_lookup_info_02  where  fkey='''||b.pkey||''' order by 1' sql
from    sferp.CFG_LOOKUP_INFO_02 a join sferp.CFG_LOOKUP_INFO_02_MASTER b on a.FKEY=b.pkey
order by 1
;
--------------------------------------------------------
--  DDL for View VW_MASTER_DETAIL_HELPER
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_MASTER_DETAIL_HELPER" ("SCHEMA_NAME", "TABLE_NAME", "TBL_TITLE", "NGCLASS", "NGSELECTOR", "FN", "PKEY", "COLUMNS_INFO", "MASTER_DETAIL_GROUP", "CONTEXT_COLUMN", "IS_MASTER", "MASTER_SELECTOR", "CHILD_SELECTOR") AS 
  SELECT a."SCHEMA_NAME",a."TABLE_NAME",a."TBL_TITLE",a."NGCLASS",a."NGSELECTOR",a."FN",a."PKEY",a."COLUMNS_INFO", 
       b.MASTER_DETAIL_GROUP,b.MASTER_KEY_COLUMN context_column ,   1 IS_MASTER ,
       'app-'||REPLACE(LOWER(master_table_name), '_', '-') master_selector,
       'app-'||REPLACE(LOWER(child_table_name), '_', '-') child_selector
FROM sferp.vw_ngclass a join sferp.CFG_MASTER_DETAIL_CONFIG b on
    a.TABLE_NAME=b.MASTER_TABLE_NAME
union all
SELECT a."SCHEMA_NAME",a."TABLE_NAME",a."TBL_TITLE",
       a."NGCLASS",a."NGSELECTOR",a."FN",a."PKEY",a."COLUMNS_INFO", 
       b.MASTER_DETAIL_GROUP, b.CHILD_REFERENCE_COLUMN context_column,  0 IS_MASTER ,
        'app-'||REPLACE(LOWER(master_table_name), '_', '-') master_selector,
        'app-'||REPLACE(LOWER(child_table_name), '_', '-') child_selector
FROM sferp.vw_ngclass a join sferp.CFG_MASTER_DETAIL_CONFIG b on
    a.TABLE_NAME=b.CHILD_TABLE_NAME
;
--------------------------------------------------------
--  DDL for View VW_NGCLASS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_NGCLASS" ("SCHEMA_NAME", "TABLE_NAME", "TBL_TITLE", "NGCLASS", "NGSELECTOR", "FN", "PKEY", "COLUMNS_INFO") AS 
  SELECT
    acc.owner AS schema_name,
    acc.table_name,
    INITCAP(REPLACE(LOWER(acc.table_name), '_', ' ')) tbl_title,
    REPLACE(INITCAP(REPLACE(LOWER(acc.table_name), '_', ' ')),' ','') ngClass,
    'app-'||REPLACE(LOWER(acc.table_name), '_', '-') ngselector,
     REPLACE(LOWER(acc.table_name), '_', '') fn,
    acc.column_name pkey,
    sferp.get_column_info_clob(acc.table_name) columns_info
   -- sferp.getSC(acc.TABLE_NAME) ng_source
FROM
    all_cons_columns acc
JOIN
    all_constraints ac
ON
    acc.owner = ac.owner
    AND acc.constraint_name = ac.constraint_name
WHERE
    ac.constraint_type = 'P'  -- P = Primary Key
    AND acc.owner = 'SFERP'  -- এখানে নিজের স্কিমার নাম বসান (CAPS এ)
and  acc.position=1
ORDER BY    acc.table_name, acc.position
;
--------------------------------------------------------
--  DDL for View VW_ROUTE_AND_MENU_HELPER
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_ROUTE_AND_MENU_HELPER" ("SOURCE_NO", "NGCLASS", "IMPORTS", "NGSELECTOR", "ROUTE_ENTRY", "MENU_ENTRY", "IMPORT_ENTRY") AS 
  select
0 source_no,
NGCLASS,NGCLASS||'Component' imports,ngselector,
'  { path: "'||FN||'", component: '||NGCLASS||'Component, canActivate: [AuthGuard] }' route_entry,
'{ label: "'||TBL_TITLE||'" , icon: "pi pi-table", routerLink: ["/easyerp/'||FN||'"] }'   menu_entry,

'import { '||NGCLASS||'Component'||' } from "../../easyerp/sferp/'||fn||'/'||fn||'.component";' import_entry
from sferp.VW_NGCLASS a
union all
select
2,'P'||NGCLASS,'P'||NGCLASS||'Component' imports,'p'||ngselector,
'  { path: "p'||FN||'", component: P'||NGCLASS||'Component, canActivate: [AuthGuard] }' route_entry,
'{ label: "p'||TBL_TITLE||'" , icon: "pi pi-table", routerLink: ["/easyerp/p'||FN||'"] }'   menu_entry,
'import { P'||NGCLASS||'Component'||' } from "../../easyerp/sferp/master-details/'||MASTER_DETAIL_GROUP||'/p'||fn||'/p'||fn||'.component";' import_entry
from sferp.vw_master_detail_helper a where IS_MASTER=1
union all
select
1,'C'||NGCLASS,'C'||NGCLASS||'Component' imports,'c'||ngselector,
'  { path: "c'||FN||'", component: C'||NGCLASS||'Component, canActivate: [AuthGuard] }' route_entry,
'{ label: "c'||TBL_TITLE||'" , icon: "pi pi-table", routerLink: ["/easyerp/c'||FN||'"] }'   menu_entry,
'import { C'||NGCLASS||'Component'||' } from "../../easyerp/sferp/master-details/'||MASTER_DETAIL_GROUP||'/c'||fn||'/c'||fn||'.component";' import_entry
from sferp.vw_master_detail_helper a where IS_MASTER=0
;
--------------------------------------------------------
--  DDL for View VW_UKEY
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFERP"."VW_UKEY" ("PKEY", "UKEY") AS 
  select 1 pkey, RAWTOHEX(SYS_GUID()) ukey from dual
;
REM INSERTING into SFERP.AGL_ACMAIN
SET DEFINE OFF;
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11001','Land','1600','Land owned','SYSTEM',to_timestamp('19-APR-25 07.15.32.045819000 AM','DD-MON-RR HH.MI.SSXFF AM'),'fff',to_timestamp('01-MAY-25 04.23.42.906281000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11002','Buildings','1100','Building assets','SYSTEM',to_timestamp('19-APR-25 07.15.32.046222000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('28-APR-25 03.08.15.414852000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11003','Building Improvements','1100','Capital improvements to buildings','SYSTEM',to_timestamp('19-APR-25 07.15.32.046267000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('28-APR-25 03.44.18.371905000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11004','Leasehold Improvements','1100','Improvements to leased properties','SYSTEM',to_timestamp('19-APR-25 07.15.32.046290000 AM','DD-MON-RR HH.MI.SSXFF AM'),'tt',to_timestamp('14-MAY-25 02.32.32.230123000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11005','Equipment','1100','Business equipment','SYSTEM',to_timestamp('19-APR-25 07.15.32.046312000 AM','DD-MON-RR HH.MI.SSXFF AM'),'nzi',to_timestamp('23-APR-25 01.29.23.312033000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11006','Machinery','1100','Production machinery','SYSTEM',to_timestamp('19-APR-25 07.15.32.046332000 AM','DD-MON-RR HH.MI.SSXFF AM'),'4444',to_timestamp('26-APR-25 05.51.20.801416000 PM','DD-MON-RR HH.MI.SSXFF AM'),'N');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11007','Vehicles','1100','Company vehicles','SYSTEM',to_timestamp('19-APR-25 07.15.32.046352000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046355000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11008','Furniture and Fixtures','1100','Office furniture and fixtures','SYSTEM',to_timestamp('19-APR-25 07.15.32.046372000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046374000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11009','Computer Equipment','1100','Computers and IT hardware','SYSTEM',to_timestamp('19-APR-25 07.15.32.046390000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046392000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11010','Software','1100','Capitalized software costs','SYSTEM',to_timestamp('19-APR-25 07.15.32.046406000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046409000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11011','Accumulated Depreciation','1100','Depreciation contra-account','SYSTEM',to_timestamp('19-APR-25 07.15.32.046424000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046427000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('13001','Patents','1300','Company patents','SYSTEM',to_timestamp('19-APR-25 07.15.32.046441000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 04.19.05.853961000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('13002','Trademarks','1300','Brand trademarks','SYSTEM',to_timestamp('19-APR-25 07.15.32.046460000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046462000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('13003','Goodwill','1300','Business goodwill','SYSTEM',to_timestamp('19-APR-25 07.15.32.046479000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046482000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('13004','Copyrights','1300','Intellectual property rights','SYSTEM',to_timestamp('19-APR-25 07.15.32.046497000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046499000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('13005','Licenses','1300','Business licenses and permits','SYSTEM',to_timestamp('19-APR-25 07.15.32.046513000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046516000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('14001','Bonds','1400','Investment bonds','SYSTEM',to_timestamp('19-APR-25 07.15.32.046532000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046534000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('14002','Stocks','1400','Investment stocks','SYSTEM',to_timestamp('19-APR-25 07.15.32.046550000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046566000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('10106','Prepaid Rent','1000','Prepaid rental payments','SYSTEM',to_timestamp('19-APR-25 07.15.32.046867000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046869000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20001','Accounts Payable','2000','Vendor payables','SYSTEM',to_timestamp('19-APR-25 07.15.32.046883000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046885000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20002','Short-Term Loans','2000','Loans due <1 year','SYSTEM',to_timestamp('19-APR-25 07.15.32.046901000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046903000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20003','Accrued Expenses','2000','Accrued liabilities','SYSTEM',to_timestamp('19-APR-25 07.15.32.046919000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046921000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20004','Taxes Payable','2000','Tax liabilities','SYSTEM',to_timestamp('19-APR-25 07.15.32.046935000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046937000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20005','Wages Payable','2000','Accrued wages','SYSTEM',to_timestamp('19-APR-25 07.15.32.046951000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046954000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20006','Interest Payable','2000','Accrued interest','SYSTEM',to_timestamp('19-APR-25 07.15.32.046969000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046971000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('20007','Dividends Payable','2000','Declared dividends','SYSTEM',to_timestamp('19-APR-25 07.15.32.046985000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.046988000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('21001','Long-Term Loans','2100','Loans due >1 year','SYSTEM',to_timestamp('19-APR-25 07.15.32.047001000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047004000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('21002','Mortgages Payable','2100','Property mortgages','SYSTEM',to_timestamp('19-APR-25 07.15.32.047020000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047022000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('21003','Bonds Payable','2100','Long-term bonds','SYSTEM',to_timestamp('19-APR-25 07.15.32.047037000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047039000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('21004','Lease Obligations','2100','Capital lease obligations','SYSTEM',to_timestamp('19-APR-25 07.15.32.047053000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047055000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('30001','Common Stock','3000','Owner/Shareholder equity','SYSTEM',to_timestamp('19-APR-25 07.15.32.047074000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047076000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('30002','Preferred Stock','3000','Preferred shares','SYSTEM',to_timestamp('19-APR-25 07.15.32.047116000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047120000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('30003','Additional Paid-In Capital','3000','Capital contributions','SYSTEM',to_timestamp('19-APR-25 07.15.32.047137000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047139000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('30004','Retained Earnings','3000','Historical profits','SYSTEM',to_timestamp('19-APR-25 07.15.32.047156000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047161000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('30005','Current Year Earnings','3000','Current year profit/loss','SYSTEM',to_timestamp('19-APR-25 07.15.32.047189000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047195000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('30006','Treasury Stock','3000','Repurchased shares','SYSTEM',to_timestamp('19-APR-25 07.15.32.047222000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047227000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('40001','Sales Revenue','4000','Primary sales income','SYSTEM',to_timestamp('19-APR-25 07.15.32.047256000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047259000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('40002','Service Revenue','4000','Service income','SYSTEM',to_timestamp('19-APR-25 07.15.32.047276000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047279000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('40003','Interest Income','4000','Interest earned','SYSTEM',to_timestamp('19-APR-25 07.15.32.047319000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047322000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('40004','Dividend Income','4000','Dividends received','SYSTEM',to_timestamp('19-APR-25 07.15.32.047342000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047344000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('40005','Rental Income','4000','Property rental income','SYSTEM',to_timestamp('19-APR-25 07.15.32.047359000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047362000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('42001','Sales Returns','4200','Product returns','SYSTEM',to_timestamp('19-APR-25 07.15.32.047376000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047378000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('42002','Sales Allowances','4200','Price reductions','SYSTEM',to_timestamp('19-APR-25 07.15.32.047395000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047397000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('43001','Sales Discounts','4300','Early payment discounts','SYSTEM',to_timestamp('19-APR-25 07.15.32.047412000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047414000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50001','Cost of Goods Sold','5100','Product costs','SYSTEM',to_timestamp('19-APR-25 07.15.32.047429000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047431000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50002','Salaries and Wages','5000','Employee compensation','SYSTEM',to_timestamp('19-APR-25 07.15.32.047448000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047450000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50003','Rent Expense','5000','Facility rental','SYSTEM',to_timestamp('19-APR-25 07.15.32.047465000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047468000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50004','Utilities Expense','5000','Electricity, water, etc.','SYSTEM',to_timestamp('19-APR-25 07.15.32.047482000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047485000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50005','Depreciation Expense','5000','Asset depreciation','SYSTEM',to_timestamp('19-APR-25 07.15.32.047499000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047502000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50006','Interest Expense','5200','Loan interest','SYSTEM',to_timestamp('19-APR-25 07.15.32.047515000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047518000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50007','Insurance Expense','5000','Business insurance','SYSTEM',to_timestamp('19-APR-25 07.15.32.047532000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047534000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50008','Bank Charges','5000','Bank fees and charges','SYSTEM',to_timestamp('19-APR-25 07.15.32.047549000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047552000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50009','Office Supplies','5000','Office consumables','SYSTEM',to_timestamp('19-APR-25 07.15.32.047582000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047584000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50010','Travel Expense','5000','Business travel costs','SYSTEM',to_timestamp('19-APR-25 07.15.32.047599000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047602000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50011','Advertising Expense','5000','Marketing and promotion','SYSTEM',to_timestamp('19-APR-25 07.15.32.047621000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047624000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('50012','Repairs and Maintenance','5000','Asset maintenance','SYSTEM',to_timestamp('19-APR-25 07.15.32.047638000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047640000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('54001','Income Tax Expense','5400','Corporate income tax','SYSTEM',to_timestamp('19-APR-25 07.15.32.047654000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047657000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('54002','Payroll Tax Expense','5400','Employer payroll taxes','SYSTEM',to_timestamp('19-APR-25 07.15.32.047673000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047676000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACMAIN (ACMAIN_CODE,ACMAIN_NAME,ACTYPE_CODE,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('55001','Bad Debt Expense','5500','Uncollectible receivables','SYSTEM',to_timestamp('19-APR-25 07.15.32.047690000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 07.15.32.047693000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
REM INSERTING into SFERP.AGL_ACSUB
SET DEFINE OFF;
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('1010','11001','11001.1010','test1',null,to_timestamp('08-JUN-25 05.21.33.067329000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('1000','11001','10001.1000','Main Operating Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.310779000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 07.54.55.736394000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('1001','10001','10001.1001','Payroll Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.311202000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('02-MAY-25 05.01.47.405954000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('1002','10001','10001.1002','Savings Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.311240000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311243000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('1003','10001','10001.1003','Petty Cash','SYSTEM',to_timestamp('19-APR-25 08.31.21.311263000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311266000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('2000','10006','10006.2000','USD Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.311356000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311359000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('2001','10006','10006.2001','EUR Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.311390000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311392000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('2002','10006','10006.2002','GBP Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.311413000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311416000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('3000','10008','10008.3000','PayPal Business','SYSTEM',to_timestamp('19-APR-25 08.31.21.311462000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311465000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('3001','10008','10008.3001','PayPal Reserve','SYSTEM',to_timestamp('19-APR-25 08.31.21.311495000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311497000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('3002','10009','10009.3002','Stripe Processing','SYSTEM',to_timestamp('19-APR-25 08.31.21.311522000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311524000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('3003','10010','10010.3003','Merchant Account','SYSTEM',to_timestamp('19-APR-25 08.31.21.311543000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311545000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('4000','10101','10101.4000','Trade Receivables','SYSTEM',to_timestamp('19-APR-25 08.31.21.311564000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311566000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('4001','10101','10101.4001','Employee Advances','SYSTEM',to_timestamp('19-APR-25 08.31.21.311584000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311586000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('4002','10101','10101.4002','Intercompany Receivables','SYSTEM',to_timestamp('19-APR-25 08.31.21.311608000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311610000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('5000','10102','10102.5000','Raw Materials','SYSTEM',to_timestamp('19-APR-25 08.31.21.311626000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311628000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('5001','10102','10102.5001','Work in Progress','SYSTEM',to_timestamp('19-APR-25 08.31.21.311646000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311648000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('5002','10102','10102.5002','Finished Goods','SYSTEM',to_timestamp('19-APR-25 08.31.21.311681000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311685000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('5003','10102','10102.5003','Consignment Inventory','SYSTEM',to_timestamp('19-APR-25 08.31.21.311703000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311705000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('6000','11001','11001.6000','Headquarters Land','SYSTEM',to_timestamp('19-APR-25 08.31.21.311729000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 09.22.35.350575000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('6001','11002','11002.6001','Headquarters Building','SYSTEM',to_timestamp('19-APR-25 08.31.21.311753000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311755000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('6002','11005','11005.6002','Production Equipment','SYSTEM',to_timestamp('19-APR-25 08.31.21.311772000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311775000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('6003','11007','11007.6003','Delivery Vehicles','SYSTEM',to_timestamp('19-APR-25 08.31.21.311793000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311795000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('7000','20001','20001.7000','Trade Payables','SYSTEM',to_timestamp('19-APR-25 08.31.21.311818000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311820000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('7001','20001','20001.7001','Utility Payables','SYSTEM',to_timestamp('19-APR-25 08.31.21.311837000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311839000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('7002','20001','20001.7002','Tax Payables','SYSTEM',to_timestamp('19-APR-25 08.31.21.311857000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311860000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('8000','40001','40001.8000','Product Sales - Retail','SYSTEM',to_timestamp('19-APR-25 08.31.21.311876000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311878000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('8001','40001','40001.8001','Product Sales - Wholesale','SYSTEM',to_timestamp('19-APR-25 08.31.21.311895000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311897000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('8002','40002','40002.8002','Consulting Services','SYSTEM',to_timestamp('19-APR-25 08.31.21.311919000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311921000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('9000','50002','50002.9000','Salaries - Management','SYSTEM',to_timestamp('19-APR-25 08.31.21.311938000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311940000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('9001','50002','50002.9001','Salaries - Production','SYSTEM',to_timestamp('19-APR-25 08.31.21.311958000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311960000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('9002','50003','50003.9002','Office Rent','SYSTEM',to_timestamp('19-APR-25 08.31.21.311977000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.311979000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('9003','50003','50003.9003','Warehouse Rent','SYSTEM',to_timestamp('19-APR-25 08.31.21.312001000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.312003000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('9004','50008','50008.9004','Wire Transfer Fees','SYSTEM',to_timestamp('19-APR-25 08.31.21.312020000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.312022000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.AGL_ACSUB (ACSUB_CODE,ACMAIN_CODE,AC_CODE,AC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('9005','50011','50011.9005','Digital Marketing','SYSTEM',to_timestamp('19-APR-25 08.31.21.312040000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('19-APR-25 08.31.21.312043000 AM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into SFERP.AGL_ACTYPE
SET DEFINE OFF;
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1000','Cash and Cash Equivalents','ASSETS','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598489000 AM','DD-MON-RR HH.MI.SSXFF AM'),'SFERP',to_timestamp('03-JUN-25 05.15.52.950394000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1100','Fixed Assets','ASSETS','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598535000 AM','DD-MON-RR HH.MI.SSXFF AM'),'SFERP',to_timestamp('04-JUN-25 01.42.21.124112000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1300','Inventory','Income','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598559000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598561000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1400','Prepaid Expenses','Equity','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598566000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598568000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1500','Intangible Assets','ASSETS','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598574000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598576000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1600','Investments','Expenses','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598581000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598583000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1700','Other Current Assets','ASSETS','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598589000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598590000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2000','Accounts Payable','Equity','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598596000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598598000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2100','Accrued Liabilities','Equity','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598604000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598605000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2200','Short-Term Debt','ASSETS','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598611000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598612000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2300','Taxes Payable','Liabilities','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598618000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598620000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2400','Long-Term Debt','LIABILITY','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598625000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598627000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2500','Other Liabilities','LIABILITY','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598632000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598634000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('3000','Common Stock','EQUITY','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598640000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598641000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('3100','Preferred Stock','EQUITY','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598647000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598648000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('3200','Retained Earnings','EQUITY','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598653000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598655000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('3300','Other Equity','EQUITY','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598661000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598663000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4000','Product Sales','INCOME','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598668000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598670000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4100','Service Revenue','INCOME','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598675000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598677000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4200','Other Operating Revenue','INCOME','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598683000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598684000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4300','Interest Income','INCOME','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598690000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598691000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4400','Sales Returns and Allowances','INCOME','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598696000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598698000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4500','Sales Discounts','INCOME','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598704000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598706000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5000','Cost of Goods Sold','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598711000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598713000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5100','Salaries and Wages','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598718000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598719000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5200','Rent Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598726000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598727000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5300','Utilities Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598732000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598734000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5400','Depreciation Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598740000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598741000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5500','Interest Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598747000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598749000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5600','Insurance Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598754000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598756000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5700','Tax Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598761000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598762000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5800','Bad Debt Expense','EXPENSE','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598769000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598770000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_ACTYPE (ACTYPE_CODE,ACTYPE_NAME,ACTYPE_GROUP,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5900','Other Operating Expenses','ASSETS','SYSTEM',to_timestamp('01-MAY-25 05.06.40.598775000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('01-MAY-25 05.06.40.598777000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
REM INSERTING into SFERP.AGL_BUDGET01
SET DEFINE OFF;
REM INSERTING into SFERP.AGL_BUDGET02
SET DEFINE OFF;
REM INSERTING into SFERP.AGL_CC
SET DEFINE OFF;
Insert into SFERP.AGL_CC (ACCC_CODE,ACCC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('CC1001','Head Office Admin','admin_user',to_timestamp('01-MAY-25 02.12.21.027383000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.AGL_CC (ACCC_CODE,ACCC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('CC1002','Factory Maintenance','admin_user',to_timestamp('01-MAY-25 02.12.21.079020000 AM','DD-MON-RR HH.MI.SSXFF AM'),'audit_user',to_timestamp('01-MAY-25 02.12.21.079020000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.AGL_CC (ACCC_CODE,ACCC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('CC1003','Sales Marketing','admin_user',to_timestamp('01-MAY-25 02.12.21.126470000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.AGL_CC (ACCC_CODE,ACCC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('CC1004','Research Development','r_d_user',to_timestamp('01-MAY-25 02.12.21.173547000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.AGL_CC (ACCC_CODE,ACCC_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('CC1005','Customer Support','support_user',to_timestamp('01-MAY-25 02.12.21.221821000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
REM INSERTING into SFERP.AGL_TRAN01
SET DEFINE OFF;
Insert into SFERP.AGL_TRAN01 (PKEY,TRAN_DATE,TRAN_VOUCHNO,TRANTYPE_CODE,COM_CODE,PROJECT_CODE,TRAN_ACWITH,TASK_NOTE,CREATED_AT,UPDATED_AT,TRAN_STATUS,CREATED_BY,UPDATED_BY,DONOR_CODE) values ('003276e8-e8d6-4134-bf8a-dc2b6fa376a9',to_date('19-MAY-25','DD-MON-RR'),'54556','BP','CMP01','PRJ001','1000','5455',null,null,'Y',null,null,'DN001');
Insert into SFERP.AGL_TRAN01 (PKEY,TRAN_DATE,TRAN_VOUCHNO,TRANTYPE_CODE,COM_CODE,PROJECT_CODE,TRAN_ACWITH,TASK_NOTE,CREATED_AT,UPDATED_AT,TRAN_STATUS,CREATED_BY,UPDATED_BY,DONOR_CODE) values ('10f19399-de82-4c28-a2e0-6a2fcaecefb7',to_date('21-MAY-25','DD-MON-RR'),'7676','CN','CMP02','PRJ002','1002','6454',null,null,'Y',null,null,'DN002');
Insert into SFERP.AGL_TRAN01 (PKEY,TRAN_DATE,TRAN_VOUCHNO,TRANTYPE_CODE,COM_CODE,PROJECT_CODE,TRAN_ACWITH,TASK_NOTE,CREATED_AT,UPDATED_AT,TRAN_STATUS,CREATED_BY,UPDATED_BY,DONOR_CODE) values ('d72539ba-3dea-4474-96b1-6f9ea850e2ad',to_date('22-MAY-25','DD-MON-RR'),'6565','BR','CMP01','PRJ001','1002','45454',null,null,'Y',null,null,'DN002');
REM INSERTING into SFERP.AGL_TRAN02
SET DEFINE OFF;
REM INSERTING into SFERP.AGL_TRANTYPE
SET DEFINE OFF;
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('CP','Cash Payment','CP-','CP-YYYYMM-#####','Cash disbursement transactions',to_timestamp('15-APR-25 02.57.33.407219000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407236000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('CR','Cash Receipt','CR-','CR-YYYYMM-#####','Cash collection transactions',to_timestamp('15-APR-25 02.57.33.407269000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407274000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BP','Bank Payment','BP-','BP-YYYYMM-#####','Bank payment transactions',to_timestamp('15-APR-25 02.57.33.407282000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407285000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BR','Bank Receipt','BR-','BR-YYYYMM-#####','Bank deposit transactions',to_timestamp('15-APR-25 02.57.33.407290000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407292000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('JV','Journal Voucher','JV-','JV-YYYYMM-#####','General journal entries',to_timestamp('15-APR-25 02.57.33.407298000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407300000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('CN','Credit Note','CN-','CN-YYYYMM-#####','Sales returns or allowances',to_timestamp('15-APR-25 02.57.33.407305000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407307000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('DN','Debit Note','DN-','DN-YYYYMM-#####','Purchase returns or allowances',to_timestamp('15-APR-25 02.57.33.407311000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407313000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
Insert into SFERP.AGL_TRANTYPE (TRANTYPE_CODE,TRANTYPE_NAME,VOUCH_PREFIX,VOUCH_FORMAT,AC_REMARK,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('IN','Inventory Adjustment','IN-','IN-YYYYMM-#####','Inventory quantity adjustments',to_timestamp('15-APR-25 02.57.33.407319000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.57.33.407321000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null);
REM INSERTING into SFERP.BGLOBAL_UOM_CONV
SET DEFINE OFF;
REM INSERTING into SFERP.BGL_ITEMIZED_UOM_CONV
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_BOM01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_BOM02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_BOM03_BYP
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_CATEGORY
SET DEFINE OFF;
Insert into SFERP.BINV_CATEGORY (CATEGORY_CODE,CATEGORY_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,AC_CODE,ITEM_CL_STOCK_AC_CODE) values ('RAW','Raw Materials','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,null,null);
Insert into SFERP.BINV_CATEGORY (CATEGORY_CODE,CATEGORY_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,AC_CODE,ITEM_CL_STOCK_AC_CODE) values ('FG','Finished Goods','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,null,null);
Insert into SFERP.BINV_CATEGORY (CATEGORY_CODE,CATEGORY_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,AC_CODE,ITEM_CL_STOCK_AC_CODE) values ('PACK','Packaging Materials','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,null,null);
Insert into SFERP.BINV_CATEGORY (CATEGORY_CODE,CATEGORY_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,AC_CODE,ITEM_CL_STOCK_AC_CODE) values ('SERVICE','Service Parts','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,null,null);
Insert into SFERP.BINV_CATEGORY (CATEGORY_CODE,CATEGORY_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,AC_CODE,ITEM_CL_STOCK_AC_CODE) values ('OBS','Obsolete Items','N','SYSTEM',to_date('17-MAR-25','DD-MON-RR'),'ADMIN',null,null,null);
REM INSERTING into SFERP.BINV_ITEM
SET DEFINE OFF;
Insert into SFERP.BINV_ITEM (ITEM_ID,ITEM_CODE,ITEM_NAME,CATEGORY_CODE,ITEMTYPE_CODE,UOM_CODE,MIN_STOCK_LEVEL,MAX_STOCK_LEVEL,REORDER_LEVEL,REORDER_QUANTITY,AC_CODE,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (10,'SKU-1001','Premium Plastic Chair','FG','PLASTIC_PROD','PCS',50,500,100,200,'AC-12345','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_ITEM (ITEM_ID,ITEM_CODE,ITEM_NAME,CATEGORY_CODE,ITEMTYPE_CODE,UOM_CODE,MIN_STOCK_LEVEL,MAX_STOCK_LEVEL,REORDER_LEVEL,REORDER_QUANTITY,AC_CODE,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (12,'SKU-3001','Organic Wheat Flour','FG','FOOD','KG',200,2000,300,800,'AC-12347','N','SYSTEM',to_date('17-MAR-25','DD-MON-RR'),'ADMIN',null);
REM INSERTING into SFERP.BINV_ITEMADJUSTMENT01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_ITEMADJUSTMENT02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_ITEMMOVEMENT01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_ITEMMOVEMENT02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_OPENING01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_OPENING02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PO01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PO02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PRODUCT01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PRODUCT02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PRODUCT03_BYP
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PURCHASE01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PURCHASE02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PURCHRETURN01
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_PURCHRETURN02
SET DEFINE OFF;
REM INSERTING into SFERP.BINV_TYPE
SET DEFINE OFF;
Insert into SFERP.BINV_TYPE (ITEMTYPE_ID,ITEMTYPE_CODE,ITEMTYPE_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (1,'PLASTIC_PROD','Plastic Products','Y','SYSTEM',to_date('09-MAY-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_TYPE (ITEMTYPE_ID,ITEMTYPE_CODE,ITEMTYPE_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (2,'FOOD','Food Items','Y','SYSTEM',to_date('09-MAY-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_TYPE (ITEMTYPE_ID,ITEMTYPE_CODE,ITEMTYPE_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (3,'CHEMICALS','Chemical Substances','N','SYSTEM',to_date('09-APR-25','DD-MON-RR'),'ADMIN',null);
REM INSERTING into SFERP.BINV_UOM
SET DEFINE OFF;
Insert into SFERP.BINV_UOM (UOM_CODE,UOM_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('KG','Kilogram','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_UOM (UOM_CODE,UOM_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('GR','Gram','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_UOM (UOM_CODE,UOM_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('PCS','Piece','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_UOM (UOM_CODE,UOM_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('LTR','Liter','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.BINV_UOM (UOM_CODE,UOM_NAME,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('ME','Meter','N','SYSTEM',to_date('17-MAR-25','DD-MON-RR'),'ADMIN',null);
REM INSERTING into SFERP.CFG_COLUMN_CONFIG_01
SET DEFINE OFF;
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DFF-4266-E063-020017AC2E13','SFERP','BINV_OPENING01','Binv Opening01','BinvOpening01','app-binv-opening01','binvopening01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E00-4266-E063-020017AC2E13','SFERP','BINV_OPENING02','Binv Opening02','BinvOpening02','app-binv-opening02','binvopening02','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E0D-4266-E063-020017AC2E13','SFERP','CFG_LOOKUP_INFO_02','Cfg Lookup Info 02','CfgLookupInfo02','app-cfg-lookup-info-02','cfglookupinfo02','PKEY','Y','G');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E0F-4266-E063-020017AC2E13','SFERP','CITEM_RETURN01','Citem Return01','CitemReturn01','app-citem-return01','citemreturn01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E11-4266-E063-020017AC2E13','SFERP','CITEM_SALES01','Citem Sales01','CitemSales01','app-citem-sales01','citemsales01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E0E-4266-E063-020017AC2E13','SFERP','CFG_MASTER_DETAIL_CONFIG','Cfg Master Detail Config','CfgMasterDetailConfig','app-cfg-master-detail-config','cfgmasterdetailconfig','PKEY','Y','G');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E10-4266-E063-020017AC2E13','SFERP','CITEM_RETURN02','Citem Return02','CitemReturn02','app-citem-return02','citemreturn02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('352C20C9-E544-C1F4-E063-020017ACE397','SFERP','AGL_TRAN01','Agl Tran01','AglTran01','app-agl-tran01','agltran01','PKEY','Y','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('3590F124-A23E-4F4C-E063-020017ACE1ED','SFERP','AGL_TRANTYPE','Tran Type','AglTrantype','app-agl-trantype','agltrantype','TRANTYPE_CODE','N','Y');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E23-4266-E063-020017AC2E13','SFERP','XGL_DONOR','Xgl Donor','XglDonor','app-xgl-donor','xgldonor','DONOR_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E1D-4266-E063-020017AC2E13','SFERP','XGLB_COMP','Xglb Comp','XglbComp','app-xglb-comp','xglbcomp','COM_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E21-4266-E063-020017AC2E13','SFERP','XGLB_USER','Xglb User','XglbUser','app-xglb-user','xglbuser','USER_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E24-4266-E063-020017AC2E13','SFERP','XGL_PROJECT','Xgl Project','XglProject','app-xgl-project','xglproject','PROJECT_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('3544ECB9-2CA2-9B97-E063-020017AC5EDC','SFERP','CFG_TEMPLATE_STORAGE','Cfg Template Storage','CfgTemplateStorage','app-cfg-template-storage','cfgtemplatestorage','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DFD-4266-E063-020017AC2E13','SFERP','BINV_ITEMMOVEMENT01','Binv Itemmovement01','BinvItemmovement01','app-binv-itemmovement01','binvitemmovement01','MOVEMENT_NO','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DFE-4266-E063-020017AC2E13','SFERP','BINV_ITEMMOVEMENT02','Binv Itemmovement02','BinvItemmovement02','app-binv-itemmovement02','binvitemmovement02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E01-4266-E063-020017AC2E13','SFERP','BINV_PO01','Binv Po01','BinvPo01','app-binv-po01','binvpo01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E16-4266-E063-020017AC2E13','SFERP','OASSET_CATEGORY','Oasset Category','OassetCategory','app-oasset-category','oassetcategory','CATEGORY_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E02-4266-E063-020017AC2E13','SFERP','BINV_PO02','Binv Po02','BinvPo02','app-binv-po02','binvpo02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E03-4266-E063-020017AC2E13','SFERP','BINV_PRODUCT01','Binv Product01','BinvProduct01','app-binv-product01','binvproduct01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E04-4266-E063-020017AC2E13','SFERP','BINV_PRODUCT02','Binv Product02','BinvProduct02','app-binv-product02','binvproduct02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E0C-4266-E063-020017AC2E13','SFERP','CFG_LOOKUP_INFO','Cfg Lookup Info','CfgLookupInfo','app-cfg-lookup-info','cfglookupinfo','PKEY','Y','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E05-4266-E063-020017AC2E13','SFERP','BINV_PRODUCT03_BYP','Binv Product03 Byp','BinvProduct03Byp','app-binv-product03-byp','binvproduct03byp','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E06-4266-E063-020017AC2E13','SFERP','BINV_PURCHASE01','Binv Purchase01','BinvPurchase01','app-binv-purchase01','binvpurchase01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E07-4266-E063-020017AC2E13','SFERP','BINV_PURCHASE02','Binv Purchase02','BinvPurchase02','app-binv-purchase02','binvpurchase02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E08-4266-E063-020017AC2E13','SFERP','BINV_PURCHRETURN01','Binv Purchreturn01','BinvPurchreturn01','app-binv-purchreturn01','binvpurchreturn01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E09-4266-E063-020017AC2E13','SFERP','BINV_PURCHRETURN02','Binv Purchreturn02','BinvPurchreturn02','app-binv-purchreturn02','binvpurchreturn02','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E0A-4266-E063-020017AC2E13','SFERP','BINV_TYPE','Binv Type','BinvType','app-binv-type','binvtype','ITEMTYPE_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E0B-4266-E063-020017AC2E13','SFERP','CFG_COLUMN_CONFIG_01','Column Configuration','CfgColumnConfig01','app-cfg-column-config-01','cfgcolumnconfig01','PKEY','Y','Y');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E12-4266-E063-020017AC2E13','SFERP','CITEM_SALES02','Citem Sales02','CitemSales02','app-citem-sales02','citemsales02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E13-4266-E063-020017AC2E13','SFERP','IMAGES','Images','Images','app-images','images','ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E14-4266-E063-020017AC2E13','SFERP','MAR_RECEIPT','Mar Receipt','MarReceipt','app-mar-receipt','marreceipt','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E17-4266-E063-020017AC2E13','SFERP','OASSET_INFO','Oasset Info','OassetInfo','app-oasset-info','oassetinfo','ASSET_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E18-4266-E063-020017AC2E13','SFERP','ROLES','Roles','Roles','app-roles','roles','ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E19-4266-E063-020017AC2E13','SFERP','USERS','Users','Users','app-users','users','USERNAME','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E1A-4266-E063-020017AC2E13','SFERP','USER_ROLES','User Roles','UserRoles','app-user-roles','userroles','USERNAME','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E1B-4266-E063-020017AC2E13','SFERP','XGLB_BP','Xglb Bp','XglbBp','app-xglb-bp','xglbbp','BP_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E1C-4266-E063-020017AC2E13','SFERP','XGLB_BPTYPE','Xglb Bptype','XglbBptype','app-xglb-bptype','xglbbptype','BPTYPE_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E1E-4266-E063-020017AC2E13','SFERP','XGLB_COUNTRY','Xglb Country','XglbCountry','app-xglb-country','xglbcountry','COUNTRY_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E20-4266-E063-020017AC2E13','SFERP','XGLB_PAYTERM','Xglb Payterm','XglbPayterm','app-xglb-payterm','xglbpayterm','PAYTERM_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E1F-4266-E063-020017AC2E13','SFERP','XGLB_DATE','Date Setting','XglbDate','app-xglb-date','xglbdate','DATERNG_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E22-4266-E063-020017AC2E13','SFERP','XGLB_WAREHOUSE','Xglb Warehouse','XglbWarehouse','app-xglb-warehouse','xglbwarehouse','WAREHOUSE_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0E15-4266-E063-020017AC2E13','SFERP','NAP_PAYMENT','Nap Payment','NapPayment','app-nap-payment','nappayment','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35D9AA9C-C745-08A7-E063-020017AC13BD','SFERP','CFG_MD_CONFIG_02','Cfg Md Config 02','CfgMdConfig02','app-cfg-md-config-02','cfgmdconfig02','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35D9AA9C-C747-08A7-E063-020017AC13BD','SFERP','JHI_AUTHORITY','Jhi Authority','JhiAuthority','app-jhi-authority','jhiauthority','NAME','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35D9AA9C-C748-08A7-E063-020017AC13BD','SFERP','JHI_USER_AUTHORITY','Jhi User Authority','JhiUserAuthority','app-jhi-user-authority','jhiuserauthority','USER_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35ED5CBF-31BF-AA16-E063-020017ACAA0A','SFERP','CFG_GEN_STORAGE','Cfg Gen Storage','CfgGenStorage','app-cfg-gen-storage','cfggenstorage','PKEY','Y','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DEF-4266-E063-020017AC2E13','SFERP','AGL_ACMAIN','Main Accounts','AglAcmain','app-agl-acmain','aglacmain','ACMAIN_CODE','Y','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF0-4266-E063-020017AC2E13','SFERP','AGL_ACSUB','Agl Acsub','AglAcsub','app-agl-acsub','aglacsub','AC_CODE','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF1-4266-E063-020017AC2E13','SFERP','AGL_ACTYPE','Agl Actype','AglActype','app-agl-actype','aglactype','ACTYPE_CODE','Y','G');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF2-4266-E063-020017AC2E13','SFERP','AGL_BUDGET01','Agl Budget01','AglBudget01','app-agl-budget01','aglbudget01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF3-4266-E063-020017AC2E13','SFERP','AGL_BUDGET02','Agl Budget02','AglBudget02','app-agl-budget02','aglbudget02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF4-4266-E063-020017AC2E13','SFERP','AGL_CC','Agl CC','AglCc','app-agl-cc','aglcc','ACCC_CODE','Y','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF5-4266-E063-020017AC2E13','SFERP','AGL_TRAN02','Agl Tran02','AglTran02','app-agl-tran02','agltran02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF6-4266-E063-020017AC2E13','SFERP','BGLOBAL_UOM_CONV','Bglobal Uom Conv','BglobalUomConv','app-bglobal-uom-conv','bglobaluomconv','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF7-4266-E063-020017AC2E13','SFERP','BGL_ITEMIZED_UOM_CONV','Bgl Itemized Uom Conv','BglItemizedUomConv','app-bgl-itemized-uom-conv','bglitemizeduomconv','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF8-4266-E063-020017AC2E13','SFERP','BINV_BOM01','Binv Bom01','BinvBom01','app-binv-bom01','binvbom01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DF9-4266-E063-020017AC2E13','SFERP','BINV_BOM02','Binv Bom02','BinvBom02','app-binv-bom02','binvbom02','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DFC-4266-E063-020017AC2E13','SFERP','BINV_ITEMADJUSTMENT02','Binv Itemadjustment02','BinvItemadjustment02','app-binv-itemadjustment02','binvitemadjustment02','FKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DFB-4266-E063-020017AC2E13','SFERP','BINV_ITEM','Binv Item','BinvItem','app-binv-item','binvitem','ITEM_ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35D9AA9C-C746-08A7-E063-020017AC13BD','SFERP','HTE_JHI_USER','Hte Jhi User','HteJhiUser','app-hte-jhi-user','htejhiuser','RN_','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35AECD38-0DFA-4266-E063-020017AC2E13','SFERP','BINV_BOM03_BYP','Binv Bom03 Byp','BinvBom03Byp','app-binv-bom03-byp','binvbom03byp','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('35D9AA9C-C744-08A7-E063-020017AC13BD','SFERP','CFG_MD_CONFIG_01','Cfg Md Config 01','CfgMdConfig01','app-cfg-md-config-01','cfgmdconfig01','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('370751AD-E3DA-2E02-E063-020012ACD07C','SFERP','CFG_LOOKUP_INFO_02_MASTER','Cfg Lookup Info 02 Master','CfgLookupInfo02Master','app-cfg-lookup-info-02-master','cfglookupinfo02master','PKEY','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('36A53B77-1B21-0602-E063-020012ACE4C0','SFERP','DATABASECHANGELOGLOCK','Databasechangeloglock','Databasechangeloglock','app-databasechangeloglock','databasechangeloglock','ID','N','N');
Insert into SFERP.CFG_COLUMN_CONFIG_01 (PKEY,SCHEMA_NAME,TABLE_NAME,TBL_TITLE,NGCLASS,NGSELECTOR,FN,KEY_COLUMN,BUILD_COMPLETED,CUSTOM_HTML) values ('36A53B77-1B22-0602-E063-020012ACE4C0','SFERP','JHI_USER','Jhi User','JhiUser','app-jhi-user','jhiuser','ID','N','N');
REM INSERTING into SFERP.CFG_GEN_STORAGE
SET DEFINE OFF;
REM INSERTING into SFERP.CFG_LOOKUP_INFO
SET DEFINE OFF;
Insert into SFERP.CFG_LOOKUP_INFO (PKEY,LOOKUP_KEY,LOOKUP_SQL) values ('35B21B48-348D-59D5-E063-020017ACA934','agl_acmain.acmain_code','select ACMAIN_CODE  || ''-''|| ACMAIN_NAME label , ACMAIN_CODE value from sferp.AGL_ACMAIN order by 1');
Insert into SFERP.CFG_LOOKUP_INFO (PKEY,LOOKUP_KEY,LOOKUP_SQL) values ('35B21B48-348E-59D5-E063-020017ACA934','agl_acsub.acsub_code','select ACSUB_CODE  || ''-''|| ACMAIN_CODE label , ACSUB_CODE value from sferp.AGL_ACSUB order by 1');
Insert into SFERP.CFG_LOOKUP_INFO (PKEY,LOOKUP_KEY,LOOKUP_SQL) values ('35B21B48-348F-59D5-E063-020017ACA934','agl_actype.actype_code','select ACTYPE_CODE  || ''-''|| ACTYPE_NAME label , ACTYPE_CODE value from sferp.AGL_ACTYPE order by 1');
REM INSERTING into SFERP.CFG_LOOKUP_INFO_02
SET DEFINE OFF;
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('0ebfb6a6-bd95-4a0b-8f8b-2fbb66048317','build_completed','Yes','Y','3706C129-D000-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('4ed6a795-17ea-45d2-adf0-b6bc14987f37','build_completed','No','N','3706C129-D000-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('f48134a0-5a62-461a-95e2-21baec9499b0','yes_no','01-Yes','Y','3706C129-D002-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('a82408b0-ab8b-4dd8-9e7b-06ff8082c6ea','yes_no','02-No','N','3706C129-D002-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('133f83dc-95ef-43da-a012-f194d5905e07','custom_html','01-Yes','Y','3706C129-D001-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('a0fbf6e9-a634-41fd-b3fb-5a125bfc7bf7','custom_html','02-No','N','3706C129-D001-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('723fb5ad-61c8-4ea9-b180-f3bff7c8cd73','custom_html','03-Grid','G','3706C129-D001-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-6106-58AA-E063-020017ACC138','YN','01-Yes','Y','3706C129-CFFF-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-6107-58AA-E063-020017ACC138','YN','02-No','N','3706C129-CFFF-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-6108-58AA-E063-020017ACC138','ACC_GROUP','Assets','ASSETS','3706C129-CFFE-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-6109-58AA-E063-020017ACC138','ACC_GROUP','Liabilities','Liabilities','3706C129-CFFE-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-610A-58AA-E063-020017ACC138','ACC_GROUP','Equity','Equity','3706C129-CFFE-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-610B-58AA-E063-020017ACC138','ACC_GROUP','Expenses','Expenses','3706C129-CFFE-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('340CDF12-610C-58AA-E063-020017ACC138','ACC_GROUP','Income','Income','3706C129-CFFE-2D82-E063-020012AC176C');
Insert into SFERP.CFG_LOOKUP_INFO_02 (PKEY,LOOKUP_KEY,LABEL,VALUE,FKEY) values ('35DDE167-7873-2CD2-E063-020017AC1D31','YN','03-Invalid','I','3706C129-CFFF-2D82-E063-020012AC176C');
REM INSERTING into SFERP.CFG_LOOKUP_INFO_02_MASTER
SET DEFINE OFF;
Insert into SFERP.CFG_LOOKUP_INFO_02_MASTER (PKEY,LOOKUP_KEY,LOOKUP_DESCRIPTION) values ('3706C129-CFFE-2D82-E063-020012AC176C','ACC_GROUP',null);
Insert into SFERP.CFG_LOOKUP_INFO_02_MASTER (PKEY,LOOKUP_KEY,LOOKUP_DESCRIPTION) values ('3706C129-CFFF-2D82-E063-020012AC176C','YN',null);
Insert into SFERP.CFG_LOOKUP_INFO_02_MASTER (PKEY,LOOKUP_KEY,LOOKUP_DESCRIPTION) values ('3706C129-D000-2D82-E063-020012AC176C','build_completed',null);
Insert into SFERP.CFG_LOOKUP_INFO_02_MASTER (PKEY,LOOKUP_KEY,LOOKUP_DESCRIPTION) values ('3706C129-D001-2D82-E063-020012AC176C','custom_html',null);
Insert into SFERP.CFG_LOOKUP_INFO_02_MASTER (PKEY,LOOKUP_KEY,LOOKUP_DESCRIPTION) values ('3706C129-D002-2D82-E063-020012AC176C','yes_no',null);
REM INSERTING into SFERP.CFG_MASTER_DETAIL_CONFIG
SET DEFINE OFF;
Insert into SFERP.CFG_MASTER_DETAIL_CONFIG (PKEY,MASTER_DETAIL_GROUP,MASTER_TABLE_NAME,CHILD_TABLE_NAME,MASTER_KEY_COLUMN,CHILD_REFERENCE_COLUMN) values ('3706D66A-88E4-2DA2-E063-020012ACF915','lookup_cfg','CFG_LOOKUP_INFO_02_MASTER','CFG_LOOKUP_INFO_02','PKEY','FKEY');
Insert into SFERP.CFG_MASTER_DETAIL_CONFIG (PKEY,MASTER_DETAIL_GROUP,MASTER_TABLE_NAME,CHILD_TABLE_NAME,MASTER_KEY_COLUMN,CHILD_REFERENCE_COLUMN) values ('e4e8c4ab-8833-4e08-b942-1bf0870ff24b','tran','AGL_TRAN01','AGL_TRAN02','PKEY','FKEY');
Insert into SFERP.CFG_MASTER_DETAIL_CONFIG (PKEY,MASTER_DETAIL_GROUP,MASTER_TABLE_NAME,CHILD_TABLE_NAME,MASTER_KEY_COLUMN,CHILD_REFERENCE_COLUMN) values ('349B9F3D-7A39-C7CE-E063-020017ACAD14','coa','AGL_ACMAIN','AGL_ACSUB','ACMAIN_CODE','ACMAIN_CODE');
Insert into SFERP.CFG_MASTER_DETAIL_CONFIG (PKEY,MASTER_DETAIL_GROUP,MASTER_TABLE_NAME,CHILD_TABLE_NAME,MASTER_KEY_COLUMN,CHILD_REFERENCE_COLUMN) values ('349B9F3D-7A3A-C7CE-E063-020017ACAD14','acm','AGL_ACTYPE','AGL_ACMAIN','ACTYPE_CODE','ACTYPE_CODE');
REM INSERTING into SFERP.CFG_MD_CONFIG_01
SET DEFINE OFF;
REM INSERTING into SFERP.CFG_MD_CONFIG_02
SET DEFINE OFF;
REM INSERTING into SFERP.CFG_TEMPLATE_STORAGE
SET DEFINE OFF;
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('ts-001-normal','ts normal');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('ts-003-child','ts-md-child');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-003','html-parent-generic');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('ts-002-parent','ts-md-master');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-004','parent-custom-html');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-001','html-generic-ui-template');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-002','Html Template with UI Place Holder-normal');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-010','grid-only');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-005','Child UI Template');
Insert into SFERP.CFG_TEMPLATE_STORAGE (PKEY,TEMPLATE_INFO) values ('uit-006','child template with place hosder?');
REM INSERTING into SFERP.CITEM_RETURN01
SET DEFINE OFF;
REM INSERTING into SFERP.CITEM_RETURN02
SET DEFINE OFF;
REM INSERTING into SFERP.CITEM_SALES01
SET DEFINE OFF;
REM INSERTING into SFERP.CITEM_SALES02
SET DEFINE OFF;
REM INSERTING into SFERP.DATABASECHANGELOG
SET DEFINE OFF;
Insert into SFERP.DATABASECHANGELOG (ID,AUTHOR,FILENAME,DATEEXECUTED,ORDEREXECUTED,EXECTYPE,MD5SUM,DESCRIPTION,COMMENTS,TAG,LIQUIBASE,CONTEXTS,LABELS,DEPLOYMENT_ID) values ('00000000000000','jhipster','config/liquibase/changelog/00000000000000_initial_schema.xml',to_timestamp('03-JUN-25 12.59.33.231819000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,'EXECUTED','9:b6b4a3e0d2a6d7f1e5139675af65d7b0','createSequence sequenceName=sequence_generator',null,null,'4.29.2',null,null,'8912371517');
REM INSERTING into SFERP.DATABASECHANGELOGLOCK
SET DEFINE OFF;
Insert into SFERP.DATABASECHANGELOGLOCK (ID,LOCKED,LOCKGRANTED,LOCKEDBY) values (1,1,to_timestamp('03-JUN-25 12.59.30.738722000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Mds-MacBook-Pro.local (192.168.1.103)');
REM INSERTING into SFERP.HTE_JHI_USER
SET DEFINE OFF;
REM INSERTING into SFERP.IMAGES
SET DEFINE OFF;
Insert into SFERP.IMAGES (ID,NAME,CONTENT_TYPE) values (21,'yellow_pink_stains_abstract_dark_light_hd_abstract.jpg','image/jpeg');
Insert into SFERP.IMAGES (ID,NAME,CONTENT_TYPE) values (6,'camera-capture-1747206894105.jpg','image/jpeg');
Insert into SFERP.IMAGES (ID,NAME,CONTENT_TYPE) values (7,'yellow_pink_stains_abstract_dark_light_hd_abstract.jpg','image/jpeg');
Insert into SFERP.IMAGES (ID,NAME,CONTENT_TYPE) values (8,'camera-capture-1747225700303.jpg','image/jpeg');
REM INSERTING into SFERP.JHI_AUTHORITY
SET DEFINE OFF;
Insert into SFERP.JHI_AUTHORITY (NAME) values ('ROLE_ADMIN');
Insert into SFERP.JHI_AUTHORITY (NAME) values ('ROLE_USER');
REM INSERTING into SFERP.JHI_USER
SET DEFINE OFF;
Insert into SFERP.JHI_USER (ID,LOGIN,PASSWORD_HASH,FIRST_NAME,LAST_NAME,EMAIL,IMAGE_URL,ACTIVATED,LANG_KEY,ACTIVATION_KEY,RESET_KEY,CREATED_BY,CREATED_DATE,RESET_DATE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE) values (1,'admin','$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC','Administrator','Administrator','admin@localhost',null,1,'en',null,null,'system',null,null,'system',null);
Insert into SFERP.JHI_USER (ID,LOGIN,PASSWORD_HASH,FIRST_NAME,LAST_NAME,EMAIL,IMAGE_URL,ACTIVATED,LANG_KEY,ACTIVATION_KEY,RESET_KEY,CREATED_BY,CREATED_DATE,RESET_DATE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE) values (2,'user','$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K','User','User','user@localhost',null,1,'en',null,null,'system',null,null,'system',null);
Insert into SFERP.JHI_USER (ID,LOGIN,PASSWORD_HASH,FIRST_NAME,LAST_NAME,EMAIL,IMAGE_URL,ACTIVATED,LANG_KEY,ACTIVATION_KEY,RESET_KEY,CREATED_BY,CREATED_DATE,RESET_DATE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE) values (1001,'nazrul','$2a$10$IWbBpGY4JWpCVsAh9UuNXegQ5RVdCVPyTfFk4AJdlYeAl.JglQr1K',null,null,'nazrul56@gmail.com',null,1,'en','Pd14QFa4u6fOyU6WtJSn','fDpG2Ec8mhpkS1y0n8Yt','anonymousUser',to_timestamp('03-JUN-25 01.28.15.262957000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('03-JUN-25 01.31.09.214363000 AM','DD-MON-RR HH.MI.SSXFF AM'),'anonymousUser',to_timestamp('03-JUN-25 01.31.09.216488000 AM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into SFERP.JHI_USER_AUTHORITY
SET DEFINE OFF;
Insert into SFERP.JHI_USER_AUTHORITY (USER_ID,AUTHORITY_NAME) values (1,'ROLE_ADMIN');
Insert into SFERP.JHI_USER_AUTHORITY (USER_ID,AUTHORITY_NAME) values (1,'ROLE_USER');
Insert into SFERP.JHI_USER_AUTHORITY (USER_ID,AUTHORITY_NAME) values (2,'ROLE_USER');
Insert into SFERP.JHI_USER_AUTHORITY (USER_ID,AUTHORITY_NAME) values (1001,'ROLE_USER');
REM INSERTING into SFERP.MAR_RECEIPT
SET DEFINE OFF;
REM INSERTING into SFERP.NAP_PAYMENT
SET DEFINE OFF;
REM INSERTING into SFERP.OASSET_CATEGORY
SET DEFINE OFF;
Insert into SFERP.OASSET_CATEGORY (CATEGORY_ID,CATEGORY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (1,'IT Equipment','admin',to_date('10-MAY-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.OASSET_CATEGORY (CATEGORY_ID,CATEGORY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (2,'Office Furniture','admin',to_date('10-MAY-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.OASSET_CATEGORY (CATEGORY_ID,CATEGORY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (3,'Vehicles','admin',to_date('10-MAY-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.OASSET_CATEGORY (CATEGORY_ID,CATEGORY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (4,'Real Estate','admin',to_date('10-MAY-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.OASSET_CATEGORY (CATEGORY_ID,CATEGORY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (5,'Machinery','admin',to_date('10-MAY-25','DD-MON-RR'),null,null,'Y');
REM INSERTING into SFERP.OASSET_INFO
SET DEFINE OFF;
Insert into SFERP.OASSET_INFO (ASSET_ID,ASSET_NAME,ASSET_TAG,USER_CODE,CATEGORY_ID,PURCHASE_DATE,PURCHASE_COST,WARRANTY_MONTH,DEPRECIATION_RATE,DEPRECIATION_MONTH,TRAN_STATUS,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,APPROVED_BY,APPROVED_DATE,IS_ACTIVE) values (1,'HP LaserJet Pro M404dn Printer','PRN001','USR001',1,to_date('10-NOV-22','DD-MON-RR'),25000,to_date('10-NOV-25','DD-MON-RR'),15,36,1,'admin',to_date('10-MAY-25','DD-MON-RR'),null,null,null,null,'Y');
REM INSERTING into SFERP.ROLES
SET DEFINE OFF;
Insert into SFERP.ROLES (ID,NAME) values (1,'ADMIN');
Insert into SFERP.ROLES (ID,NAME) values (2,'USER');
Insert into SFERP.ROLES (ID,NAME) values (3,'REPORT');
Insert into SFERP.ROLES (ID,NAME) values (4,null);
REM INSERTING into SFERP.USERS
SET DEFINE OFF;
Insert into SFERP.USERS (USERNAME,PASSWORD) values ('john_doe','$2a$10$MPEImYp5hgme1/MjstCZ.eP7z71.qN7igEX2rkpPqyVDjwUjhbSMe');
Insert into SFERP.USERS (USERNAME,PASSWORD) values ('nazrul56','$2a$10$Ef0/F04rYsRo2VuW5GNKa.R1HZTO93ZSg0VdT/lyoyY5k5GmhBe9a');
Insert into SFERP.USERS (USERNAME,PASSWORD) values ('admin','$2a$10$B/kKZ1iLwZ3r3JNT9cg04eQuNHTcD3.mOzuEzcY0glh//x9hNnoiW');
Insert into SFERP.USERS (USERNAME,PASSWORD) values ('user','$2a$10$fj02/rxzkhIBsQyVnWuwHOim8hG2R7F2lN.hstRzKViiR3Z8Fy7TO');
REM INSERTING into SFERP.USER_ROLES
SET DEFINE OFF;
Insert into SFERP.USER_ROLES (USERNAME,ROLE_ID) values ('admin',2);
Insert into SFERP.USER_ROLES (USERNAME,ROLE_ID) values ('john_doe',2);
Insert into SFERP.USER_ROLES (USERNAME,ROLE_ID) values ('nazrul56',2);
Insert into SFERP.USER_ROLES (USERNAME,ROLE_ID) values ('user',1);
REM INSERTING into SFERP.XGLB_BP
SET DEFINE OFF;
Insert into SFERP.XGLB_BP (BP_CODE,BP_NAME,BPTYPE_CODE,BP_GROUP,BP_CONPERSON,BP_PHONE,BP_EMAIL,BP_ADD1,BP_ADD2,BP_ADD3,BP_CITY,BP_VATNO,BP_CREDITLIMIT,BP_BANKNAME,BP_BANKACNO,AC_REMARK,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BP001','ABC Corporation','VENDOR','Foreign Vendor','John Smith','+1-555-1234567','john@abccorp.com','123 Main St','Suite 100',null,'New York','US123456789',50000,null,null,null,'Y',to_date('16-APR-25','DD-MON-RR'),to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BP (BP_CODE,BP_NAME,BPTYPE_CODE,BP_GROUP,BP_CONPERSON,BP_PHONE,BP_EMAIL,BP_ADD1,BP_ADD2,BP_ADD3,BP_CITY,BP_VATNO,BP_CREDITLIMIT,BP_BANKNAME,BP_BANKACNO,AC_REMARK,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BP002','XYZ Retail','CUSTOMER','Retail','Sarah Johnson','+1-555-9876543','sarah@xyzretail.com','456 Oak Avenue',null,null,'Chicago','US987654321',25000,null,null,null,'Y',to_date('16-APR-25','DD-MON-RR'),to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BP (BP_CODE,BP_NAME,BPTYPE_CODE,BP_GROUP,BP_CONPERSON,BP_PHONE,BP_EMAIL,BP_ADD1,BP_ADD2,BP_ADD3,BP_CITY,BP_VATNO,BP_CREDITLIMIT,BP_BANKNAME,BP_BANKACNO,AC_REMARK,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BP003','Global Suppliers','VENDOR','Wholesale','Michael Chen','+852-1234-5678',null,'88 Queens Road','Central','Hong Kong','Hong Kong',null,null,'HSBC','123-456-789',null,'Y',to_date('16-APR-25','DD-MON-RR'),to_date('16-APR-25','DD-MON-RR'),null,null);
REM INSERTING into SFERP.XGLB_BPTYPE
SET DEFINE OFF;
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('CUST','Customer','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('SUPP','Supplier','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('AUT','Authorized Dealer','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BOTH','Customer Supplier','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('EMP','Employee','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('GOV','Government','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_BPTYPE (BPTYPE_CODE,BPTYPE_NAME,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('BANK','Bank','Y',to_date('15-APR-25','DD-MON-RR'),to_date('15-APR-25','DD-MON-RR'),null,null);
REM INSERTING into SFERP.XGLB_COMP
SET DEFINE OFF;
Insert into SFERP.XGLB_COMP (COM_CODE,COM_NAME,COM_REGNO,COM_CONPERSON,COM_ADD1,COM_ADD2,COM_ADD3,COM_CITY,COM_PHONE,COM_EMAIL,COM_WEBSITE,COM_FY_START,COM_FY_END,CURRENCY_CODE,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('CMP01','Acme Corporation','REG-123456','John Smith','123 Main Street',null,null,'New York','+1 212 555 1234','info@acme.com',null,to_date('01-JAN-23','DD-MON-RR'),to_date('31-DEC-23','DD-MON-RR'),'USD','Y',to_date('15-APR-25','DD-MON-RR'),null,null,null);
Insert into SFERP.XGLB_COMP (COM_CODE,COM_NAME,COM_REGNO,COM_CONPERSON,COM_ADD1,COM_ADD2,COM_ADD3,COM_CITY,COM_PHONE,COM_EMAIL,COM_WEBSITE,COM_FY_START,COM_FY_END,CURRENCY_CODE,IS_ACTIVE,CREATED_AT,UPDATED_AT,CREATED_BY,UPDATED_BY) values ('CMP02','Global Enterprises','REG-789012',null,'456 Business Avenue',null,null,'London','+44 20 7946 0958',null,null,to_date('01-APR-23','DD-MON-RR'),to_date('31-MAR-24','DD-MON-RR'),'GBP','Y',to_date('15-APR-25','DD-MON-RR'),null,null,null);
REM INSERTING into SFERP.XGLB_COUNTRY
SET DEFINE OFF;
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('1','United States','SYSTEM',to_timestamp('11-MAY-25 04.33.24.283673000 AM','DD-MON-RR HH.MI.SSXFF AM'),'SFERP',to_timestamp('12-MAY-25 07.27.51.748085000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('2','United Kingdom','SYSTEM',to_timestamp('11-MAY-25 04.33.24.338101000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('3','Canada','SYSTEM',to_timestamp('11-MAY-25 04.33.24.390689000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('4','Australia','SYSTEM',to_timestamp('11-MAY-25 04.33.24.442698000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('5','Germany','SYSTEM',to_timestamp('11-MAY-25 04.33.24.497008000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('6','France','SYSTEM',to_timestamp('11-MAY-25 04.33.24.548602000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('7','Japan','SYSTEM',to_timestamp('11-MAY-25 04.33.24.602389000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('8','India','SYSTEM',to_timestamp('11-MAY-25 04.33.24.660622000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('9','Brazil','SYSTEM',to_timestamp('11-MAY-25 04.33.24.719676000 AM','DD-MON-RR HH.MI.SSXFF AM'),'SFERP',to_timestamp('11-MAY-25 08.00.45.161268000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('10','China','SYSTEM',to_timestamp('11-MAY-25 04.33.24.778457000 AM','DD-MON-RR HH.MI.SSXFF AM'),'SFERP',to_timestamp('11-MAY-25 07.22.03.581724000 AM','DD-MON-RR HH.MI.SSXFF AM'),'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('11','Mexico','SYSTEM',to_timestamp('11-MAY-25 04.33.24.831275000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('12','Italy','SYSTEM',to_timestamp('11-MAY-25 04.33.24.891039000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('13','Spain','SYSTEM',to_timestamp('11-MAY-25 04.33.24.943941000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('14','Netherlands','SYSTEM',to_timestamp('11-MAY-25 04.33.24.995150000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('15','Sweden','SYSTEM',to_timestamp('11-MAY-25 04.33.25.047107000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
Insert into SFERP.XGLB_COUNTRY (COUNTRY_ID,COUNTRY_NAME,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('16','Singapore','SYSTEM',to_timestamp('11-MAY-25 04.33.25.098984000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
REM INSERTING into SFERP.XGLB_DATE
SET DEFINE OFF;
Insert into SFERP.XGLB_DATE (DATERNG_ID,DATERNG_CODE,GLB_STARTDATE,GLB_ENDDATE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values ('35a4f153-f687-404c-9a06-f98a7d53bff9','aaaa11333aaa',to_date('23-MAY-25','DD-MON-RR'),to_date('30-MAY-25','DD-MON-RR'),null,to_timestamp('24-MAY-25 12.41.00.547745000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y');
REM INSERTING into SFERP.XGLB_FINAL
SET DEFINE OFF;
Insert into SFERP.XGLB_FINAL (AC_REVENUE,AC_INVENTORY,AC_COGS,AC_PAYABLE,AC_RECEIVABLE,AC_ASSETS,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('4000','1100','5000','2000','1200','1000','SYSTEM',to_timestamp('15-APR-25 02.48.59.255976000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('15-APR-25 02.48.59.255989000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into SFERP.XGLB_FINAL (AC_REVENUE,AC_INVENTORY,AC_COGS,AC_PAYABLE,AC_RECEIVABLE,AC_ASSETS,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values ('4100-000','1150-100','5100-000',null,null,null,'ADMIN001',to_timestamp('15-APR-25 02.48.59.308351000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,to_timestamp('15-APR-25 02.48.59.308358000 AM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into SFERP.XGLB_PAYTERM
SET DEFINE OFF;
Insert into SFERP.XGLB_PAYTERM (PAYTERM_ID,PAYMENT_NAME,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (1,'CHECK',null,'SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.XGLB_PAYTERM (PAYTERM_ID,PAYMENT_NAME,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (2,'WIRE',null,'SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.XGLB_PAYTERM (PAYTERM_ID,PAYMENT_NAME,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (3,'CASH',null,'SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.XGLB_PAYTERM (PAYTERM_ID,PAYMENT_NAME,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (4,'CARD',null,'SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,'Y');
Insert into SFERP.XGLB_PAYTERM (PAYTERM_ID,PAYMENT_NAME,TASK_NOTE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE) values (5,'OTHER',null,'SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null,'Y');
REM INSERTING into SFERP.XGLB_USER
SET DEFINE OFF;
Insert into SFERP.XGLB_USER (COM_CODE,USER_CODE,USER_NAME,USER_PASS,USER_EMAIL,USER_MOBILE,ROLE_ID,IS_ACTIVE,IS_LOCKED,LAST_LOGIN,CREATED_AT,UPDATED_AT,DELETED_AT) values ('CMP01','ADMIN001','System Administrator','5f4dcc3b5aa765d61d8327deb882cf99','admin@company.com','+1234567890','ADMIN','Y','N',null,to_timestamp('15-APR-25 02.48.57.686807000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.48.57.686817000 AM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into SFERP.XGLB_USER (COM_CODE,USER_CODE,USER_NAME,USER_PASS,USER_EMAIL,USER_MOBILE,ROLE_ID,IS_ACTIVE,IS_LOCKED,LAST_LOGIN,CREATED_AT,UPDATED_AT,DELETED_AT) values ('CMP01','ACC001','Accounting Manager','5f4dcc3b5aa765d61d8327deb882cf99','accounting@company.com','+1234567891','ACCOUNTING','Y','N',null,to_timestamp('15-APR-25 02.48.57.737365000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.48.57.737372000 AM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into SFERP.XGLB_USER (COM_CODE,USER_CODE,USER_NAME,USER_PASS,USER_EMAIL,USER_MOBILE,ROLE_ID,IS_ACTIVE,IS_LOCKED,LAST_LOGIN,CREATED_AT,UPDATED_AT,DELETED_AT) values ('CMP01','INACT001','Disabled User','5f4dcc3b5aa765d61d8327deb882cf99','old.user@company.com',null,'USER','N','Y',null,to_timestamp('15-APR-25 02.48.57.786582000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.48.57.786594000 AM','DD-MON-RR HH.MI.SSXFF AM'),null);
Insert into SFERP.XGLB_USER (COM_CODE,USER_CODE,USER_NAME,USER_PASS,USER_EMAIL,USER_MOBILE,ROLE_ID,IS_ACTIVE,IS_LOCKED,LAST_LOGIN,CREATED_AT,UPDATED_AT,DELETED_AT) values ('CMP01','32C8C64471C4DF2CE063020017AC87C8','New Employee','5f4dcc3b5aa765d61d8327deb882cf99','new.user@company.com',null,'USER','Y','N',null,to_timestamp('15-APR-25 02.48.57.839688000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-APR-25 02.48.57.839699000 AM','DD-MON-RR HH.MI.SSXFF AM'),null);
REM INSERTING into SFERP.XGLB_WAREHOUSE
SET DEFINE OFF;
Insert into SFERP.XGLB_WAREHOUSE (WAREHOUSE_ID,WAREHOUSE_CODE,WAREHOUSE_NAME,WAREHOUSE_ADD1,WAREHOUSE_ADD2,WAREHOUSE_ADD3,CONTACT_PERSON,CONTACT_NUMBER,CONTACT_EMAIL,CATEGORY_CODE,UOM_CODE,LOCATION_ID,WAREHOUSE_SECTION,WAREHOUSE_FLOOR,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (16,'WH001','Main Distribution Center','123 Industrial Park','Building A','Zone 3','John Smith','+1 555-123-4567','john.smith@company.com','FG','KG','LOC001','A1-A10','1','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_WAREHOUSE (WAREHOUSE_ID,WAREHOUSE_CODE,WAREHOUSE_NAME,WAREHOUSE_ADD1,WAREHOUSE_ADD2,WAREHOUSE_ADD3,CONTACT_PERSON,CONTACT_NUMBER,CONTACT_EMAIL,CATEGORY_CODE,UOM_CODE,LOCATION_ID,WAREHOUSE_SECTION,WAREHOUSE_FLOOR,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (17,'WH002','Raw Materials Storage','456 Manufacturing Blvd',null,null,'Sarah Johnson','+1 555-987-6543','sarah.j@company.com','RAW','KG','LOC002','B1-B5','G','Y','SYSTEM',to_date('16-APR-25','DD-MON-RR'),null,null);
Insert into SFERP.XGLB_WAREHOUSE (WAREHOUSE_ID,WAREHOUSE_CODE,WAREHOUSE_NAME,WAREHOUSE_ADD1,WAREHOUSE_ADD2,WAREHOUSE_ADD3,CONTACT_PERSON,CONTACT_NUMBER,CONTACT_EMAIL,CATEGORY_CODE,UOM_CODE,LOCATION_ID,WAREHOUSE_SECTION,WAREHOUSE_FLOOR,IS_ACTIVE,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT) values (18,'WH003','Cold Storage Facility','789 Refrigerated Lane','Unit 5',null,'Michael Brown','+1 555-456-7890','michael.b@company.com','FG','PCS','LOC003','C1-C3','2','N','SYSTEM',to_date('17-MAR-25','DD-MON-RR'),'ADMIN',null);
REM INSERTING into SFERP.XGL_DONOR
SET DEFINE OFF;
Insert into SFERP.XGL_DONOR (DONOR_CODE,DONOR_NAME,DONOR_TYPE,DONOR_CONPERSON,DONOR_PHONE,DONOR_EMAIL,DONOR_ADD1,DONOR_ADD2,DONOR_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PKEY) values ('DN001','World Health Organization','International','Dr. Maria Silva','+41227654111','maria.silva@who.int','Avenue Appia 20','CH-1211','Geneva, Switzerland','admin',to_timestamp('04-MAY-25 12.09.05.416050000 PM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null);
Insert into SFERP.XGL_DONOR (DONOR_CODE,DONOR_NAME,DONOR_TYPE,DONOR_CONPERSON,DONOR_PHONE,DONOR_EMAIL,DONOR_ADD1,DONOR_ADD2,DONOR_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PKEY) values ('DN002','UNICEF Bangladesh','International','Mr. Hasan Kabir','+8801734567890','hasan.kabir@unicef.org','UNICEF House','Road 6, Baridhara','Dhaka 1212','manager',to_timestamp('04-MAY-25 12.09.05.480944000 PM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null);
Insert into SFERP.XGL_DONOR (DONOR_CODE,DONOR_NAME,DONOR_TYPE,DONOR_CONPERSON,DONOR_PHONE,DONOR_EMAIL,DONOR_ADD1,DONOR_ADD2,DONOR_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PKEY) values ('DN003','BRAC','Local NGO','Ms. Shila Akter','+8801811223344','shila.akter@brac.net','BRAC Centre','75 Mohakhali','Dhaka 1212','superuser',to_timestamp('04-MAY-25 12.09.05.536644000 PM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null);
Insert into SFERP.XGL_DONOR (DONOR_CODE,DONOR_NAME,DONOR_TYPE,DONOR_CONPERSON,DONOR_PHONE,DONOR_EMAIL,DONOR_ADD1,DONOR_ADD2,DONOR_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PKEY) values ('DN004','Save the Children','International','Mr. John Miller','+8801922334455','john.miller@savethechildren.org','House 35','Road 43, Gulshan-2','Dhaka 1212','admin',to_timestamp('04-MAY-25 12.09.05.613664000 PM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null);
REM INSERTING into SFERP.XGL_PROJECT
SET DEFINE OFF;
Insert into SFERP.XGL_PROJECT (PROJECT_CODE,PROJECT_NAME,PROJECT_TYPE,PROJECT_CONPERSON,PROJECT_PHONE,PROJECT_EMAIL,PROJECT_ADD1,PROJECT_ADD2,PROJECT_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PROJECT_DIRECTOR,PKEY) values ('PRJ001','Smart School ERP','Education','Arif Hossain','+8801711001100','arif.hossain@schoolerp.com','House 10, Road 5, Dhanmondi','Dhaka-1205',null,'admin',to_timestamp('01-MAY-25 04.17.40.593947000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null,null);
Insert into SFERP.XGL_PROJECT (PROJECT_CODE,PROJECT_NAME,PROJECT_TYPE,PROJECT_CONPERSON,PROJECT_PHONE,PROJECT_EMAIL,PROJECT_ADD1,PROJECT_ADD2,PROJECT_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PROJECT_DIRECTOR,PKEY) values ('PRJ002','Inventory Management System','Retail','Nusrat Jahan','+8801611223344','nusrat.jahan@retailsys.com','Plot 22, Block B, Banani','Level 3, Room 302','Dhaka North','developer1',to_timestamp('01-MAY-25 04.17.40.689909000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null,null);
Insert into SFERP.XGL_PROJECT (PROJECT_CODE,PROJECT_NAME,PROJECT_TYPE,PROJECT_CONPERSON,PROJECT_PHONE,PROJECT_EMAIL,PROJECT_ADD1,PROJECT_ADD2,PROJECT_ADD3,CREATED_BY,CREATED_AT,UPDATED_BY,UPDATED_AT,IS_ACTIVE,PROJECT_DIRECTOR,PKEY) values ('PRJ003','Hospital Management App','Healthcare','Dr. Kamal Uddin','+8801912333444','kamal.uddin@medisolutions.com','45 Green Road',null,'Dhaka 1215','superadmin',to_timestamp('01-MAY-25 04.17.40.781406000 AM','DD-MON-RR HH.MI.SSXFF AM'),null,null,'Y',null,null);
--------------------------------------------------------
--  DDL for Index XGLB_BP_IDX2
--------------------------------------------------------

  CREATE INDEX "SFERP"."XGLB_BP_IDX2" ON "SFERP"."XGLB_BP" ("BP_GROUP") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_COMP_ACTIVE
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_COMP_ACTIVE" ON "SFERP"."XGLB_COMP" ("IS_ACTIVE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_ITEM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_ITEM" ON "SFERP"."BINV_ITEM" ("ITEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_XGLB_COUNTRY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_XGLB_COUNTRY" ON "SFERP"."XGLB_COUNTRY" ("COUNTRY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_XGLB_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_XGLB_USER" ON "SFERP"."XGLB_USER" ("USER_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UK_BINV_WAREHOUSE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UK_BINV_WAREHOUSE_CODE" ON "SFERP"."XGLB_WAREHOUSE" ("WAREHOUSE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_XGLB_COUNTRY_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UQ_XGLB_COUNTRY_NAME" ON "SFERP"."XGLB_COUNTRY" ("COUNTRY_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_USER_ACTIVE
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_USER_ACTIVE" ON "SFERP"."XGLB_USER" ("IS_ACTIVE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_BPTYPE_ACTIVE
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_BPTYPE_ACTIVE" ON "SFERP"."XGLB_BPTYPE" ("IS_ACTIVE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_COMP_NAME
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_COMP_NAME" ON "SFERP"."XGLB_COMP" ("COM_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index UK_BINV_CATEGORY_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UK_BINV_CATEGORY_CODE" ON "SFERP"."BINV_CATEGORY" ("CATEGORY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_ACSUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."AGL_ACSUB_PK" ON "SFERP"."AGL_ACSUB" ("AC_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index XGLB_BP_IDX4
--------------------------------------------------------

  CREATE INDEX "SFERP"."XGLB_BP_IDX4" ON "SFERP"."XGLB_BP" ("IS_ACTIVE") 
  ;
--------------------------------------------------------
--  DDL for Index XGLB_BP_IDX1
--------------------------------------------------------

  CREATE INDEX "SFERP"."XGLB_BP_IDX1" ON "SFERP"."XGLB_BP" ("BPTYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_WAREHOUSE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_WAREHOUSE" ON "SFERP"."XGLB_WAREHOUSE" ("WAREHOUSE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_JHI_AUTHORITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_JHI_AUTHORITY" ON "SFERP"."JHI_AUTHORITY" ("NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PK_XGLB_COMP
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_XGLB_COMP" ON "SFERP"."XGLB_COMP" ("COM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UK_BINV_ITEM_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UK_BINV_ITEM_CODE" ON "SFERP"."BINV_ITEM" ("ITEM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_XGLB_DATE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UQ_XGLB_DATE_CODE" ON "SFERP"."XGLB_DATE" ("DATERNG_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN01_IDX2
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN01_IDX2" ON "SFERP"."AGL_TRAN01" ("TRAN_VOUCHNO") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN02_IDX1
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN02_IDX1" ON "SFERP"."AGL_TRAN02" ("PKEY") 
  ;
--------------------------------------------------------
--  DDL for Index PK_01GL_TRAN02
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_01GL_TRAN02" ON "SFERP"."AGL_TRAN02" ("FKEY") 
  ;
--------------------------------------------------------
--  DDL for Index PK_XGLB_DATE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_XGLB_DATE" ON "SFERP"."XGLB_DATE" ("DATERNG_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_JHI_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_JHI_USER" ON "SFERP"."JHI_USER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_FINAL_INVENTORY
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_FINAL_INVENTORY" ON "SFERP"."XGLB_FINAL" ("AC_INVENTORY") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_ITEMTYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_ITEMTYPE" ON "SFERP"."BINV_TYPE" ("ITEMTYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UK_BINV_UOM_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UK_BINV_UOM_CODE" ON "SFERP"."BINV_UOM" ("UOM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN02_IDX2
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN02_IDX2" ON "SFERP"."AGL_TRAN02" ("AC_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN01_IDX3
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN01_IDX3" ON "SFERP"."AGL_TRAN01" ("TRANTYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_BOM01
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_BOM01" ON "SFERP"."BINV_BOM01" ("PKEY") 
  ;
--------------------------------------------------------
--  DDL for Index PK_DATABASECHANGELOGLOCK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_DATABASECHANGELOGLOCK" ON "SFERP"."DATABASECHANGELOGLOCK" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index UK_OPENING02_LINE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UK_OPENING02_LINE" ON "SFERP"."BINV_OPENING02" ("FKEY", "TRAN_SL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_FINAL_REVENUE
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_FINAL_REVENUE" ON "SFERP"."XGLB_FINAL" ("AC_REVENUE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_USER_EMAIL
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_USER_EMAIL" ON "SFERP"."XGLB_USER" ("USER_EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_01GL_TRANTYPE_NAME
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_01GL_TRANTYPE_NAME" ON "SFERP"."AGL_TRANTYPE" ("TRANTYPE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN01_IDX4
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN01_IDX4" ON "SFERP"."AGL_TRAN01" ("COM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_MASTER_DETAIL_CONFIG_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."CFG_MASTER_DETAIL_CONFIG_UK" ON "SFERP"."CFG_MASTER_DETAIL_CONFIG" ("MASTER_DETAIL_GROUP") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_OPENING01
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_OPENING01" ON "SFERP"."BINV_OPENING01" ("PKEY") 
  ;
--------------------------------------------------------
--  DDL for Index UK_BINV_ITEMTYPE_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UK_BINV_ITEMTYPE_CODE" ON "SFERP"."BINV_TYPE" ("ITEMTYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN01_IDX7
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN01_IDX7" ON "SFERP"."AGL_TRAN01" ("TRAN_ACWITH") 
  ;
--------------------------------------------------------
--  DDL for Index PK_XGLB_BPTYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_XGLB_BPTYPE" ON "SFERP"."XGLB_BPTYPE" ("BPTYPE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UX_USER_EMAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UX_USER_EMAIL" ON "SFERP"."JHI_USER" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_OPENING02
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_OPENING02" ON "SFERP"."BINV_OPENING02" ("PKEY") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN02_IDX3
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN02_IDX3" ON "SFERP"."AGL_TRAN02" ("TRAN_SL") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN01_IDX1
--------------------------------------------------------

  CREATE INDEX "SFERP"."AGL_TRAN01_IDX1" ON "SFERP"."AGL_TRAN01" ("TRAN_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BINV_BOM02
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."PK_BINV_BOM02" ON "SFERP"."BINV_BOM02" ("PKEY", "ITEM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UX_USER_LOGIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."UX_USER_LOGIN" ON "SFERP"."JHI_USER" ("LOGIN") 
  ;
--------------------------------------------------------
--  DDL for Index CFG_COLUMN_CONFIG_01_PK
--------------------------------------------------------

  CREATE INDEX "SFERP"."CFG_COLUMN_CONFIG_01_PK" ON "SFERP"."CFG_COLUMN_CONFIG_01" ("PKEY") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_XGLB_USER_COM
--------------------------------------------------------

  CREATE INDEX "SFERP"."IDX_XGLB_USER_COM" ON "SFERP"."XGLB_USER" ("COM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index AGL_TRAN02_UIDX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SFERP"."AGL_TRAN02_UIDX1" ON "SFERP"."AGL_TRAN02" ("PKEY", "TRAN_SL") 
  ;
--------------------------------------------------------
--  DDL for Index XGLB_BP_IDX3
--------------------------------------------------------

  CREATE INDEX "SFERP"."XGLB_BP_IDX3" ON "SFERP"."XGLB_BP" ("BP_CITY") 
  ;
--------------------------------------------------------
--  DDL for Trigger BINV_CATEGORY_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_CATEGORY_BI" 
BEFORE INSERT ON sferp.BINV_CATEGORY
FOR EACH ROW
BEGIN
    IF :NEW.category_id IS NULL THEN
        :NEW.category_id := sferp.binv_category_seq.NEXTVAL;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."BINV_CATEGORY_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_CATEGORY_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_CATEGORY_BU" 
BEFORE UPDATE ON sferp.BINV_CATEGORY
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;


/
ALTER TRIGGER "SFERP"."BINV_CATEGORY_BU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_ITEMTYPE_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_ITEMTYPE_BI" 
BEFORE INSERT ON sferp.BINV_TYPE
FOR EACH ROW
BEGIN
    IF :NEW.itemtype_id IS NULL THEN
        :NEW.itemtype_id := sferp.binv_itemtype_seq.NEXTVAL;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."BINV_ITEMTYPE_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_ITEMTYPE_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_ITEMTYPE_BU" 
BEFORE UPDATE ON sferp.BINV_TYPE
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;


/
ALTER TRIGGER "SFERP"."BINV_ITEMTYPE_BU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_ITEM_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_ITEM_BI" 
BEFORE INSERT ON sferp.BINV_ITEM
FOR EACH ROW
BEGIN
    IF :NEW.item_id IS NULL THEN
        :NEW.item_id := sferp.binv_item_seq.NEXTVAL;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."BINV_ITEM_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_ITEM_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_ITEM_BU" 
BEFORE UPDATE ON sferp.BINV_ITEM
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;


/
ALTER TRIGGER "SFERP"."BINV_ITEM_BU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_OPENING01_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_OPENING01_BI" 
BEFORE INSERT ON sferp.BINV_OPENING01
FOR EACH ROW
BEGIN
    IF :NEW.opening_pkey IS NULL THEN
        :NEW.opening_pkey := sferp.binv_opening01_seq.NEXTVAL;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."BINV_OPENING01_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_OPENING01_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_OPENING01_BU" 
BEFORE UPDATE ON sferp.BINV_OPENING01
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;


/
ALTER TRIGGER "SFERP"."BINV_OPENING01_BU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_OPENING02_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_OPENING02_BI" 
BEFORE INSERT ON sferp.BINV_OPENING02
FOR EACH ROW
BEGIN
    IF :NEW.opening_pkey IS NULL THEN
        :NEW.opening_pkey := sferp.binv_opening02_seq.NEXTVAL;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."BINV_OPENING02_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_WAREHOUSE_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_WAREHOUSE_BI" 
BEFORE INSERT ON "SFERP"."XGLB_WAREHOUSE"
FOR EACH ROW
BEGIN
    IF :NEW.warehouse_id IS NULL THEN
        :NEW.warehouse_id := sferp.binv_warehouse_seq.NEXTVAL;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."BINV_WAREHOUSE_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BINV_WAREHOUSE_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."BINV_WAREHOUSE_BU" 
BEFORE UPDATE ON "SFERP"."XGLB_WAREHOUSE"
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;


/
ALTER TRIGGER "SFERP"."BINV_WAREHOUSE_BU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_01GL_TRANTYPE_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_01GL_TRANTYPE_BIU" 
BEFORE INSERT OR UPDATE ON sferp.agl_trantype
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        :new.created_at := SYSTIMESTAMP;
        -- Ensure transaction code is uppercase
        :new.trantype_code := UPPER(:new.trantype_code);
    END IF;
    :new.updated_at := SYSTIMESTAMP;

    -- Validate voucher prefix contains the code
    IF :new.vouch_prefix NOT LIKE :new.trantype_code || '%' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Voucher prefix must start with transaction code');
    END IF;
END;


/
ALTER TRIGGER "SFERP"."TRG_01GL_TRANTYPE_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_OASSET_CATEGORY_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_OASSET_CATEGORY_BI" 
BEFORE INSERT ON sferp.Oasset_category
FOR EACH ROW
BEGIN
    IF :NEW.category_id IS NULL THEN
        SELECT sferp.oasset_category_seq.NEXTVAL INTO :NEW.category_id FROM dual;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."TRG_OASSET_CATEGORY_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_OASSET_INFO_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_OASSET_INFO_BI" 
BEFORE INSERT ON sferp.Oasset_info
FOR EACH ROW
BEGIN
    IF :NEW.asset_id IS NULL THEN
        SELECT sferp.oasset_info_seq.NEXTVAL INTO :NEW.asset_id FROM dual;
    END IF;
END;


/
ALTER TRIGGER "SFERP"."TRG_OASSET_INFO_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_XGLB_BPTYPE_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_XGLB_BPTYPE_BIU" 
BEFORE INSERT OR UPDATE ON SFERP.XGLB_BPTYPE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        :NEW.CREATED_AT := SYSDATE;
        :NEW.BPTYPE_CODE := UPPER(:NEW.BPTYPE_CODE);
        :NEW.IS_ACTIVE := NVL(:NEW.IS_ACTIVE, 'Y');
    END IF;
    :NEW.UPDATED_AT := SYSDATE;
END;


/
ALTER TRIGGER "SFERP"."TRG_XGLB_BPTYPE_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_XGLB_COMP_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_XGLB_COMP_BI" 
BEFORE INSERT ON sferp.xglb_comp
FOR EACH ROW
BEGIN
    :new.created_at := SYSDATE;
    :new.com_code := UPPER(:new.com_code);
    :new.is_active := NVL(:new.is_active, 'Y');
END;


/
ALTER TRIGGER "SFERP"."TRG_XGLB_COMP_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_XGLB_COUNTRY_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_XGLB_COUNTRY_BU" 
BEFORE UPDATE ON sferp.xglb_country
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.updated_at := SYSTIMESTAMP;
END;


/
ALTER TRIGGER "SFERP"."TRG_XGLB_COUNTRY_BU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_XGLB_FINAL_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_XGLB_FINAL_BIU" 
BEFORE INSERT OR UPDATE ON sferp.xglb_final
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        :new.created_at := SYSTIMESTAMP;
    END IF;
    :new.updated_at := SYSTIMESTAMP;
END;


/
ALTER TRIGGER "SFERP"."TRG_XGLB_FINAL_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_XGLB_USER_BU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SFERP"."TRG_XGLB_USER_BU" 
BEFORE UPDATE ON sferp.xglb_user
FOR EACH ROW
BEGIN
    :new.updated_at := SYSTIMESTAMP;
END;


/
ALTER TRIGGER "SFERP"."TRG_XGLB_USER_BU" ENABLE;
--------------------------------------------------------
--  DDL for Procedure COMPACTSCHEMA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."COMPACTSCHEMA" is
    BEGIN
    -- Enable ROW MOVEMENT and shrink all tables
    FOR t IN (SELECT table_name FROM all_tables WHERE owner = 'SFERP') LOOP
        BEGIN
            EXECUTE IMMEDIATE 'ALTER TABLE SFERP.' || t.table_name || ' ENABLE ROW MOVEMENT';
            EXECUTE IMMEDIATE 'ALTER TABLE SFERP.' || t.table_name || ' SHRINK SPACE';
            DBMS_OUTPUT.PUT_LINE('Shrunk table: ' || t.table_name);
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Failed to shrink table: ' || t.table_name || ' - ' || SQLERRM);
        END;
    END LOOP;

    -- Rebuild all indexes
    FOR i IN (SELECT index_name FROM all_indexes WHERE owner = 'SFERP') LOOP
        BEGIN
            EXECUTE IMMEDIATE 'ALTER INDEX SFERP.' || i.index_name || ' REBUILD';
            DBMS_OUTPUT.PUT_LINE('Rebuilt index: ' || i.index_name);
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Failed to rebuild index: ' || i.index_name || ' - ' || SQLERRM);
        END;
    END LOOP;

    -- Gather table statistics
    FOR s IN (SELECT table_name FROM all_tables WHERE owner = 'SFERP') LOOP
        BEGIN
            DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SFERP', tabname => s.table_name);
            DBMS_OUTPUT.PUT_LINE('Gathered stats for table: ' || s.table_name);
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Failed to gather stats for table: ' || s.table_name || ' - ' || SQLERRM);
        END;
    END LOOP;
END;


/
--------------------------------------------------------
--  DDL for Procedure MY_PROCEDURE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."MY_PROCEDURE" (
    p_acmain_code IN VARCHAR2,
    p_acmain_name IN VARCHAR2,
    p_actype_code IN VARCHAR2
) AS
BEGIN
    INSERT INTO SFERP.AGL_ACMAIN (ACMAIN_CODE, ACMAIN_NAME, ACTYPE_CODE, CREATED_BY, IS_ACTIVE)
    VALUES (p_acmain_code, p_acmain_name, p_actype_code, 'admin', 'Y');


END;


/
--------------------------------------------------------
--  DDL for Procedure PREPARECODEBLOCKS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."PREPARECODEBLOCKS" is
begin
  -- delete from sferp.CFG_COLUMN_CONFIG_01 where coalesce(BUILD_COMPLETED,'N')='N';
   insert into SFERP.CFG_COLUMN_CONFIG_01(PKEY, SCHEMA_NAME, TABLE_NAME, TBL_TITLE, NGCLASS,
   NGSELECTOR, FN, KEY_COLUMN, COLUMNS_INFO, BUILD_COMPLETED)
select
REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
'\1-\2-\3-\4-\5')  pkey,
a.SCHEMA_NAME,
a.TABLE_NAME,
a.TBL_TITLE,
a.NGCLASS,
a.NGSELECTOR,
a.FN,
a.PKEY KEY_COLUMN,
a.COLUMNS_INFO,'N' BUILD_COMPLETED from sferp.vw_ngclass a left join SFERP.CFG_COLUMN_CONFIG_01 b
on a.TABLE_NAME=b.TABLE_NAME and a.SCHEMA_NAME=b.SCHEMA_NAME
where b.pkey is null ;

update  SFERP.CFG_COLUMN_CONFIG_01 a set COLUMNS_INFO = GET_COLUMN_INFO_CLOB(a.TABLE_NAME) 
where   (a.COLUMNS_INFO is null);

update sferp.CFG_COLUMN_CONFIG_01 set
CODE_BLOCKS=
'init
begin
  console.log("Custom init");
end;

onInsert
begin
  console.log("Custom on Insert");
end;

beforeSave
begin
   console.log("Custom Before Save");
end;

'
where BUILD_COMPLETED <> 'Y' ;
end;


/
--------------------------------------------------------
--  DDL for Procedure PREPARECODEBLOCKSFORNEWTABLES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."PREPARECODEBLOCKSFORNEWTABLES" is
begin
  sferp.purge_user_recyclebin();
  -- delete from sferp.CFG_COLUMN_CONFIG_01 where coalesce(BUILD_COMPLETED,'N')='N';
   insert into SFERP.CFG_COLUMN_CONFIG_01(PKEY, SCHEMA_NAME, TABLE_NAME, TBL_TITLE, NGCLASS,
   NGSELECTOR, FN, KEY_COLUMN, COLUMNS_INFO, BUILD_COMPLETED)
select
REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
'\1-\2-\3-\4-\5')  pkey,
a.SCHEMA_NAME,
a.TABLE_NAME,
a.TBL_TITLE,
a.NGCLASS,
a.NGSELECTOR,
a.FN,
a.PKEY KEY_COLUMN,
a.COLUMNS_INFO,'N' BUILD_COMPLETED from sferp.vw_ngclass a left join SFERP.CFG_COLUMN_CONFIG_01 b
on a.TABLE_NAME=b.TABLE_NAME and a.SCHEMA_NAME=b.SCHEMA_NAME
where b.pkey is null ;

update  SFERP.CFG_COLUMN_CONFIG_01 a set COLUMNS_INFO = GET_COLUMN_INFO_CLOB(a.TABLE_NAME)
where    (a.COLUMNS_INFO is null);

update sferp.CFG_COLUMN_CONFIG_01 set
CODE_BLOCKS=
'init
begin
  console.log("Custom init");
end;

onInsert
begin
  console.log("Custom on Insert");
end;

beforeSave
begin
   console.log("Custom Before Save");
end;

'
where CODE_BLOCKS is null and lower(coalesce(BUILD_COMPLETED,'N')) not in ('y','yes','t','true');
end;

/
--------------------------------------------------------
--  DDL for Procedure PREPARE_COLUMNS_INFO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."PREPARE_COLUMNS_INFO" is
begin
   delete from sferp.CFG_COLUMN_CONFIG_01 where coalesce(BUILD_COMPLETED,'N')='N';
   insert into SFERP.CFG_COLUMN_CONFIG_01(PKEY, SCHEMA_NAME, TABLE_NAME, TBL_TITLE, NGCLASS,
   NGSELECTOR, FN, KEY_COLUMN, COLUMNS_INFO, BUILD_COMPLETED)
select
REGEXP_REPLACE(RAWTOHEX(SYS_GUID()),'([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})',
'\1-\2-\3-\4-\5')  pkey,
a.SCHEMA_NAME,
a.TABLE_NAME,
a.TBL_TITLE,
a.NGCLASS,
a.NGSELECTOR,
a.FN,
a.PKEY KEY_COLUMN,
a.COLUMNS_INFO,'N' BUILD_COMPLETED from sferp.vw_ngclass a left join SFERP.CFG_COLUMN_CONFIG_01 b
on a.TABLE_NAME=b.TABLE_NAME and a.SCHEMA_NAME=b.SCHEMA_NAME
where coalesce(b.BUILD_COMPLETED,'N')='N' ;


end;

/
--------------------------------------------------------
--  DDL for Procedure PURGE_USER_RECYCLEBIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."PURGE_USER_RECYCLEBIN" AS
  v_sql VARCHAR2(100) := 'PURGE RECYCLEBIN';
  v_count NUMBER;
BEGIN
  -- Optional: Check if recycle bin has objects
  SELECT COUNT(*) INTO v_count FROM USER_RECYCLEBIN;

  IF v_count > 0 THEN
    -- Execute the PURGE RECYCLEBIN command
    EXECUTE IMMEDIATE v_sql;
    DBMS_OUTPUT.PUT_LINE('User recycle bin purged successfully. ' || v_count || ' objects removed.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('User recycle bin is already empty.');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error purging recycle bin: ' || SQLERRM);
    RAISE;
END purge_user_recyclebin;


/
--------------------------------------------------------
--  DDL for Procedure UPDATECIFORTABLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."UPDATECIFORTABLE" (pTable in varchar2) is
begin

update sferp.CFG_COLUMN_CONFIG_01 a
set COLUMNS_INFO= sferp.GET_COLUMN_INFO_CLOB(TABLE_NAME)
where table_name= pTable ;

end;

/
--------------------------------------------------------
--  DDL for Procedure UPDATECOLUMNSINFOFORTABLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SFERP"."UPDATECOLUMNSINFOFORTABLE" (pTable in varchar2) is
begin

update sferp.CFG_COLUMN_CONFIG_01 a
set COLUMNS_INFO= sferp.GET_COLUMN_INFO_CLOB(TABLE_NAME)
where table_name= pTable ;

end;

/
--------------------------------------------------------
--  DDL for Function GENERATE_STATIC_HTML
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GENERATE_STATIC_HTML" (p_columns_info IN CLOB) RETURN CLOB IS
    v_html CLOB;
    TYPE column_rec IS RECORD (
        rs NUMBER,
        column_id VARCHAR2(50),
        column_name VARCHAR2(50),
        title VARCHAR2(100),
        input_type VARCHAR2(50),
        dt VARCHAR2(50),
        csw NUMBER,
        uis VARCHAR2(100),
        options VARCHAR2(4000),
        lookup_key VARCHAR2(50)
    );
    TYPE column_tab IS TABLE OF column_rec;
    v_columns column_tab := column_tab();
    v_prev_rs NUMBER := -1;
    v_row_html CLOB;
    i NUMBER;
BEGIN
    -- Validate input
    IF p_columns_info IS NULL OR TRIM(p_columns_info) = '[]' THEN
        RETURN '<!-- Error: Empty or null JSON input -->';
    END IF;

    -- Initialize HTML output with provided table tag
    v_html := '<table' || CHR(10) ||
              '  *ngIf="master_record"' || CHR(10) ||
              '  style="width: 100%; border-collapse: collapse;"' || CHR(10) ||
              '  class="row-expansion-table"' || CHR(10) ||
              '>' || CHR(10);

    -- Parse JSON input into collection
    SELECT rs, column_id, column_name, title, input_type, dt, csw, uis, options, lookup_key
    BULK COLLECT INTO v_columns
    FROM JSON_TABLE(
        p_columns_info,
        '$[*]'
        COLUMNS (
            us NUMBER PATH '$.us',
            rs NUMBER PATH '$.rs',
            column_id VARCHAR2(50) PATH '$.column_id',
            column_name VARCHAR2(50) PATH '$.column',
            title VARCHAR2(100) PATH '$.title',
            filter NUMBER PATH '$.filter',
            lookup_key VARCHAR2(50) PATH '$.lookup_key',
            dt VARCHAR2(50) PATH '$.dt',
            grid NUMBER PATH '$.grid',
            input_type VARCHAR2(50) PATH '$.input_type',
            options VARCHAR2(4000) PATH '$.options',
            csw NUMBER PATH '$.csw',
            uis VARCHAR2(100) PATH '$.uis'
        )
    )
    ORDER BY rs, column_id;

    -- Generate HTML rows grouped by rs
    IF v_columns.COUNT > 0 THEN
        FOR i IN 1..v_columns.COUNT LOOP
            -- Skip columns with empty input_type
            IF v_columns(i).input_type IS NULL OR TRIM(v_columns(i).input_type) = '' THEN
                CONTINUE;
            END IF;

            IF v_columns(i).rs != v_prev_rs THEN
                -- Close previous row if not the first
                IF v_prev_rs != -1 THEN
                    v_html := v_html || '  </tr>' || CHR(10);
                END IF;
                -- Start new row
                v_html := v_html || '  <tr>' || CHR(10);
                v_prev_rs := v_columns(i).rs;
            END IF;

            -- Generate column HTML with PrimeNG components based on input_type
            v_row_html := '    <td colspan="' || v_columns(i).csw || '" style="padding: 0.5rem; vertical-align: top; ' || v_columns(i).uis || '">' || CHR(10) ||
                          '      <label class="font-medium mb-2 block">' || v_columns(i).title || '</label>' || CHR(10) ||
                          CASE v_columns(i).input_type
                              WHEN 'text' THEN
                                  '      <input' || CHR(10) ||
                                  '        pInputText' || CHR(10) ||
                                  '        [(ngModel)]="master_record[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '        [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '       [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '        (ngModelChange)="onFieldChange(master_record)"' || CHR(10) ||
                                  '        class="w-full"' || CHR(10) ||
                                  '      />'
                              WHEN 'readonly' THEN
                                  '      <span>' || v_columns(i).column_name || '</span>'
                              WHEN 'dropdown' THEN
                                  '      <p-dropdown' || CHR(10) ||
                                  '        [(ngModel)]="master_record[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '        [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '        (ngModelChange)="onFieldChange(master_record)"' || CHR(10) ||
                                  '       [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '        [options]="_wmsvc!.all_options[''' || v_columns(i).lookup_key || ''']"' || CHR(10) ||
                                  '        appendTo="body"' || CHR(10) ||
                                  '        optionLabel="LABEL"' || CHR(10) ||
                                  '        optionValue="VALUE"' || CHR(10) ||'
                                           [filter]="true"
                                           filterBy="LABEL" '||chr(10)||
                                  '        autoWidth="false" [style]="{''width'':''100%''}"' || CHR(10) ||
                                  '      ></p-dropdown>'
                              WHEN 'autocomplete' THEN
                                  '      <p-autoComplete class="w-full" name="' || v_columns(i).column_name || '">' ||chr(10)||
                                  '       [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '</p-autoComplete>' || CHR(10) ||
                                  '      <!-- Add suggestions from _wmsvc!.all_options if needed -->'
                              WHEN 'radio' THEN
                                  '      <div class="radio-group">' || CHR(10) ||
                                  '        <div class="radio-options">' || CHR(10) ||
                                  '          <!-- Placeholder: Please provide exact p-radioButton template -->' || CHR(10) ||
                                  '          <ng-container *ngFor="let option of _wmsvc!.all_options[''' || v_columns(i).lookup_key || ''']">' || CHR(10) ||
                                  '            <p-radioButton' || CHR(10) ||
                                  '              [inputId]="''' || v_columns(i).column_name || ''' + ''_'' + option.VALUE"' || CHR(10) ||
                                  '              [name]="''' || v_columns(i).column_name || '''"' || CHR(10) ||
                                  '              [value]="option.VALUE"' || CHR(10) ||
                                  '              [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '              [(ngModel)]="master_record[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '              [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '              (ngModelChange)="onFieldChange(master_record)"' || CHR(10) ||
                                  '            ></p-radioButton>' || CHR(10) ||
                                  '            <label [for]="''' || v_columns(i).column_name || ''' + ''_'' + option.VALUE">{{ option.LABEL }}</label>' || CHR(10) ||
                                  '          </ng-container>' || CHR(10) ||
                                  '        </div>' || CHR(10) ||
                                  '      </div>'
                              WHEN 'date' THEN
                                  '      <p-calendar' || CHR(10) ||
                                  '        [(ngModel)]="master_record[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '        [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '        (ngModelChange)="onFieldChange(master_record)"' || CHR(10) ||
                                  '        appendTo="body"' || CHR(10) ||
                                  '        [showIcon]="true"' || CHR(10) ||
                                  '       [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '        dateFormat="yy-mm-dd"' || CHR(10) ||
                                  '        class="w-full"' || CHR(10) ||
                                  '      ></p-calendar>'
                              WHEN 'textarea' THEN
                                  '      <textarea rows="20" cols="45" class="w-full" name="' || v_columns(i).column_name || '" ' ||
                                  '       [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '></textarea>'
                              WHEN 'numeric' THEN
                                  '      <p-inputNumber class="w-full" name="' || v_columns(i).column_name || '" mode="decimal" minFractionDigits="2" maxFractionDigits="2" locale="en-US"' ||
                                 '       [disabled]="!hasChanged(master_record!)" ' || CHR(10) ||
                                  '></p-inputNumber>'
                              ELSE
                                  '      <!-- Unsupported input type: ' || v_columns(i).input_type || ' -->'
                          END || CHR(10) ||
                          '    </td>';

            v_html := v_html || v_row_html || CHR(10);
        END LOOP;

        -- Close the last row
        IF v_prev_rs != -1 THEN
            v_html := v_html || '  </tr>' || CHR(10);
        END IF;
    ELSE
        v_html := v_html || '  <!-- No columns found in JSON -->' || CHR(10);
    END IF;

    -- Close the table
    v_html := v_html || '</table>';

    RETURN v_html;
EXCEPTION
    WHEN OTHERS THEN
        RETURN '<!-- Error generating HTML: ' || SQLERRM || ' -->';
END generate_static_html;

/
--------------------------------------------------------
--  DDL for Function GENERATE_STATIC_HTML_ITEM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GENERATE_STATIC_HTML_ITEM" (p_columns_info IN CLOB) RETURN CLOB IS
    v_html CLOB;
    TYPE column_rec IS RECORD (
        rs NUMBER,
        column_id VARCHAR2(50),
        column_name VARCHAR2(50),
        title VARCHAR2(100),
        input_type VARCHAR2(50),
        dt VARCHAR2(50),
        csw NUMBER,
        uis VARCHAR2(100),
        options VARCHAR2(4000),
        lookup_key VARCHAR2(50)
    );
    TYPE column_tab IS TABLE OF column_rec;
    v_columns column_tab := column_tab();
    v_prev_rs NUMBER := -1;
    v_row_html CLOB;
    i NUMBER;
BEGIN
    -- Validate input
    IF p_columns_info IS NULL OR TRIM(p_columns_info) = '[]' THEN
        RETURN '<!-- Error: Empty or null JSON input -->';
    END IF;

    -- Initialize HTML output with provided table tag, updated to *ngIf="item"
    v_html := '<table' || CHR(10) ||
              '  *ngIf="item"' || CHR(10) ||
              '  style="width: 100%; border-collapse: collapse;"' || CHR(10) ||
              '  class="row-expansion-table"' || CHR(10) ||
              '>' || CHR(10);

    -- Parse JSON input into collection
    SELECT rs, column_id, column_name, title, input_type, dt, csw, uis, options, lookup_key
    BULK COLLECT INTO v_columns
    FROM JSON_TABLE(
        p_columns_info,
        '$[*]'
        COLUMNS (
            us NUMBER PATH '$.us',
            rs NUMBER PATH '$.rs',
            column_id VARCHAR2(50) PATH '$.column_id',
            column_name VARCHAR2(50) PATH '$.column',
            title VARCHAR2(100) PATH '$.title',
            filter NUMBER PATH '$.filter',
            lookup_key VARCHAR2(50) PATH '$.lookup_key',
            dt VARCHAR2(50) PATH '$.dt',
            grid NUMBER PATH '$.grid',
            input_type VARCHAR2(50) PATH '$.input_type',
            options VARCHAR2(4000) PATH '$.options',
            csw NUMBER PATH '$.csw',
            uis VARCHAR2(100) PATH '$.uis'
        )
    )
    ORDER BY rs, column_id;

    -- Generate HTML rows grouped by rs
    IF v_columns.COUNT > 0 THEN
        FOR i IN 1..v_columns.COUNT LOOP
            -- Skip columns with empty input_type
            IF v_columns(i).input_type IS NULL OR TRIM(v_columns(i).input_type) = '' THEN
                CONTINUE;
            END IF;

            IF v_columns(i).rs != v_prev_rs THEN
                -- Close previous row if not the first
                IF v_prev_rs != -1 THEN
                    v_html := v_html || '  </tr>' || CHR(10);
                END IF;
                -- Start new row
                v_html := v_html || '  <tr>' || CHR(10);
                v_prev_rs := v_columns(i).rs;
            END IF;

            -- Generate column HTML with PrimeNG components based on input_type
            v_row_html := '    <td colspan="' || v_columns(i).csw || '" style="padding: 0.5rem; vertical-align: top; ' || v_columns(i).uis || '">' || CHR(10) ||
                          '      <label class="font-medium mb-2 block">' || v_columns(i).title || '</label>' || CHR(10) ||
                          CASE v_columns(i).input_type
                              WHEN 'text' THEN
                                  '      <input' || CHR(10) ||
                                  '        pInputText' || CHR(10) ||
                                  '        [(ngModel)]="item[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '        [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '        (ngModelChange)="onFieldChange(item)"' || CHR(10) ||
                                  '        class="w-full"' || CHR(10) ||
                                  '      />'
                              WHEN 'readonly' THEN
                                  '      <span>' || v_columns(i).column_name || '</span>'
                              WHEN 'dropdown' THEN
                                  '      <p-dropdown' || CHR(10) ||
                                  '        [(ngModel)]="item[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '        [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '        (ngModelChange)="onFieldChange(item)"' || CHR(10) ||
                                  '        [options]="_wmsvc!.all_options[''' || v_columns(i).lookup_key || ''']"' || CHR(10) ||
                                  '        appendTo="body"' || CHR(10) ||
                                  '        optionLabel="LABEL"' || CHR(10) ||
                                  '        optionValue="VALUE"' || CHR(10) ||
                                  '        [filter]="true"
                                           filterBy="LABEL" '||chr(10)||
                                  '        class="w-full"' || CHR(10) ||
                                  '      ></p-dropdown>'
                              WHEN 'autocomplete' THEN
                                  '      <p-autoComplete class="w-full" name="' || v_columns(i).column_name || '"></p-autoComplete>' || CHR(10) ||
                                  '      <!-- Add suggestions from _wmsvc!.all_options if needed -->'
                              WHEN 'radio' THEN
                                  '      <div class="radio-group">' || CHR(10) ||
                                  '        <div class="radio-options">' || CHR(10) ||
                                  '          <!-- Placeholder: Please provide exact p-radioButton template -->' || CHR(10) ||
                                  '          <ng-container *ngFor="let option of _wmsvc!.all_options[''' || v_columns(i).lookup_key || ''']">' || CHR(10) ||
                                  '            <p-radioButton' || CHR(10) ||
                                  '              [inputId]="''' || v_columns(i).column_name || ''' + ''_'' + option.VALUE"' || CHR(10) ||
                                  '              [name]="''' || v_columns(i).column_name || '''"' || CHR(10) ||
                                  '              [value]="option.VALUE"' || CHR(10) ||
                                  '              [(ngModel)]="item[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '              [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '              (ngModelChange)="onFieldChange(item)"' || CHR(10) ||
                                  '            ></p-radioButton>' || CHR(10) ||
                                  '            <label [for]="''' || v_columns(i).column_name || ''' + ''_'' + option.VALUE">{{ option.LABEL }}</label>' || CHR(10) ||
                                  '          </ng-container>' || CHR(10) ||
                                  '        </div>' || CHR(10) ||
                                  '      </div>'
                              WHEN 'date' THEN
                                  '      <p-calendar' || CHR(10) ||
                                  '        [(ngModel)]="item[''' || v_columns(i).column_name || ''']"' || CHR(10) ||
                                  '        [ngModelOptions]="{ standalone: true }"' || CHR(10) ||
                                  '        (ngModelChange)="onFieldChange(item)"' || CHR(10) ||
                                  '        appendTo="body"' || CHR(10) ||
                                  '        [showIcon]="true"' || CHR(10) ||
                                  '        dateFormat="yy-mm-dd"' || CHR(10) ||
                                  '        class="w-full"' || CHR(10) ||
                                  '      ></p-calendar>'
                              WHEN 'textarea' THEN
                                  '      <p-textarea rows="20" cols="45" class="w-full" name="' || v_columns(i).column_name || '"></p-textarea>'
                              WHEN 'numeric' THEN
                                  '      <p-inputNumber class="w-full" name="' || v_columns(i).column_name || '" mode="decimal" minFractionDigits="2" maxFractionDigits="2" locale="en-US"></p-inputNumber>'
                              ELSE
                                  '      <!-- Unsupported input type: ' || v_columns(i).column_name || ' -->'
                          END || CHR(10) ||
                          '    </td>';

            v_html := v_html || v_row_html || CHR(10);
        END LOOP;

        -- Close the last row
        IF v_prev_rs != -1 THEN
            v_html := v_html || '  </tr>' || CHR(10);
        END IF;
    ELSE
        v_html := v_html || '  <!-- No columns found in JSON -->' || CHR(10);
    END IF;

    -- Close the table
    v_html := v_html || '</table>';

    RETURN v_html;
EXCEPTION
    WHEN OTHERS THEN
        RETURN '<!-- Error generating HTML: ' || SQLERRM || ' -->';
END generate_static_html_item;


/
--------------------------------------------------------
--  DDL for Function GETCHILDHTMLFORTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GETCHILDHTMLFORTABLE" (tbl in varchar2) return clob is
v1 clob := empty_clob();
v2 clob := empty_clob() ;
begin
    for erec in (select a.* from sferp.CFG_COLUMN_CONFIG_01 a
    where a.TABLE_NAME=tbl and a.SCHEMA_NAME='SFERP'
        ) loop
    if(erec.CUSTOM_HTML='G') then
        for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-010') loop
        v1 := myrec.TEMPLATE_TEXT ;

        end loop;

    elsif(erec.CUSTOM_HTML='N') then
    for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-005') loop
        v1 := myrec.TEMPLATE_TEXT ;

        end loop;
    else
       for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-006') loop
        v1 := myrec.TEMPLATE_TEXT ;
        v1 := replace(v1, '<!--:tbl_ui:-->', sferp.GENERATE_STATIC_HTML_ITEM(erec.COLUMNS_INFO));

        end loop;
    end if;

    end loop;
    
    v1 := replace(v1, '<p-confirmDialog></p-confirmDialog>', '');

    return v1 ;

end;

/
--------------------------------------------------------
--  DDL for Function GETCHILDTSFORTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GETCHILDTSFORTABLE" (tbl in varchar2) return clob is
v1 clob := empty_clob();
v2 clob := empty_clob() ;
begin
    for myrec in (SELECT a.* FROM sferp.vw_master_detail_helper a where is_master=0 and TABLE_NAME=tbl) loop
        for irec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a where a.pkey= 'ts-003-child') loop
            v1 := irec.TEMPLATE_TEXT;
             v1 := replace(v1, ':selector:', myrec.NGSELECTOR);
             v1 := replace(v1, ':fname:', myrec.FN);
            v1 := replace(v1, ':class:', myrec.NGCLASS);
            v1 := replace(v1, ':title:', myrec.TBL_TITLE);
            v1 := replace(v1, ':tn:', myrec.TABLE_NAME);
            v1 := replace(v1, ':pkey:', myrec.PKEY);
            v1 := replace(v1, ':reference_column:', myrec.CONTEXT_COLUMN);
            v1 := replace(v1, ':columns_info:', sferp.GET_COLUMN_INFO_CLOB(myrec.TABLE_NAME));

       /*
            ts_content = ts_content.replace(':selector:', str(ng_selector) if ng_selector else '')
            ts_content = ts_content.replace(':fname:', str(fn) if fn else '')
            ts_content = ts_content.replace(':class:', str(ng_class) if ng_class else '')
            ts_content = ts_content.replace(':title:', str(tbl_title) if tbl_title else '')
            ts_content = ts_content.replace(':tn:', str(table_name) if table_name else '')
            ts_content = ts_content.replace(':pkey:', str(pkey) if pkey else '')
            ts_content = ts_content.replace(':reference_column:', str(context_column) if context_column else '')
            ts_content = ts_content.replace(':columns_info:', str(columns_info) if columns_info else '[]')

            */


        end loop;
    end loop;
return v1 ;
end;


/
--------------------------------------------------------
--  DDL for Function GETHTMLFORTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GETHTMLFORTABLE" (tbl in varchar2) return clob is
v1 clob := empty_clob();
v2 clob := empty_clob() ;
begin
    for erec in (select a.* from sferp.CFG_COLUMN_CONFIG_01 a
    where a.TABLE_NAME=tbl and a.SCHEMA_NAME='SFERP'
        ) loop
    if(erec.CUSTOM_HTML='N') then
    for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-001') loop
        v1 := myrec.TEMPLATE_TEXT ;

        end loop;
    else
       for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-002') loop
        v1 := myrec.TEMPLATE_TEXT ;
        v1 := replace(v1, '<!--:tbl_ui:-->', sferp.GENERATE_STATIC_HTML(erec.COLUMNS_INFO));

        end loop;
    end if;

    end loop;

    return v1 ;

end;


/
--------------------------------------------------------
--  DDL for Function GETPARENTHTMLFORTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GETPARENTHTMLFORTABLE" (tbl in varchar2) return clob is
v1 clob := empty_clob();
v2 clob := empty_clob() ;
begin
    for erec in (select a.* from sferp.CFG_COLUMN_CONFIG_01 a
    where a.TABLE_NAME=tbl and a.SCHEMA_NAME='SFERP'
        ) loop
    if(erec.CUSTOM_HTML='N') then
    for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-003') loop
        v1 := myrec.TEMPLATE_TEXT ;

        end loop;
    else
       for myrec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a
                             where pkey='uit-004') loop
        v1 := myrec.TEMPLATE_TEXT ;
        v1 := replace(v1, '<!--:tbl_ui:-->', sferp.GENERATE_STATIC_HTML(erec.COLUMNS_INFO));

        end loop;


    end if;
       for myrec in (select a.* from sferp.VW_MASTER_DETAIL_HELPER a
                             where TABLE_NAME=tbl and IS_MASTER=1) loop

        v1 := replace(v1, ':child_selector:', 'c'||myrec.CHILD_SELECTOR);

        end loop;

    end loop;

    return v1 ;

end;


/
--------------------------------------------------------
--  DDL for Function GETPARENTTSFORTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GETPARENTTSFORTABLE" (tbl in varchar2) return clob is
v1 clob := empty_clob();
v2 clob := empty_clob() ;
begin
    for myrec in (SELECT a.* FROM sferp.vw_master_detail_helper a where is_master=1 and TABLE_NAME=tbl) loop
        for irec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a where a.pkey= 'ts-002-parent') loop
            v1 := irec.TEMPLATE_TEXT;
             v1 := replace(v1, ':selector:', myrec.NGSELECTOR);
             v1 := replace(v1, ':fname:', myrec.FN);
            v1 := replace(v1, ':class:', myrec.NGCLASS);
            v1 := replace(v1, ':title:', myrec.TBL_TITLE);
            v1 := replace(v1, ':tn:', myrec.TABLE_NAME);
            v1 := replace(v1, ':pkey:', myrec.PKEY);
            v1 := replace(v1, ':reference_column:', myrec.CONTEXT_COLUMN);
            v1 := replace(v1, ':columns_info:', sferp.GET_COLUMN_INFO_CLOB(myrec.TABLE_NAME));

       /*
            ts_content = ts_content.replace(':selector:', str(ng_selector) if ng_selector else '')
            ts_content = ts_content.replace(':fname:', str(fn) if fn else '')
            ts_content = ts_content.replace(':class:', str(ng_class) if ng_class else '')
            ts_content = ts_content.replace(':title:', str(tbl_title) if tbl_title else '')
            ts_content = ts_content.replace(':tn:', str(table_name) if table_name else '')
            ts_content = ts_content.replace(':pkey:', str(pkey) if pkey else '')
            ts_content = ts_content.replace(':reference_column:', str(context_column) if context_column else '')
            ts_content = ts_content.replace(':columns_info:', str(columns_info) if columns_info else '[]')

            */


        end loop;
    end loop;
return v1 ;
end;


/
--------------------------------------------------------
--  DDL for Function GETTSFORTABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GETTSFORTABLE" (tbl in varchar2) return clob is
v1 clob := empty_clob();
v2 clob := empty_clob() ;
begin
    for myrec in (SELECT a.* FROM SFERP.CFG_COLUMN_CONFIG_01 a where TABLE_NAME=tbl) loop
        for irec in (select a.* from sferp.CFG_TEMPLATE_STORAGE a where a.pkey= 'ts-001-normal') loop
            v1 := irec.TEMPLATE_TEXT;
             v1 := replace(v1, ':selector:', myrec.NGSELECTOR);
             v1 := replace(v1, ':fname:', myrec.FN);
            v1 := replace(v1, ':class:', myrec.NGCLASS);
            v1 := replace(v1, ':title:', myrec.TBL_TITLE);
            v1 := replace(v1, ':tn:', myrec.TABLE_NAME);
            v1 := replace(v1, ':pkey:', myrec.KEY_COLUMN);
            v1 := replace(v1, ':columns_info:', sferp.GET_COLUMN_INFO_CLOB(myrec.TABLE_NAME));

       /*
             ts_content = ts_content.replace(':selector:', str(ng_selector) if ng_selector else '')
            ts_content = ts_content.replace(':fname:', str(fn) if fn else '')
            ts_content = ts_content.replace(':class:', str(ng_class) if ng_class else '')
            ts_content = ts_content.replace(':title:', str(tbl_title) if tbl_title else '')
            ts_content = ts_content.replace(':tn:', str(table_name) if table_name else '')
            ts_content = ts_content.replace(':pkey:', str(pkey) if pkey else '')
            ts_content = ts_content.replace(':columns_info:', str(columns_info) if columns_info else '[]')
            */


        end loop;
    end loop;
return v1 ;
end;


/
--------------------------------------------------------
--  DDL for Function GET_COLUMN_INFO_CLOB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GET_COLUMN_INFO_CLOB" (p_table_name IN VARCHAR2)
RETURN CLOB IS
    v_clob   CLOB;
    v_first  BOOLEAN := TRUE;
BEGIN
    -- Initialize the CLOB and start with an opening bracket
    DBMS_LOB.CREATETEMPORARY(v_clob, TRUE);
    DBMS_LOB.WRITEAPPEND(v_clob, LENGTH('[' || CHR(10)), '[' || CHR(10));

    FOR rec IN (
        SELECT
            COLUMN_ID,
            COLUMN_NAME,
            INITCAP(REPLACE(LOWER(COLUMN_NAME), '_', ' ')) AS column_title,
            DATA_TYPE
        FROM
            ALL_TAB_COLUMNS
        WHERE
            OWNER = 'SFERP'
            AND TABLE_NAME = UPPER(p_table_name)
             AND COLUMN_NAME not in ('CREATED_AT','CREATED_BY', 'UPDATED_AT','UPDATED_BY')
        ORDER BY
            COLUMN_ID
    ) LOOP
        -- Add a comma before each row except the first
        IF NOT v_first THEN
            DBMS_LOB.WRITEAPPEND(v_clob, LENGTH(',' || CHR(10)), ',' || CHR(10));
        ELSE
            v_first := FALSE;
        END IF;

        -- Build and append the first part of the JSON row
        DECLARE
            v_json_row VARCHAR2(4000);
        BEGIN
            v_json_row := '{"us":1, "rs":' || case when rec.DATA_TYPE='CLOB' then 99 else rec.COLUMN_ID end || ', "column_id":"' || rec.COLUMN_ID || '", column:"' ||
                          rec.COLUMN_NAME || '", "title":"' || rec.column_title || '",' || CHR(10) ||
                          ' "filter":true,"lookup_key":"", "dt":"' ||
                          CASE
                              WHEN rec.DATA_TYPE IN ('CHAR', 'VARCHAR2') THEN 'text'
                              WHEN rec.DATA_TYPE in ( 'NUMBER','INTEGER','FLOAT' ) THEN 'number'
                              WHEN LOWER(rec.DATA_TYPE) = 'date' THEN 'date'
                              ELSE rec.DATA_TYPE
                          END || '", "grid":'||case WHEN rec.DATA_TYPE IN ('CLOB','BLOB') THEN 0 else 1 end||', "input_type":"'||case when rec.DATA_TYPE='CLOB' then 'textarea' when rec.DATA_TYPE='DATE' then 'date' else   'text' end ||'", "options":[], "csw":3, "uis":"width: 400px"}' ||
                          CHR(10) || CHR(10);

            -- Append the entire row with correct length
            DBMS_LOB.WRITEAPPEND(v_clob, LENGTH(v_json_row), v_json_row);
        END;
    END LOOP;


    -- Close the JSON array
    DBMS_LOB.WRITEAPPEND(v_clob, LENGTH(']'), ']');
    RETURN v_clob;
END;


/
--------------------------------------------------------
--  DDL for Function GET_MENU_ITEMS_CLOB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GET_MENU_ITEMS_CLOB" RETURN CLOB IS
    v_clob CLOB;
    v_first BOOLEAN := TRUE;
    v_buffer VARCHAR2(32767);
BEGIN
    -- Initialize CLOB
    DBMS_LOB.CREATETEMPORARY(v_clob, TRUE);

    -- Cursor to fetch rows
    FOR rec IN (
        SELECT TBL_TITLE, PKEY
        FROM sferp.CFG_COLUMN_CONFIG_01
        ORDER BY TBL_TITLE
    ) LOOP
        -- Add comma and newline if not the first row
        IF NOT v_first THEN
            v_buffer := ', ' || CHR(10);
            DBMS_LOB.WRITEAPPEND(v_clob, LENGTH(v_buffer), v_buffer);
        END IF;

        -- Build the JSON string for the current row
        v_buffer := '{' ||
                    '"label": "' || REPLACE(rec.TBL_TITLE, '"', '\"') || '",' ||
                    '"icon": "pi pi-table",' ||
                    '"routerLink": ["/easyerp/easybase", "' || REPLACE(rec.PKEY, '"', '\"') || '"]' ||
                    '}';

        -- Append the JSON string
        DBMS_LOB.WRITEAPPEND(v_clob, LENGTH(v_buffer), v_buffer);

        v_first := FALSE;
    END LOOP;

    -- Return NULL if no data
    IF v_clob IS NULL THEN
        DBMS_LOB.FREETEMPORARY(v_clob);
        RETURN NULL;
    END IF;

    RETURN v_clob;
EXCEPTION
    WHEN OTHERS THEN
        IF DBMS_LOB.ISTEMPORARY(v_clob) = 1 THEN
            DBMS_LOB.FREETEMPORARY(v_clob);
        END IF;
        RAISE_APPLICATION_ERROR(-20001, 'Error in get_menu_items_clob: ' || SQLERRM);
        return null;
END get_menu_items_clob;


/
--------------------------------------------------------
--  DDL for Function GET_UUID
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."GET_UUID" RETURN VARCHAR2 IS
BEGIN
    RETURN REGEXP_REPLACE(RAWTOHEX(SYS_GUID()), 
                          '([0-9A-F]{8})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{4})([0-9A-F]{12})', 
                          '\1-\2-\3-\4-\5');
END get_uuid;


/
--------------------------------------------------------
--  DDL for Function TO_CAMEL_CASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "SFERP"."TO_CAMEL_CASE" (p_input VARCHAR2) RETURN VARCHAR2 IS
  v_result VARCHAR2(4000) := '';

  v_count PLS_INTEGER;
  v_word VARCHAR2(4000);
BEGIN
  -- Handle null or empty input
 return INITCAP(REPLACE(LOWER(p_input), '_', ''));

END to_camel_case;


/
--------------------------------------------------------
--  Constraints for Table BINV_ITEMADJUSTMENT01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_ITEMADJUSTMENT01" MODIFY ("ADJUST_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMADJUSTMENT01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BINV_PURCHASE02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PURCHASE02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_TYPE
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_TYPE" MODIFY ("ITEMTYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_TYPE" MODIFY ("ITEMTYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_TYPE" MODIFY ("ITEMTYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_TYPE" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_TYPE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_TYPE" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_TYPE" ADD CONSTRAINT "CHK_BINV_ITEMTYPE_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BINV_TYPE" ADD CONSTRAINT "PK_BINV_ITEMTYPE" PRIMARY KEY ("ITEMTYPE_ID")
  USING INDEX "SFERP"."PK_BINV_ITEMTYPE"  ENABLE;
  ALTER TABLE "SFERP"."BINV_TYPE" ADD CONSTRAINT "UK_BINV_ITEMTYPE_CODE" UNIQUE ("ITEMTYPE_CODE")
  USING INDEX "SFERP"."UK_BINV_ITEMTYPE_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DATABASECHANGELOG
--------------------------------------------------------

  ALTER TABLE "SFERP"."DATABASECHANGELOG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOG" MODIFY ("AUTHOR" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOG" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOG" MODIFY ("DATEEXECUTED" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOG" MODIFY ("ORDEREXECUTED" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOG" MODIFY ("EXECTYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGL_TRAN02
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_TRAN02" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN02" MODIFY ("FKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN02" MODIFY ("TRAN_SL" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN02" MODIFY ("AC_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN02" MODIFY ("TRAN_NARRAT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN02" ADD CONSTRAINT "PK_01GL_TRAN02" PRIMARY KEY ("FKEY")
  USING INDEX "SFERP"."PK_01GL_TRAN02"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_ITEM
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEM" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEM" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEM" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEM" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEM" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEM" ADD CONSTRAINT "CHK_BINV_ITEM_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BINV_ITEM" ADD CONSTRAINT "PK_BINV_ITEM" PRIMARY KEY ("ITEM_ID")
  USING INDEX "SFERP"."PK_BINV_ITEM"  ENABLE;
  ALTER TABLE "SFERP"."BINV_ITEM" ADD CONSTRAINT "UK_BINV_ITEM_CODE" UNIQUE ("ITEM_CODE")
  USING INDEX "SFERP"."UK_BINV_ITEM_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PRODUCT02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PRODUCT02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PURCHRETURN02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PURCHRETURN02" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_LOOKUP_INFO_02_MASTER
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_LOOKUP_INFO_02_MASTER" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table JHI_AUTHORITY
--------------------------------------------------------

  ALTER TABLE "SFERP"."JHI_AUTHORITY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_AUTHORITY" ADD CONSTRAINT "PK_JHI_AUTHORITY" PRIMARY KEY ("NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SFERP"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."USERS" ADD PRIMARY KEY ("USERNAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_BUDGET02
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_BUDGET02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_BOM03_BYP
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_BOM03_BYP" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM03_BYP" MODIFY ("FKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM03_BYP" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_ITEMADJUSTMENT02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_ITEMADJUSTMENT02" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMADJUSTMENT02" MODIFY ("ADJUST_QTY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMADJUSTMENT02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_ITEMMOVEMENT02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT02" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT02" MODIFY ("MOVEMENT_QTY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_MASTER_DETAIL_CONFIG
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_MASTER_DETAIL_CONFIG" ADD CONSTRAINT "CFG_MASTER_DETAIL_CONFIG_UK" UNIQUE ("MASTER_DETAIL_GROUP")
  USING INDEX "SFERP"."CFG_MASTER_DETAIL_CONFIG_UK"  ENABLE;
  ALTER TABLE "SFERP"."CFG_MASTER_DETAIL_CONFIG" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_MASTER_DETAIL_CONFIG" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table HTE_JHI_USER
--------------------------------------------------------

  ALTER TABLE "SFERP"."HTE_JHI_USER" MODIFY ("RN_" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."HTE_JHI_USER" ADD PRIMARY KEY ("RN_") ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_ROLES
--------------------------------------------------------

  ALTER TABLE "SFERP"."USER_ROLES" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."USER_ROLES" MODIFY ("ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."USER_ROLES" ADD PRIMARY KEY ("USERNAME", "ROLE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_PAYTERM
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_PAYTERM" MODIFY ("PAYMENT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_PAYTERM" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_PAYTERM" ADD PRIMARY KEY ("PAYTERM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("WAREHOUSE_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("WAREHOUSE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("WAREHOUSE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("WAREHOUSE_ADD1" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" ADD CONSTRAINT "CHK_BINV_WAREHOUSE_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" ADD CONSTRAINT "PK_BINV_WAREHOUSE" PRIMARY KEY ("WAREHOUSE_ID")
  USING INDEX "SFERP"."PK_BINV_WAREHOUSE"  ENABLE;
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" ADD CONSTRAINT "UK_BINV_WAREHOUSE_CODE" UNIQUE ("WAREHOUSE_CODE")
  USING INDEX "SFERP"."UK_BINV_WAREHOUSE_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BGLOBAL_UOM_CONV
--------------------------------------------------------

  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" ADD CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" MODIFY ("FROM_UOM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" MODIFY ("TO_UOM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGLOBAL_UOM_CONV" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BINV_BOM01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("BOM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("BOMREQ_QTY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("BOM_VALIDFROM" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM01" ADD CONSTRAINT "CHK_BOM01_ACTIVE" CHECK (is_active IN ('Y','N')) ENABLE;
  ALTER TABLE "SFERP"."BINV_BOM01" ADD CONSTRAINT "PK_BINV_BOM01" PRIMARY KEY ("PKEY")
  USING INDEX "SFERP"."PK_BINV_BOM01"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PRODUCT01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PRODUCT01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_PRODUCT01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_COLUMN_CONFIG_01
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_COLUMN_CONFIG_01" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_COLUMN_CONFIG_01" ADD CONSTRAINT "CFG_COLUMN_CONFIG_01_PK" PRIMARY KEY ("PKEY") DEFERRABLE
  USING INDEX "SFERP"."CFG_COLUMN_CONFIG_01_PK"  ENABLE;
  ALTER TABLE "SFERP"."CFG_COLUMN_CONFIG_01" MODIFY ("SCHEMA_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_COLUMN_CONFIG_01" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CITEM_RETURN01
--------------------------------------------------------

  ALTER TABLE "SFERP"."CITEM_RETURN01" MODIFY ("RETURN_NO" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CITEM_RETURN01" MODIFY ("RETURN_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CITEM_RETURN01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."CITEM_RETURN01" ADD UNIQUE ("RETURN_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CITEM_SALES01
--------------------------------------------------------

  ALTER TABLE "SFERP"."CITEM_SALES01" MODIFY ("INVOICE_NO" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CITEM_SALES01" MODIFY ("INVOICE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CITEM_SALES01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."CITEM_SALES01" ADD UNIQUE ("INVOICE_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CITEM_SALES02
--------------------------------------------------------

  ALTER TABLE "SFERP"."CITEM_SALES02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_ACMAIN
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_ACMAIN" MODIFY ("ACMAIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACMAIN" MODIFY ("ACTYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACMAIN" ADD CONSTRAINT "CHK_ACMAIN_ACTIVE" CHECK (is_active IN ('Y','N')) ENABLE;
  ALTER TABLE "SFERP"."AGL_ACMAIN" ADD PRIMARY KEY ("ACMAIN_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_LOOKUP_INFO
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_LOOKUP_INFO" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_LOOKUP_INFO" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_TEMPLATE_STORAGE
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_TEMPLATE_STORAGE" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_TEMPLATE_STORAGE" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_BPTYPE
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_BPTYPE" MODIFY ("BPTYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_BPTYPE" ADD CONSTRAINT "CHK_XGLB_BPTYPE_CODE" CHECK (BPTYPE_CODE = UPPER(BPTYPE_CODE)) ENABLE;
  ALTER TABLE "SFERP"."XGLB_BPTYPE" ADD CONSTRAINT "CHK_XGLB_BPTYPE_ACTIVE" CHECK (IS_ACTIVE IN ('Y','N')) ENABLE;
  ALTER TABLE "SFERP"."XGLB_BPTYPE" ADD CONSTRAINT "PK_XGLB_BPTYPE" PRIMARY KEY ("BPTYPE_CODE")
  USING INDEX "SFERP"."PK_XGLB_BPTYPE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BGL_ITEMIZED_UOM_CONV
--------------------------------------------------------

  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("FROM_UOM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("TO_UOM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" ADD CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BGL_ITEMIZED_UOM_CONV" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_LOOKUP_INFO_02
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_LOOKUP_INFO_02" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_LOOKUP_INFO_02" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGL_PROJECT
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGL_PROJECT" MODIFY ("PROJECT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_PROJECT" MODIFY ("PROJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_PROJECT" MODIFY ("PROJECT_ADD1" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_PROJECT" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_PROJECT" ADD PRIMARY KEY ("PROJECT_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_ITEMMOVEMENT01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT01" MODIFY ("MOVEMENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT01" MODIFY ("FROM_WAREHOUSE_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT01" MODIFY ("TO_WAREHOUSE_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_ITEMMOVEMENT01" ADD PRIMARY KEY ("MOVEMENT_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PURCHRETURN01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PURCHRETURN01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_PURCHRETURN01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_UOM
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_UOM" MODIFY ("UOM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_UOM" MODIFY ("UOM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_UOM" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_UOM" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_UOM" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_UOM" ADD CONSTRAINT "CHK_BINV_UOM_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BINV_UOM" ADD CONSTRAINT "UK_BINV_UOM_CODE" UNIQUE ("UOM_CODE")
  USING INDEX "SFERP"."UK_BINV_UOM_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_USER
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_USER" MODIFY ("COM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_USER" MODIFY ("USER_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_USER" ADD CONSTRAINT "CHK_XGLB_USER_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."XGLB_USER" ADD CONSTRAINT "CHK_XGLB_USER_LOCKED" CHECK (is_locked IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."XGLB_USER" ADD CONSTRAINT "PK_XGLB_USER" PRIMARY KEY ("USER_CODE")
  USING INDEX "SFERP"."PK_XGLB_USER"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_ACSUB
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_ACSUB" ADD CONSTRAINT "AGL_ACSUB_PK" PRIMARY KEY ("AC_CODE")
  USING INDEX "SFERP"."AGL_ACSUB_PK"  ENABLE;
  ALTER TABLE "SFERP"."AGL_ACSUB" MODIFY ("ACSUB_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACSUB" MODIFY ("ACMAIN_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACSUB" MODIFY ("AC_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CFG_MD_CONFIG_02
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_MD_CONFIG_02" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_MD_CONFIG_02" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROLES
--------------------------------------------------------

  ALTER TABLE "SFERP"."ROLES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."ROLES" ADD PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_BP
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_BP" MODIFY ("BP_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_BP" MODIFY ("BPTYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_BP" MODIFY ("BP_CONPERSON" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_BP" MODIFY ("BP_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_BP" MODIFY ("BP_ADD1" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_BP" ADD PRIMARY KEY ("BP_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_COMP
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_COMP" MODIFY ("COM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_COMP" MODIFY ("COM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_COMP" MODIFY ("COM_REGNO" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_COMP" ADD CONSTRAINT "CHK_XGLB_COMP_DATES" CHECK (
        com_fy_start IS NULL OR 
        com_fy_end IS NULL OR 
        com_fy_start <= com_fy_end
    ) ENABLE;
  ALTER TABLE "SFERP"."XGLB_COMP" ADD CONSTRAINT "CHK_XGLB_COMP_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."XGLB_COMP" ADD CONSTRAINT "PK_XGLB_COMP" PRIMARY KEY ("COM_CODE")
  USING INDEX "SFERP"."PK_XGLB_COMP"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_MD_CONFIG_01
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_MD_CONFIG_01" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_MD_CONFIG_01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table JHI_USER
--------------------------------------------------------

  ALTER TABLE "SFERP"."JHI_USER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_USER" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_USER" MODIFY ("ACTIVATED" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_USER" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_USER" ADD CONSTRAINT "PK_JHI_USER" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."JHI_USER" ADD CONSTRAINT "UX_USER_LOGIN" UNIQUE ("LOGIN")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."JHI_USER" ADD CONSTRAINT "UX_USER_EMAIL" UNIQUE ("EMAIL")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."JHI_USER" MODIFY ("PASSWORD_HASH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BINV_PO01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PO01" MODIFY ("PROJECT_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_PO01" MODIFY ("DONOR_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_PO01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_PO01" ADD CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BINV_PO01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_COUNTRY
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_COUNTRY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_COUNTRY" MODIFY ("COUNTRY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_COUNTRY" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_COUNTRY" ADD CONSTRAINT "PK_XGLB_COUNTRY" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX "SFERP"."PK_XGLB_COUNTRY"  ENABLE;
  ALTER TABLE "SFERP"."XGLB_COUNTRY" ADD CONSTRAINT "UQ_XGLB_COUNTRY_NAME" UNIQUE ("COUNTRY_NAME")
  USING INDEX "SFERP"."UQ_XGLB_COUNTRY_NAME"  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_FINAL
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_FINAL" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_FINAL" ADD CONSTRAINT "CHK_XGLB_FINAL_REVENUE" CHECK (ac_revenue IS NULL OR ac_revenue LIKE '4%') ENABLE;
  ALTER TABLE "SFERP"."XGLB_FINAL" ADD CONSTRAINT "CHK_XGLB_FINAL_INVENTORY" CHECK (ac_inventory IS NULL OR ac_inventory LIKE '1%') ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_BUDGET01
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_BUDGET01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_BUDGET01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DATABASECHANGELOGLOCK
--------------------------------------------------------

  ALTER TABLE "SFERP"."DATABASECHANGELOGLOCK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOGLOCK" MODIFY ("LOCKED" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."DATABASECHANGELOGLOCK" ADD CONSTRAINT "PK_DATABASECHANGELOGLOCK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_TRANTYPE
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_TRANTYPE" MODIFY ("TRANTYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRANTYPE" MODIFY ("VOUCH_PREFIX" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRANTYPE" ADD CONSTRAINT "CHK_TRANTYPE_CODE" CHECK (trantype_code = UPPER(trantype_code)) ENABLE;
  ALTER TABLE "SFERP"."AGL_TRANTYPE" ADD PRIMARY KEY ("TRANTYPE_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_CATEGORY
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_CATEGORY" MODIFY ("CATEGORY_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_CATEGORY" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_CATEGORY" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_CATEGORY" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_CATEGORY" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_CATEGORY" ADD CONSTRAINT "CHK_BINV_CATEGORY_ACTIVE" CHECK (is_active IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SFERP"."BINV_CATEGORY" ADD CONSTRAINT "UK_BINV_CATEGORY_CODE" UNIQUE ("CATEGORY_CODE")
  USING INDEX "SFERP"."UK_BINV_CATEGORY_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_TRAN01
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_TRAN01" MODIFY ("TRAN_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN01" MODIFY ("TRAN_VOUCHNO" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN01" MODIFY ("TRANTYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN01" MODIFY ("TRAN_ACWITH" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN01" MODIFY ("TASK_NOTE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_TRAN01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PO02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PO02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PRODUCT03_BYP
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PRODUCT03_BYP" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table JHI_USER_AUTHORITY
--------------------------------------------------------

  ALTER TABLE "SFERP"."JHI_USER_AUTHORITY" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_USER_AUTHORITY" MODIFY ("AUTHORITY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."JHI_USER_AUTHORITY" ADD PRIMARY KEY ("USER_ID", "AUTHORITY_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table OASSET_INFO
--------------------------------------------------------

  ALTER TABLE "SFERP"."OASSET_INFO" MODIFY ("ASSET_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."OASSET_INFO" MODIFY ("ASSET_TAG" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."OASSET_INFO" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."OASSET_INFO" ADD PRIMARY KEY ("ASSET_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "SFERP"."OASSET_INFO" ADD UNIQUE ("ASSET_TAG")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGLB_DATE
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_DATE" MODIFY ("DATERNG_ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGLB_DATE" ADD CONSTRAINT "PK_XGLB_DATE" PRIMARY KEY ("DATERNG_ID")
  USING INDEX "SFERP"."PK_XGLB_DATE"  ENABLE;
  ALTER TABLE "SFERP"."XGLB_DATE" ADD CONSTRAINT "UQ_XGLB_DATE_CODE" UNIQUE ("DATERNG_CODE")
  USING INDEX "SFERP"."UQ_XGLB_DATE_CODE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_OPENING01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("OPENING_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("OPENING_REFNO" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("WAREHOUSE_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("OPENIN_APPROVEDBY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING01" ADD CONSTRAINT "PK_BINV_OPENING01" PRIMARY KEY ("PKEY")
  USING INDEX "SFERP"."PK_BINV_OPENING01"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CFG_GEN_STORAGE
--------------------------------------------------------

  ALTER TABLE "SFERP"."CFG_GEN_STORAGE" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."CFG_GEN_STORAGE" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CITEM_RETURN02
--------------------------------------------------------

  ALTER TABLE "SFERP"."CITEM_RETURN02" ADD PRIMARY KEY ("FKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table IMAGES
--------------------------------------------------------

  ALTER TABLE "SFERP"."IMAGES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."IMAGES" ADD PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table NAP_PAYMENT
--------------------------------------------------------

  ALTER TABLE "SFERP"."NAP_PAYMENT" MODIFY ("MR_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."NAP_PAYMENT" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table XGL_DONOR
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGL_DONOR" MODIFY ("DONOR_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_DONOR" MODIFY ("DONOR_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_DONOR" MODIFY ("DONOR_ADD1" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_DONOR" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."XGL_DONOR" ADD PRIMARY KEY ("DONOR_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_BOM02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_BOM02" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM02" MODIFY ("FKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM02" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_BOM02" ADD CONSTRAINT "PK_BINV_BOM02" PRIMARY KEY ("PKEY", "ITEM_CODE")
  USING INDEX "SFERP"."PK_BINV_BOM02"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_OPENING02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("PKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("FKEY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("TRAN_SL" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("ITEM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("ITEM_EXPIRYDATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("UOM_CODE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("ITEM_QTY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" MODIFY ("ITEM_PRICE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_OPENING02" ADD CONSTRAINT "PK_BINV_OPENING02" PRIMARY KEY ("PKEY")
  USING INDEX "SFERP"."PK_BINV_OPENING02"  ENABLE;
  ALTER TABLE "SFERP"."BINV_OPENING02" ADD CONSTRAINT "UK_OPENING02_LINE" UNIQUE ("FKEY", "TRAN_SL")
  USING INDEX "SFERP"."UK_OPENING02_LINE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MAR_RECEIPT
--------------------------------------------------------

  ALTER TABLE "SFERP"."MAR_RECEIPT" MODIFY ("MR_DATE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."MAR_RECEIPT" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table OASSET_CATEGORY
--------------------------------------------------------

  ALTER TABLE "SFERP"."OASSET_CATEGORY" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."OASSET_CATEGORY" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."OASSET_CATEGORY" ADD PRIMARY KEY ("CATEGORY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_ACTYPE
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_ACTYPE" MODIFY ("ACTYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACTYPE" MODIFY ("ACTYPE_GROUP" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACTYPE" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACTYPE" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACTYPE" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_ACTYPE" ADD PRIMARY KEY ("ACTYPE_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AGL_CC
--------------------------------------------------------

  ALTER TABLE "SFERP"."AGL_CC" MODIFY ("ACCC_NAME" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_CC" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."AGL_CC" ADD PRIMARY KEY ("ACCC_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BINV_PURCHASE01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PURCHASE01" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "SFERP"."BINV_PURCHASE01" ADD PRIMARY KEY ("PKEY")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_BOM01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_BOM01" ADD CONSTRAINT "FK_BOM01_ITEM" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "SFERP"."BINV_ITEM" ("ITEM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_BOM02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_BOM02" ADD CONSTRAINT "FK_BINV_BOM02_ITEM" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "SFERP"."BINV_ITEM" ("ITEM_CODE") ENABLE;
  ALTER TABLE "SFERP"."BINV_BOM02" ADD CONSTRAINT "FK_BINV_BOM02_UOM" FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_BOM03_BYP
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_BOM03_BYP" ADD FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_ITEM
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_ITEM" ADD CONSTRAINT "FK_BINV_ITEM_CATEGORY" FOREIGN KEY ("CATEGORY_CODE")
	  REFERENCES "SFERP"."BINV_CATEGORY" ("CATEGORY_CODE") ENABLE;
  ALTER TABLE "SFERP"."BINV_ITEM" ADD CONSTRAINT "FK_BINV_ITEM_UOM" FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_OPENING01
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_OPENING01" ADD CONSTRAINT "FK_OPENING_WAREHOUSE" FOREIGN KEY ("WAREHOUSE_CODE")
	  REFERENCES "SFERP"."XGLB_WAREHOUSE" ("WAREHOUSE_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_OPENING02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_OPENING02" ADD CONSTRAINT "FK_OPENING02_ITEM" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "SFERP"."BINV_ITEM" ("ITEM_CODE") ENABLE;
  ALTER TABLE "SFERP"."BINV_OPENING02" ADD CONSTRAINT "FK_OPENING02_UOM" FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_PO02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PO02" ADD CONSTRAINT "FK_PO02_PO01" FOREIGN KEY ("PKEY")
	  REFERENCES "SFERP"."BINV_PO01" ("PKEY") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SFERP"."BINV_PO02" ADD CONSTRAINT "FK_PO02_ITEM" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "SFERP"."BINV_ITEM" ("ITEM_CODE") ENABLE;
  ALTER TABLE "SFERP"."BINV_PO02" ADD CONSTRAINT "FK_PO02_UOM" FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_PURCHASE02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PURCHASE02" ADD CONSTRAINT "FK_PRUCHASE02_MASTER" FOREIGN KEY ("PKEY")
	  REFERENCES "SFERP"."BINV_PURCHASE01" ("PKEY") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SFERP"."BINV_PURCHASE02" ADD CONSTRAINT "FK_PRUCHASE02_ITEM" FOREIGN KEY ("ITEM_CODE")
	  REFERENCES "SFERP"."BINV_ITEM" ("ITEM_CODE") ENABLE;
  ALTER TABLE "SFERP"."BINV_PURCHASE02" ADD CONSTRAINT "FK_PRUCHASE02_UOM" FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINV_PURCHRETURN02
--------------------------------------------------------

  ALTER TABLE "SFERP"."BINV_PURCHRETURN02" ADD CONSTRAINT "FK_PURCHRETURN02_MASTER" FOREIGN KEY ("FKEY")
	  REFERENCES "SFERP"."BINV_PURCHRETURN01" ("PKEY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JHI_USER_AUTHORITY
--------------------------------------------------------

  ALTER TABLE "SFERP"."JHI_USER_AUTHORITY" ADD CONSTRAINT "FK_AUTHORITY_NAME" FOREIGN KEY ("AUTHORITY_NAME")
	  REFERENCES "SFERP"."JHI_AUTHORITY" ("NAME") ENABLE;
  ALTER TABLE "SFERP"."JHI_USER_AUTHORITY" ADD CONSTRAINT "FK_USER_ID" FOREIGN KEY ("USER_ID")
	  REFERENCES "SFERP"."JHI_USER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OASSET_INFO
--------------------------------------------------------

  ALTER TABLE "SFERP"."OASSET_INFO" ADD CONSTRAINT "FK_OASSET_INFO_CATEGORY" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "SFERP"."OASSET_CATEGORY" ("CATEGORY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_ROLES
--------------------------------------------------------

  ALTER TABLE "SFERP"."USER_ROLES" ADD CONSTRAINT "FKH8CIRAMU9CC9Q3QCQIV4UE8A6" FOREIGN KEY ("ROLE_ID")
	  REFERENCES "SFERP"."ROLES" ("ID") ENABLE;
  ALTER TABLE "SFERP"."USER_ROLES" ADD CONSTRAINT "FKCDP2DXQCSDH6RNH6O64RGTCIR" FOREIGN KEY ("USERNAME")
	  REFERENCES "SFERP"."USERS" ("USERNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table XGLB_USER
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_USER" ADD CONSTRAINT "FK_XGLB_USER_COMP" FOREIGN KEY ("COM_CODE")
	  REFERENCES "SFERP"."XGLB_COMP" ("COM_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table XGLB_WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" ADD CONSTRAINT "FK_BINV_WAREHOUSE_UOM" FOREIGN KEY ("UOM_CODE")
	  REFERENCES "SFERP"."BINV_UOM" ("UOM_CODE") ENABLE;
  ALTER TABLE "SFERP"."XGLB_WAREHOUSE" ADD CONSTRAINT "FK_BINV_WAREHOUSE_CATEGORY" FOREIGN KEY ("CATEGORY_CODE")
	  REFERENCES "SFERP"."BINV_CATEGORY" ("CATEGORY_CODE") ENABLE;
