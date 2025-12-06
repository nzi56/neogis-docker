<?php
require_once(getabspath("classes/cipherer.php"));




$tdataconfig_layers_group = array();
	$tdataconfig_layers_group[".truncateText"] = true;
	$tdataconfig_layers_group[".NumberOfChars"] = 80;
	$tdataconfig_layers_group[".ShortName"] = "config_layers_group";
	$tdataconfig_layers_group[".OwnerID"] = "";
	$tdataconfig_layers_group[".OriginalTable"] = "config.layers_group";

//	field labels
$fieldLabelsconfig_layers_group = array();
$fieldToolTipsconfig_layers_group = array();
$pageTitlesconfig_layers_group = array();
$placeHoldersconfig_layers_group = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelsconfig_layers_group["English"] = array();
	$fieldToolTipsconfig_layers_group["English"] = array();
	$placeHoldersconfig_layers_group["English"] = array();
	$pageTitlesconfig_layers_group["English"] = array();
	$fieldLabelsconfig_layers_group["English"]["pkey"] = "Pkey";
	$fieldToolTipsconfig_layers_group["English"]["pkey"] = "";
	$placeHoldersconfig_layers_group["English"]["pkey"] = "";
	$fieldLabelsconfig_layers_group["English"]["group_code"] = "Group Code";
	$fieldToolTipsconfig_layers_group["English"]["group_code"] = "";
	$placeHoldersconfig_layers_group["English"]["group_code"] = "";
	$fieldLabelsconfig_layers_group["English"]["group_description"] = "Group Description";
	$fieldToolTipsconfig_layers_group["English"]["group_description"] = "";
	$placeHoldersconfig_layers_group["English"]["group_description"] = "";
	$fieldLabelsconfig_layers_group["English"]["param_label"] = "Param Label";
	$fieldToolTipsconfig_layers_group["English"]["param_label"] = "";
	$placeHoldersconfig_layers_group["English"]["param_label"] = "";
	$fieldLabelsconfig_layers_group["English"]["param_view"] = "Param View";
	$fieldToolTipsconfig_layers_group["English"]["param_view"] = "";
	$placeHoldersconfig_layers_group["English"]["param_view"] = "";
	$fieldLabelsconfig_layers_group["English"]["default_zoom"] = "Default Zoom";
	$fieldToolTipsconfig_layers_group["English"]["default_zoom"] = "";
	$placeHoldersconfig_layers_group["English"]["default_zoom"] = "";
	$fieldLabelsconfig_layers_group["English"]["key_columns"] = "Key Columns";
	$fieldToolTipsconfig_layers_group["English"]["key_columns"] = "";
	$placeHoldersconfig_layers_group["English"]["key_columns"] = "";
	$fieldLabelsconfig_layers_group["English"]["consumers_info_sql"] = "Consumers Info Sql";
	$fieldToolTipsconfig_layers_group["English"]["consumers_info_sql"] = "";
	$placeHoldersconfig_layers_group["English"]["consumers_info_sql"] = "";
	if (count($fieldToolTipsconfig_layers_group["English"]))
		$tdataconfig_layers_group[".isUseToolTips"] = true;
}
if(mlang_getcurrentlang()=="")
{
	$fieldLabelsconfig_layers_group[""] = array();
	$fieldToolTipsconfig_layers_group[""] = array();
	$placeHoldersconfig_layers_group[""] = array();
	$pageTitlesconfig_layers_group[""] = array();
	if (count($fieldToolTipsconfig_layers_group[""]))
		$tdataconfig_layers_group[".isUseToolTips"] = true;
}


	$tdataconfig_layers_group[".NCSearch"] = true;



$tdataconfig_layers_group[".shortTableName"] = "config_layers_group";
$tdataconfig_layers_group[".nSecOptions"] = 0;
$tdataconfig_layers_group[".recsPerRowPrint"] = 1;
$tdataconfig_layers_group[".mainTableOwnerID"] = "";
$tdataconfig_layers_group[".moveNext"] = 1;
$tdataconfig_layers_group[".entityType"] = 0;

$tdataconfig_layers_group[".strOriginalTableName"] = "config.layers_group";

	



$tdataconfig_layers_group[".showAddInPopup"] = false;

$tdataconfig_layers_group[".showEditInPopup"] = false;

$tdataconfig_layers_group[".showViewInPopup"] = false;

//page's base css files names
$popupPagesLayoutNames = array();
$tdataconfig_layers_group[".popupPagesLayoutNames"] = $popupPagesLayoutNames;


$tdataconfig_layers_group[".fieldsForRegister"] = array();

