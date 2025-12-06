<?php
require_once(getabspath("classes/cipherer.php"));




$tdataconfig_stats_info = array();
	$tdataconfig_stats_info[".truncateText"] = true;
	$tdataconfig_stats_info[".NumberOfChars"] = 80;
	$tdataconfig_stats_info[".ShortName"] = "config_stats_info";
	$tdataconfig_stats_info[".OwnerID"] = "";
	$tdataconfig_stats_info[".OriginalTable"] = "config.stats_info";

//	field labels
$fieldLabelsconfig_stats_info = array();
$fieldToolTipsconfig_stats_info = array();
$pageTitlesconfig_stats_info = array();
$placeHoldersconfig_stats_info = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelsconfig_stats_info["English"] = array();
	$fieldToolTipsconfig_stats_info["English"] = array();
	$placeHoldersconfig_stats_info["English"] = array();
	$pageTitlesconfig_stats_info["English"] = array();
	$fieldLabelsconfig_stats_info["English"]["pkey"] = "Pkey";
	$fieldToolTipsconfig_stats_info["English"]["pkey"] = "";
	$placeHoldersconfig_stats_info["English"]["pkey"] = "";
	$fieldLabelsconfig_stats_info["English"]["group_code"] = "Group Code";
	$fieldToolTipsconfig_stats_info["English"]["group_code"] = "";
	$placeHoldersconfig_stats_info["English"]["group_code"] = "";
	$fieldLabelsconfig_stats_info["English"]["stats_key"] = "Stats Key";
	$fieldToolTipsconfig_stats_info["English"]["stats_key"] = "";
	$placeHoldersconfig_stats_info["English"]["stats_key"] = "";
	$fieldLabelsconfig_stats_info["English"]["stats_description"] = "Stats Description";
	$fieldToolTipsconfig_stats_info["English"]["stats_description"] = "";
	$placeHoldersconfig_stats_info["English"]["stats_description"] = "";
	$fieldLabelsconfig_stats_info["English"]["sql"] = "Sql";
	$fieldToolTipsconfig_stats_info["English"]["sql"] = "";
	$placeHoldersconfig_stats_info["English"]["sql"] = "";
	if (count($fieldToolTipsconfig_stats_info["English"]))
		$tdataconfig_stats_info[".isUseToolTips"] = true;
}
if(mlang_getcurrentlang()=="")
{
	$fieldLabelsconfig_stats_info[""] = array();
	$fieldToolTipsconfig_stats_info[""] = array();
	$placeHoldersconfig_stats_info[""] = array();
	$pageTitlesconfig_stats_info[""] = array();
	if (count($fieldToolTipsconfig_stats_info[""]))
		$tdataconfig_stats_info[".isUseToolTips"] = true;
}


	$tdataconfig_stats_info[".NCSearch"] = true;



$tdataconfig_stats_info[".shortTableName"] = "config_stats_info";
$tdataconfig_stats_info[".nSecOptions"] = 0;
$tdataconfig_stats_info[".recsPerRowPrint"] = 1;
$tdataconfig_stats_info[".mainTableOwnerID"] = "";
$tdataconfig_stats_info[".moveNext"] = 1;
$tdataconfig_stats_info[".entityType"] = 0;

$tdataconfig_stats_info[".strOriginalTableName"] = "config.stats_info";

	



$tdataconfig_stats_info[".showAddInPopup"] = false;

$tdataconfig_stats_info[".showEditInPopup"] = false;

$tdataconfig_stats_info[".showViewInPopup"] = false;

//page's base css files names
$popupPagesLayoutNames = array();
$tdataconfig_stats_info[".popupPagesLayoutNames"] = $popupPagesLayoutNames;


$tdataconfig_stats_info[".fieldsForRegister"] = array();

$tdataconfig_stats_info[".listAjax"] = false;

	$tdataconfig_stats_info[".audit"] = false;

	$tdataconfig_stats_info[".locking"] = false;

$tdataconfig_stats_info[".edit"] = true;
$tdataconfig_stats_info[".afterEditAction"] = 1;
$tdataconfig_stats_info[".closePopupAfterEdit"] = 1;
$tdataconfig_stats_info[".afterEditActionDetTable"] = "";