$tdataconfig_layers_group[".listAjax"] = false;

	$tdataconfig_layers_group[".audit"] = false;

	$tdataconfig_layers_group[".locking"] = false;

$tdataconfig_layers_group[".edit"] = true;
$tdataconfig_layers_group[".afterEditAction"] = 1;
$tdataconfig_layers_group[".closePopupAfterEdit"] = 1;
$tdataconfig_layers_group[".afterEditActionDetTable"] = "";

$tdataconfig_layers_group[".add"] = true;
$tdataconfig_layers_group[".afterAddAction"] = 1;
$tdataconfig_layers_group[".closePopupAfterAdd"] = 1;
$tdataconfig_layers_group[".afterAddActionDetTable"] = "";

$tdataconfig_layers_group[".list"] = true;



$tdataconfig_layers_group[".reorderRecordsByHeader"] = true;


$tdataconfig_layers_group[".exportFormatting"] = 2;
$tdataconfig_layers_group[".exportDelimiter"] = ",";
		
$tdataconfig_layers_group[".copy"] = true;
$tdataconfig_layers_group[".view"] = true;

$tdataconfig_layers_group[".import"] = true;

$tdataconfig_layers_group[".exportTo"] = true;

$tdataconfig_layers_group[".printFriendly"] = true;

$tdataconfig_layers_group[".delete"] = true;

$tdataconfig_layers_group[".showSimpleSearchOptions"] = false;

// Allow Show/Hide Fields in GRID
$tdataconfig_layers_group[".allowShowHideFields"] = false;
//

// Allow Fields Reordering in GRID
$tdataconfig_layers_group[".allowFieldsReordering"] = false;
//

// search Saving settings
$tdataconfig_layers_group[".searchSaving"] = false;
//

$tdataconfig_layers_group[".showSearchPanel"] = true;
		$tdataconfig_layers_group[".flexibleSearch"] = true;

$tdataconfig_layers_group[".isUseAjaxSuggest"] = true;

$tdataconfig_layers_group[".rowHighlite"] = true;





$tdataconfig_layers_group[".ajaxCodeSnippetAdded"] = false;

$tdataconfig_layers_group[".buttonsAdded"] = false;

$tdataconfig_layers_group[".addPageEvents"] = false;

// use timepicker for search panel
$tdataconfig_layers_group[".isUseTimeForSearch"] = false;



$tdataconfig_layers_group[".badgeColor"] = "CD5C5C";


$tdataconfig_layers_group[".allSearchFields"] = array();
$tdataconfig_layers_group[".filterFields"] = array();
$tdataconfig_layers_group[".requiredSearchFields"] = array();

$tdataconfig_layers_group[".allSearchFields"][] = "group_code";
	$tdataconfig_layers_group[".allSearchFields"][] = "group_description";
	$tdataconfig_layers_group[".allSearchFields"][] = "param_view";
	$tdataconfig_layers_group[".allSearchFields"][] = "default_zoom";
	$tdataconfig_layers_group[".allSearchFields"][] = "key_columns";
	

$tdataconfig_layers_group[".googleLikeFields"] = array();
$tdataconfig_layers_group[".googleLikeFields"][] = "pkey";
$tdataconfig_layers_group[".googleLikeFields"][] = "group_code";
$tdataconfig_layers_group[".googleLikeFields"][] = "group_description";
$tdataconfig_layers_group[".googleLikeFields"][] = "param_label";
$tdataconfig_layers_group[".googleLikeFields"][] = "param_view";
$tdataconfig_layers_group[".googleLikeFields"][] = "default_zoom";
$tdataconfig_layers_group[".googleLikeFields"][] = "key_columns";
$tdataconfig_layers_group[".googleLikeFields"][] = "consumers_info_sql";


$tdataconfig_layers_group[".advSearchFields"] = array();
$tdataconfig_layers_group[".advSearchFields"][] = "group_code";
$tdataconfig_layers_group[".advSearchFields"][] = "group_description";
$tdataconfig_layers_group[".advSearchFields"][] = "param_view";
$tdataconfig_layers_group[".advSearchFields"][] = "default_zoom";
$tdataconfig_layers_group[".advSearchFields"][] = "key_columns";

$tdataconfig_layers_group[".tableType"] = "list";

$tdataconfig_layers_group[".printerPageOrientation"] = 0;
$tdataconfig_layers_group[".nPrinterPageScale"] = 100;

$tdataconfig_layers_group[".nPrinterSplitRecords"] = 40;

$tdataconfig_layers_group[".nPrinterPDFSplitRecords"] = 40;



$tdataconfig_layers_group[".geocodingEnabled"] = false;





$tdataconfig_layers_group[".listGridLayout"] = 3;





// view page pdf

// print page pdf


$tdataconfig_layers_group[".pageSize"] = 20;

$tdataconfig_layers_group[".warnLeavingPages"] = true;



$tstrOrderBy = "";
if(strlen($tstrOrderBy) && strtolower(substr($tstrOrderBy,0,8))!="order by")
	$tstrOrderBy = "order by ".$tstrOrderBy;
$tdataconfig_layers_group[".strOrderBy"] = $tstrOrderBy;

$tdataconfig_layers_group[".orderindexes"] = array();

$tdataconfig_layers_group[".sqlHead"] = "SELECT pkey,  	group_code,  	group_description,  	param_label,  	param_view,  	default_zoom,  	key_columns,  	consumers_info_sql";
$tdataconfig_layers_group[".sqlFrom"] = "FROM config.layers_group";
$tdataconfig_layers_group[".sqlWhereExpr"] = "";
$tdataconfig_layers_group[".sqlTail"] = "";












//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdataconfig_layers_group[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdataconfig_layers_group[".arrGroupsPerPage"] = $arrGPP;

$tdataconfig_layers_group[".highlightSearchResults"] = true;

$tableKeysconfig_layers_group = array();
$tableKeysconfig_layers_group[] = "pkey";
$tdataconfig_layers_group[".Keys"] = $tableKeysconfig_layers_group;

$tdataconfig_layers_group[".listFields"] = array();
$tdataconfig_layers_group[".listFields"][] = "group_code";
$tdataconfig_layers_group[".listFields"][] = "group_description";
$tdataconfig_layers_group[".listFields"][] = "param_view";
$tdataconfig_layers_group[".listFields"][] = "default_zoom";
$tdataconfig_layers_group[".listFields"][] = "key_columns";

$tdataconfig_layers_group[".hideMobileList"] = array();


$tdataconfig_layers_group[".viewFields"] = array();
$tdataconfig_layers_group[".viewFields"][] = "group_code";
$tdataconfig_layers_group[".viewFields"][] = "group_description";
$tdataconfig_layers_group[".viewFields"][] = "param_view";
$tdataconfig_layers_group[".viewFields"][] = "default_zoom";
$tdataconfig_layers_group[".viewFields"][] = "key_columns";

$tdataconfig_layers_group[".addFields"] = array();
$tdataconfig_layers_group[".addFields"][] = "group_code";
$tdataconfig_layers_group[".addFields"][] = "group_description";
$tdataconfig_layers_group[".addFields"][] = "param_view";
$tdataconfig_layers_group[".addFields"][] = "default_zoom";
$tdataconfig_layers_group[".addFields"][] = "key_columns";

$tdataconfig_layers_group[".masterListFields"] = array();
$tdataconfig_layers_group[".masterListFields"][] = "pkey";
$tdataconfig_layers_group[".masterListFields"][] = "group_code";
$tdataconfig_layers_group[".masterListFields"][] = "group_description";
$tdataconfig_layers_group[".masterListFields"][] = "param_label";
$tdataconfig_layers_group[".masterListFields"][] = "param_view";
$tdataconfig_layers_group[".masterListFields"][] = "default_zoom";
$tdataconfig_layers_group[".masterListFields"][] = "key_columns";
$tdataconfig_layers_group[".masterListFields"][] = "consumers_info_sql";

$tdataconfig_layers_group[".inlineAddFields"] = array();

$tdataconfig_layers_group[".editFields"] = array();
$tdataconfig_layers_group[".editFields"][] = "group_code";
$tdataconfig_layers_group[".editFields"][] = "group_description";
$tdataconfig_layers_group[".editFields"][] = "param_view";
$tdataconfig_layers_group[".editFields"][] = "default_zoom";
$tdataconfig_layers_group[".editFields"][] = "key_columns";

$tdataconfig_layers_group[".inlineEditFields"] = array();

$tdataconfig_layers_group[".updateSelectedFields"] = array();
$tdataconfig_layers_group[".updateSelectedFields"][] = "group_code";
$tdataconfig_layers_group[".updateSelectedFields"][] = "group_description";
$tdataconfig_layers_group[".updateSelectedFields"][] = "param_view";
$tdataconfig_layers_group[".updateSelectedFields"][] = "default_zoom";
$tdataconfig_layers_group[".updateSelectedFields"][] = "key_columns";


$tdataconfig_layers_group[".exportFields"] = array();
$tdataconfig_layers_group[".exportFields"][] = "group_code";
$tdataconfig_layers_group[".exportFields"][] = "group_description";
$tdataconfig_layers_group[".exportFields"][] = "param_view";
$tdataconfig_layers_group[".exportFields"][] = "default_zoom";
$tdataconfig_layers_group[".exportFields"][] = "key_columns";