$tdataconfig_stats_info[".add"] = true;
$tdataconfig_stats_info[".afterAddAction"] = 1;
$tdataconfig_stats_info[".closePopupAfterAdd"] = 1;
$tdataconfig_stats_info[".afterAddActionDetTable"] = "";

$tdataconfig_stats_info[".list"] = true;



$tdataconfig_stats_info[".reorderRecordsByHeader"] = true;


$tdataconfig_stats_info[".exportFormatting"] = 2;
$tdataconfig_stats_info[".exportDelimiter"] = ",";
		
$tdataconfig_stats_info[".copy"] = true;
$tdataconfig_stats_info[".view"] = true;

$tdataconfig_stats_info[".import"] = true;

$tdataconfig_stats_info[".exportTo"] = true;

$tdataconfig_stats_info[".printFriendly"] = true;

$tdataconfig_stats_info[".delete"] = true;

$tdataconfig_stats_info[".showSimpleSearchOptions"] = false;

// Allow Show/Hide Fields in GRID
$tdataconfig_stats_info[".allowShowHideFields"] = false;
//

// Allow Fields Reordering in GRID
$tdataconfig_stats_info[".allowFieldsReordering"] = false;
//

// search Saving settings
$tdataconfig_stats_info[".searchSaving"] = false;
//

$tdataconfig_stats_info[".showSearchPanel"] = true;
		$tdataconfig_stats_info[".flexibleSearch"] = true;

$tdataconfig_stats_info[".isUseAjaxSuggest"] = true;

$tdataconfig_stats_info[".rowHighlite"] = true;





$tdataconfig_stats_info[".ajaxCodeSnippetAdded"] = false;

$tdataconfig_stats_info[".buttonsAdded"] = false;

$tdataconfig_stats_info[".addPageEvents"] = false;

// use timepicker for search panel
$tdataconfig_stats_info[".isUseTimeForSearch"] = false;



$tdataconfig_stats_info[".badgeColor"] = "2F4F4F";


$tdataconfig_stats_info[".allSearchFields"] = array();
$tdataconfig_stats_info[".filterFields"] = array();
$tdataconfig_stats_info[".requiredSearchFields"] = array();

$tdataconfig_stats_info[".allSearchFields"][] = "group_code";
	$tdataconfig_stats_info[".allSearchFields"][] = "stats_key";
	$tdataconfig_stats_info[".allSearchFields"][] = "stats_description";
	$tdataconfig_stats_info[".allSearchFields"][] = "sql";
	

$tdataconfig_stats_info[".googleLikeFields"] = array();
$tdataconfig_stats_info[".googleLikeFields"][] = "pkey";
$tdataconfig_stats_info[".googleLikeFields"][] = "group_code";
$tdataconfig_stats_info[".googleLikeFields"][] = "stats_key";
$tdataconfig_stats_info[".googleLikeFields"][] = "stats_description";
$tdataconfig_stats_info[".googleLikeFields"][] = "sql";


$tdataconfig_stats_info[".advSearchFields"] = array();
$tdataconfig_stats_info[".advSearchFields"][] = "group_code";
$tdataconfig_stats_info[".advSearchFields"][] = "stats_key";
$tdataconfig_stats_info[".advSearchFields"][] = "stats_description";
$tdataconfig_stats_info[".advSearchFields"][] = "sql";

$tdataconfig_stats_info[".tableType"] = "list";

$tdataconfig_stats_info[".printerPageOrientation"] = 0;
$tdataconfig_stats_info[".nPrinterPageScale"] = 100;

$tdataconfig_stats_info[".nPrinterSplitRecords"] = 40;

$tdataconfig_stats_info[".nPrinterPDFSplitRecords"] = 40;



$tdataconfig_stats_info[".geocodingEnabled"] = false;





$tdataconfig_stats_info[".listGridLayout"] = 3;





// view page pdf

// print page pdf


$tdataconfig_stats_info[".pageSize"] = 20;