$tdataconfig_layers_group[".importFields"] = array();
$tdataconfig_layers_group[".importFields"][] = "group_code";
$tdataconfig_layers_group[".importFields"][] = "group_description";
$tdataconfig_layers_group[".importFields"][] = "param_view";
$tdataconfig_layers_group[".importFields"][] = "default_zoom";
$tdataconfig_layers_group[".importFields"][] = "key_columns";

$tdataconfig_layers_group[".printFields"] = array();
$tdataconfig_layers_group[".printFields"][] = "group_code";
$tdataconfig_layers_group[".printFields"][] = "group_description";
$tdataconfig_layers_group[".printFields"][] = "param_view";
$tdataconfig_layers_group[".printFields"][] = "default_zoom";
$tdataconfig_layers_group[".printFields"][] = "key_columns";


//	pkey
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 1;
	$fdata["strName"] = "pkey";
	$fdata["GoodName"] = "pkey";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","pkey");
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








	$tdataconfig_layers_group["pkey"] = $fdata;
//	group_code
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "group_code";
	$fdata["GoodName"] = "group_code";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","group_code");
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




	$tdataconfig_layers_group["group_code"] = $fdata;
//	group_description
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "group_description";
	$fdata["GoodName"] = "group_description";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","group_description");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "group_description";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "group_description";

	
	
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
		
		$edata["controlWidth"] = 584;

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




	$tdataconfig_layers_group["group_description"] = $fdata;
//	param_label
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 4;
	$fdata["strName"] = "param_label";
	$fdata["GoodName"] = "param_label";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","param_label");
	$fdata["FieldType"] = 201;

	
	
	
			
	
	
	
	
	
	

	
	
	
	
		$fdata["strField"] = "param_label";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "param_label";

	
	
			
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








	$tdataconfig_layers_group["param_label"] = $fdata;
//	param_view
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 5;
	$fdata["strName"] = "param_view";
	$fdata["GoodName"] = "param_view";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","param_view");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "param_view";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "param_view";

	
	
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




	$tdataconfig_layers_group["param_view"] = $fdata;
//	default_zoom
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 6;
	$fdata["strName"] = "default_zoom";
	$fdata["GoodName"] = "default_zoom";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","default_zoom");
	$fdata["FieldType"] = 14;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "default_zoom";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "default_zoom";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Number");

	
	
	
	
	
	
		$vdata["DecimalDigits"] = 0;

	
	
	
	
	
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
		
		$edata["controlWidth"] = 218;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
				$edata["validateAs"]["basicValidate"][] = getJsValidatorName("Number");
							
	
	//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings




	$tdataconfig_layers_group["default_zoom"] = $fdata;
//	key_columns
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 7;
	$fdata["strName"] = "key_columns";
	$fdata["GoodName"] = "key_columns";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","key_columns");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "key_columns";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "key_columns";

	
	
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
		
		$edata["controlWidth"] = 258;

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




	$tdataconfig_layers_group["key_columns"] = $fdata;
//	consumers_info_sql
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 8;
	$fdata["strName"] = "consumers_info_sql";
	$fdata["GoodName"] = "consumers_info_sql";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","consumers_info_sql");
	$fdata["FieldType"] = 201;

	
	
	
			
	
	
	
	
	
	

	
	
	
	
		$fdata["strField"] = "consumers_info_sql";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "consumers_info_sql";

	
	
			
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








	$tdataconfig_layers_group["consumers_info_sql"] = $fdata;


$tables_data["config.layers_group"]=&$tdataconfig_layers_group;
$field_labels["config_layers_group"] = &$fieldLabelsconfig_layers_group;
$fieldToolTips["config_layers_group"] = &$fieldToolTipsconfig_layers_group;
$placeHolders["config_layers_group"] = &$placeHoldersconfig_layers_group;
$page_titles["config_layers_group"] = &$pageTitlesconfig_layers_group;

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)
$detailsTablesData["config.layers_group"] = array();

// tables which are master tables for current table (detail)
$masterTablesData["config.layers_group"] = array();


// -----------------end  prepare master-details data arrays ------------------------------//

require_once(getabspath("classes/sql.php"));










function createSqlQuery_config_layers_group()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "pkey,  	group_code,  	group_description,  	param_label,  	param_view,  	default_zoom,  	key_columns,  	consumers_info_sql";
$proto0["m_strFrom"] = "FROM config.layers_group";
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
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto6["m_sql"] = "pkey";
$proto6["m_srcTableName"] = "config.layers_group";
$proto6["m_expr"]=$obj;
$proto6["m_alias"] = "";
$obj = new SQLFieldListItem($proto6);

$proto0["m_fieldlist"][]=$obj;
						$proto8=array();
			$obj = new SQLField(array(
	"m_strName" => "group_code",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto8["m_sql"] = "group_code";
$proto8["m_srcTableName"] = "config.layers_group";
$proto8["m_expr"]=$obj;
$proto8["m_alias"] = "";
$obj = new SQLFieldListItem($proto8);

$proto0["m_fieldlist"][]=$obj;
						$proto10=array();
			$obj = new SQLField(array(
	"m_strName" => "group_description",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto10["m_sql"] = "group_description";
$proto10["m_srcTableName"] = "config.layers_group";
$proto10["m_expr"]=$obj;
$proto10["m_alias"] = "";
$obj = new SQLFieldListItem($proto10);

$proto0["m_fieldlist"][]=$obj;
						$proto12=array();
			$obj = new SQLField(array(
	"m_strName" => "param_label",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto12["m_sql"] = "param_label";
$proto12["m_srcTableName"] = "config.layers_group";
$proto12["m_expr"]=$obj;
$proto12["m_alias"] = "";
$obj = new SQLFieldListItem($proto12);

$proto0["m_fieldlist"][]=$obj;
						$proto14=array();
			$obj = new SQLField(array(
	"m_strName" => "param_view",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto14["m_sql"] = "param_view";
$proto14["m_srcTableName"] = "config.layers_group";
$proto14["m_expr"]=$obj;
$proto14["m_alias"] = "";
$obj = new SQLFieldListItem($proto14);

$proto0["m_fieldlist"][]=$obj;
						$proto16=array();
			$obj = new SQLField(array(
	"m_strName" => "default_zoom",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto16["m_sql"] = "default_zoom";
$proto16["m_srcTableName"] = "config.layers_group";
$proto16["m_expr"]=$obj;
$proto16["m_alias"] = "";
$obj = new SQLFieldListItem($proto16);

$proto0["m_fieldlist"][]=$obj;
						$proto18=array();
			$obj = new SQLField(array(
	"m_strName" => "key_columns",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto18["m_sql"] = "key_columns";
$proto18["m_srcTableName"] = "config.layers_group";
$proto18["m_expr"]=$obj;
$proto18["m_alias"] = "";
$obj = new SQLFieldListItem($proto18);

$proto0["m_fieldlist"][]=$obj;
						$proto20=array();
			$obj = new SQLField(array(
	"m_strName" => "consumers_info_sql",
	"m_strTable" => "config.layers_group",
	"m_srcTableName" => "config.layers_group"
));

$proto20["m_sql"] = "consumers_info_sql";
$proto20["m_srcTableName"] = "config.layers_group";
$proto20["m_expr"]=$obj;
$proto20["m_alias"] = "";
$obj = new SQLFieldListItem($proto20);

$proto0["m_fieldlist"][]=$obj;
$proto0["m_fromlist"] = array();
												$proto22=array();
$proto22["m_link"] = "SQLL_MAIN";
			$proto23=array();
$proto23["m_strName"] = "config.layers_group";
$proto23["m_srcTableName"] = "config.layers_group";
$proto23["m_columns"] = array();
$proto23["m_columns"][] = "pkey";
$proto23["m_columns"][] = "group_code";
$proto23["m_columns"][] = "group_description";
$proto23["m_columns"][] = "param_label";
$proto23["m_columns"][] = "param_view";
$proto23["m_columns"][] = "default_zoom";
$proto23["m_columns"][] = "key_columns";
$proto23["m_columns"][] = "consumers_info_sql";
$obj = new SQLTable($proto23);

$proto22["m_table"] = $obj;
$proto22["m_sql"] = "config.layers_group";
$proto22["m_alias"] = "";
$proto22["m_srcTableName"] = "config.layers_group";
$proto24=array();
$proto24["m_sql"] = "";
$proto24["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto24["m_column"]=$obj;
$proto24["m_contained"] = array();
$proto24["m_strCase"] = "";
$proto24["m_havingmode"] = false;
$proto24["m_inBrackets"] = false;
$proto24["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto24);

$proto22["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto22);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="config.layers_group";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_config_layers_group = createSqlQuery_config_layers_group();


	
		;

								

$tdataconfig_layers_group[".sqlquery"] = $queryData_config_layers_group;

$tableEvents["config.layers_group"] = new eventsBase;
$tdataconfig_layers_group[".hasEvents"] = false;

?>