$tdataconfig_stats_info[".warnLeavingPages"] = true;



$tstrOrderBy = "";
if(strlen($tstrOrderBy) && strtolower(substr($tstrOrderBy,0,8))!="order by")
	$tstrOrderBy = "order by ".$tstrOrderBy;
$tdataconfig_stats_info[".strOrderBy"] = $tstrOrderBy;

$tdataconfig_stats_info[".orderindexes"] = array();

$tdataconfig_stats_info[".sqlHead"] = "SELECT pkey,  	group_code,  	stats_key,  	stats_description,  	\"sql\"";
$tdataconfig_stats_info[".sqlFrom"] = "FROM config.stats_info";
$tdataconfig_stats_info[".sqlWhereExpr"] = "";
$tdataconfig_stats_info[".sqlTail"] = "";












//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdataconfig_stats_info[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdataconfig_stats_info[".arrGroupsPerPage"] = $arrGPP;

$tdataconfig_stats_info[".highlightSearchResults"] = true;

$tableKeysconfig_stats_info = array();
$tableKeysconfig_stats_info[] = "pkey";
$tdataconfig_stats_info[".Keys"] = $tableKeysconfig_stats_info;

$tdataconfig_stats_info[".listFields"] = array();
$tdataconfig_stats_info[".listFields"][] = "group_code";
$tdataconfig_stats_info[".listFields"][] = "stats_key";
$tdataconfig_stats_info[".listFields"][] = "stats_description";

$tdataconfig_stats_info[".hideMobileList"] = array();


$tdataconfig_stats_info[".viewFields"] = array();
$tdataconfig_stats_info[".viewFields"][] = "group_code";
$tdataconfig_stats_info[".viewFields"][] = "stats_key";
$tdataconfig_stats_info[".viewFields"][] = "stats_description";
$tdataconfig_stats_info[".viewFields"][] = "sql";

$tdataconfig_stats_info[".addFields"] = array();
$tdataconfig_stats_info[".addFields"][] = "group_code";
$tdataconfig_stats_info[".addFields"][] = "stats_key";
$tdataconfig_stats_info[".addFields"][] = "stats_description";
$tdataconfig_stats_info[".addFields"][] = "sql";

$tdataconfig_stats_info[".masterListFields"] = array();
$tdataconfig_stats_info[".masterListFields"][] = "pkey";
$tdataconfig_stats_info[".masterListFields"][] = "group_code";
$tdataconfig_stats_info[".masterListFields"][] = "stats_key";
$tdataconfig_stats_info[".masterListFields"][] = "stats_description";
$tdataconfig_stats_info[".masterListFields"][] = "sql";

$tdataconfig_stats_info[".inlineAddFields"] = array();

$tdataconfig_stats_info[".editFields"] = array();
$tdataconfig_stats_info[".editFields"][] = "group_code";
$tdataconfig_stats_info[".editFields"][] = "stats_key";
$tdataconfig_stats_info[".editFields"][] = "stats_description";
$tdataconfig_stats_info[".editFields"][] = "sql";

$tdataconfig_stats_info[".inlineEditFields"] = array();

$tdataconfig_stats_info[".updateSelectedFields"] = array();
$tdataconfig_stats_info[".updateSelectedFields"][] = "group_code";
$tdataconfig_stats_info[".updateSelectedFields"][] = "stats_key";
$tdataconfig_stats_info[".updateSelectedFields"][] = "stats_description";
$tdataconfig_stats_info[".updateSelectedFields"][] = "sql";


$tdataconfig_stats_info[".exportFields"] = array();
$tdataconfig_stats_info[".exportFields"][] = "group_code";
$tdataconfig_stats_info[".exportFields"][] = "stats_key";
$tdataconfig_stats_info[".exportFields"][] = "stats_description";
$tdataconfig_stats_info[".exportFields"][] = "sql";

$tdataconfig_stats_info[".importFields"] = array();
$tdataconfig_stats_info[".importFields"][] = "group_code";
$tdataconfig_stats_info[".importFields"][] = "stats_key";
$tdataconfig_stats_info[".importFields"][] = "stats_description";
$tdataconfig_stats_info[".importFields"][] = "sql";

$tdataconfig_stats_info[".printFields"] = array();
$tdataconfig_stats_info[".printFields"][] = "group_code";
$tdataconfig_stats_info[".printFields"][] = "stats_key";
$tdataconfig_stats_info[".printFields"][] = "stats_description";
$tdataconfig_stats_info[".printFields"][] = "sql";


//	pkey
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 1;
	$fdata["strName"] = "pkey";
	$fdata["GoodName"] = "pkey";
	$fdata["ownerTable"] = "config.stats_info";
	$fdata["Label"] = GetFieldLabel("config_stats_info","pkey");
	$fdata["FieldType"] = 201;

	
	
	
			
	
	
	
	
	
	

	
	
	
	
		$fdata["strField"] = "pkey";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "pkey";

	
	
			
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text area");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
				$edata["nRows"] = 100;
			$edata["nCols"] = 200;

	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;








	$tdataconfig_stats_info["pkey"] = $fdata;
//	group_code
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "group_code";
	$fdata["GoodName"] = "group_code";
	$fdata["ownerTable"] = "config.stats_info";
	$fdata["Label"] = GetFieldLabel("config_stats_info","group_code");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "group_code";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "group_code";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings




	$tdataconfig_stats_info["group_code"] = $fdata;
//	stats_key
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "stats_key";
	$fdata["GoodName"] = "stats_key";
	$fdata["ownerTable"] = "config.stats_info";
	$fdata["Label"] = GetFieldLabel("config_stats_info","stats_key");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "stats_key";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "stats_key";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings




	$tdataconfig_stats_info["stats_key"] = $fdata;
//	stats_description
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 4;
	$fdata["strName"] = "stats_description";
	$fdata["GoodName"] = "stats_description";
	$fdata["ownerTable"] = "config.stats_info";
	$fdata["Label"] = GetFieldLabel("config_stats_info","stats_description");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "stats_description";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "stats_description";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 512;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings




	$tdataconfig_stats_info["stats_description"] = $fdata;
//	sql
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 5;
	$fdata["strName"] = "sql";
	$fdata["GoodName"] = "sql";
	$fdata["ownerTable"] = "config.stats_info";
	$fdata["Label"] = GetFieldLabel("config_stats_info","sql");
	$fdata["FieldType"] = 201;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "sql";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "\"sql\"";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text area");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
				$edata["nRows"] = 81;
			$edata["nCols"] = 518;

	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings




	$tdataconfig_stats_info["sql"] = $fdata;


$tables_data["config.stats_info"]=&$tdataconfig_stats_info;
$field_labels["config_stats_info"] = &$fieldLabelsconfig_stats_info;
$fieldToolTips["config_stats_info"] = &$fieldToolTipsconfig_stats_info;
$placeHolders["config_stats_info"] = &$placeHoldersconfig_stats_info;
$page_titles["config_stats_info"] = &$pageTitlesconfig_stats_info;

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)
$detailsTablesData["config.stats_info"] = array();

// tables which are master tables for current table (detail)
$masterTablesData["config.stats_info"] = array();


// -----------------end  prepare master-details data arrays ------------------------------//

require_once(getabspath("classes/sql.php"));










function createSqlQuery_config_stats_info()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "pkey,  	group_code,  	stats_key,  	stats_description,  	\"sql\"";
$proto0["m_strFrom"] = "FROM config.stats_info";
$proto0["m_strWhere"] = "";
$proto0["m_strOrderBy"] = "";
	
		;
			$proto0["cipherer"] = null;
$proto2=array();
$proto2["m_sql"] = "";
$proto2["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto2["m_column"]=$obj;
$proto2["m_contained"] = array();
$proto2["m_strCase"] = "";
$proto2["m_havingmode"] = false;
$proto2["m_inBrackets"] = false;
$proto2["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto2);

$proto0["m_where"] = $obj;
$proto4=array();
$proto4["m_sql"] = "";
$proto4["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto4["m_column"]=$obj;
$proto4["m_contained"] = array();
$proto4["m_strCase"] = "";
$proto4["m_havingmode"] = false;
$proto4["m_inBrackets"] = false;
$proto4["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto4);

$proto0["m_having"] = $obj;
$proto0["m_fieldlist"] = array();
						$proto6=array();
			$obj = new SQLField(array(
	"m_strName" => "pkey",
	"m_strTable" => "config.stats_info",
	"m_srcTableName" => "config.stats_info"
));

$proto6["m_sql"] = "pkey";
$proto6["m_srcTableName"] = "config.stats_info";
$proto6["m_expr"]=$obj;
$proto6["m_alias"] = "";
$obj = new SQLFieldListItem($proto6);

$proto0["m_fieldlist"][]=$obj;
						$proto8=array();
			$obj = new SQLField(array(
	"m_strName" => "group_code",
	"m_strTable" => "config.stats_info",
	"m_srcTableName" => "config.stats_info"
));

$proto8["m_sql"] = "group_code";
$proto8["m_srcTableName"] = "config.stats_info";
$proto8["m_expr"]=$obj;
$proto8["m_alias"] = "";
$obj = new SQLFieldListItem($proto8);

$proto0["m_fieldlist"][]=$obj;
						$proto10=array();
			$obj = new SQLField(array(
	"m_strName" => "stats_key",
	"m_strTable" => "config.stats_info",
	"m_srcTableName" => "config.stats_info"
));

$proto10["m_sql"] = "stats_key";
$proto10["m_srcTableName"] = "config.stats_info";
$proto10["m_expr"]=$obj;
$proto10["m_alias"] = "";
$obj = new SQLFieldListItem($proto10);

$proto0["m_fieldlist"][]=$obj;
						$proto12=array();
			$obj = new SQLField(array(
	"m_strName" => "stats_description",
	"m_strTable" => "config.stats_info",
	"m_srcTableName" => "config.stats_info"
));

$proto12["m_sql"] = "stats_description";
$proto12["m_srcTableName"] = "config.stats_info";
$proto12["m_expr"]=$obj;
$proto12["m_alias"] = "";
$obj = new SQLFieldListItem($proto12);

$proto0["m_fieldlist"][]=$obj;
						$proto14=array();
			$obj = new SQLField(array(
	"m_strName" => "sql",
	"m_strTable" => "config.stats_info",
	"m_srcTableName" => "config.stats_info"
));

$proto14["m_sql"] = "\"sql\"";
$proto14["m_srcTableName"] = "config.stats_info";
$proto14["m_expr"]=$obj;
$proto14["m_alias"] = "";
$obj = new SQLFieldListItem($proto14);

$proto0["m_fieldlist"][]=$obj;
$proto0["m_fromlist"] = array();
												$proto16=array();
$proto16["m_link"] = "SQLL_MAIN";
			$proto17=array();
$proto17["m_strName"] = "config.stats_info";
$proto17["m_srcTableName"] = "config.stats_info";
$proto17["m_columns"] = array();
$proto17["m_columns"][] = "pkey";
$proto17["m_columns"][] = "group_code";
$proto17["m_columns"][] = "stats_key";
$proto17["m_columns"][] = "stats_description";
$proto17["m_columns"][] = "sql";
$obj = new SQLTable($proto17);

$proto16["m_table"] = $obj;
$proto16["m_sql"] = "config.stats_info";
$proto16["m_alias"] = "";
$proto16["m_srcTableName"] = "config.stats_info";
$proto18=array();
$proto18["m_sql"] = "";
$proto18["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto18["m_column"]=$obj;
$proto18["m_contained"] = array();
$proto18["m_strCase"] = "";
$proto18["m_havingmode"] = false;
$proto18["m_inBrackets"] = false;
$proto18["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto18);

$proto16["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto16);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="config.stats_info";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_config_stats_info = createSqlQuery_config_stats_info();


	
		;

					

$tdataconfig_stats_info[".sqlquery"] = $queryData_config_stats_info;

$tableEvents["config.stats_info"] = new eventsBase;
$tdataconfig_stats_info[".hasEvents"] = false;

?>