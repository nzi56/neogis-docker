<?php
$tdatalayers_group = array();
$tdatalayers_group[".searchableFields"] = array();
$tdatalayers_group[".ShortName"] = "layers_group";
$tdatalayers_group[".OwnerID"] = "";
$tdatalayers_group[".OriginalTable"] = "config.layers_group";


$tdatalayers_group[".pagesByType"] = my_json_decode( "{\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"masterlist\":[\"masterlist\"],\"masterprint\":[\"masterprint\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" );
$tdatalayers_group[".originalPagesByType"] = $tdatalayers_group[".pagesByType"];
$tdatalayers_group[".pages"] = types2pages( my_json_decode( "{\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"masterlist\":[\"masterlist\"],\"masterprint\":[\"masterprint\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" ) );
$tdatalayers_group[".originalPages"] = $tdatalayers_group[".pages"];
$tdatalayers_group[".defaultPages"] = my_json_decode( "{\"export\":\"export\",\"import\":\"import\",\"list\":\"list\",\"masterlist\":\"masterlist\",\"masterprint\":\"masterprint\",\"print\":\"print\",\"search\":\"search\",\"view\":\"view\"}" );
$tdatalayers_group[".originalDefaultPages"] = $tdatalayers_group[".defaultPages"];

//	field labels
$fieldLabelslayers_group = array();
$fieldToolTipslayers_group = array();
$pageTitleslayers_group = array();
$placeHolderslayers_group = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelslayers_group["English"] = array();
	$fieldToolTipslayers_group["English"] = array();
	$placeHolderslayers_group["English"] = array();
	$pageTitleslayers_group["English"] = array();
	$fieldLabelslayers_group["English"]["pkey"] = "Pkey";
	$fieldToolTipslayers_group["English"]["pkey"] = "";
	$placeHolderslayers_group["English"]["pkey"] = "";
	$fieldLabelslayers_group["English"]["group_code"] = "Group Code";
	$fieldToolTipslayers_group["English"]["group_code"] = "";
	$placeHolderslayers_group["English"]["group_code"] = "";
	$fieldLabelslayers_group["English"]["group_description"] = "Group Description";
	$fieldToolTipslayers_group["English"]["group_description"] = "";
	$placeHolderslayers_group["English"]["group_description"] = "";
	$fieldLabelslayers_group["English"]["param_label"] = "Param Label";
	$fieldToolTipslayers_group["English"]["param_label"] = "";
	$placeHolderslayers_group["English"]["param_label"] = "";
	$fieldLabelslayers_group["English"]["param_view"] = "Param View";
	$fieldToolTipslayers_group["English"]["param_view"] = "";
	$placeHolderslayers_group["English"]["param_view"] = "";
	$fieldLabelslayers_group["English"]["default_zoom"] = "Default Zoom";
	$fieldToolTipslayers_group["English"]["default_zoom"] = "";
	$placeHolderslayers_group["English"]["default_zoom"] = "";
	$fieldLabelslayers_group["English"]["key_columns"] = "Key Columns";
	$fieldToolTipslayers_group["English"]["key_columns"] = "";
	$placeHolderslayers_group["English"]["key_columns"] = "";
	if (count($fieldToolTipslayers_group["English"]))
		$tdatalayers_group[".isUseToolTips"] = true;
}


	$tdatalayers_group[".NCSearch"] = true;



$tdatalayers_group[".shortTableName"] = "layers_group";
$tdatalayers_group[".nSecOptions"] = 0;

$tdatalayers_group[".mainTableOwnerID"] = "";
$tdatalayers_group[".entityType"] = 0;
$tdatalayers_group[".connId"] = "neogisc_at_localhost";


$tdatalayers_group[".strOriginalTableName"] = "config.layers_group";

	



$tdatalayers_group[".showAddInPopup"] = false;

$tdatalayers_group[".showEditInPopup"] = false;

$tdatalayers_group[".showViewInPopup"] = false;

$tdatalayers_group[".listAjax"] = false;
//	temporary
//$tdatalayers_group[".listAjax"] = false;

	$tdatalayers_group[".audit"] = false;

	$tdatalayers_group[".locking"] = false;


$pages = $tdatalayers_group[".defaultPages"];

if( $pages[PAGE_EDIT] ) {
	$tdatalayers_group[".edit"] = true;
	$tdatalayers_group[".afterEditAction"] = 1;
	$tdatalayers_group[".closePopupAfterEdit"] = 1;
	$tdatalayers_group[".afterEditActionDetTable"] = "";
}

if( $pages[PAGE_ADD] ) {
$tdatalayers_group[".add"] = true;
$tdatalayers_group[".afterAddAction"] = 1;
$tdatalayers_group[".closePopupAfterAdd"] = 1;
$tdatalayers_group[".afterAddActionDetTable"] = "";
}

if( $pages[PAGE_LIST] ) {
	$tdatalayers_group[".list"] = true;
}



$tdatalayers_group[".strSortControlSettingsJSON"] = "";




if( $pages[PAGE_VIEW] ) {
$tdatalayers_group[".view"] = true;
}

if( $pages[PAGE_IMPORT] ) {
$tdatalayers_group[".import"] = true;
}

if( $pages[PAGE_EXPORT] ) {
$tdatalayers_group[".exportTo"] = true;
}

if( $pages[PAGE_PRINT] ) {
$tdatalayers_group[".printFriendly"] = true;
}



$tdatalayers_group[".showSimpleSearchOptions"] = true; // temp fix #13449

// Allow Show/Hide Fields in GRID
$tdatalayers_group[".allowShowHideFields"] = true; // temp fix #13449
//

// Allow Fields Reordering in GRID
$tdatalayers_group[".allowFieldsReordering"] = true; // temp fix #13449
//

$tdatalayers_group[".isUseAjaxSuggest"] = true;

$tdatalayers_group[".rowHighlite"] = true;





$tdatalayers_group[".ajaxCodeSnippetAdded"] = false;

$tdatalayers_group[".buttonsAdded"] = false;

$tdatalayers_group[".addPageEvents"] = false;

// use timepicker for search panel
$tdatalayers_group[".isUseTimeForSearch"] = false;


$tdatalayers_group[".badgeColor"] = "E07878";


$tdatalayers_group[".allSearchFields"] = array();
$tdatalayers_group[".filterFields"] = array();
$tdatalayers_group[".requiredSearchFields"] = array();

$tdatalayers_group[".googleLikeFields"] = array();
$tdatalayers_group[".googleLikeFields"][] = "pkey";
$tdatalayers_group[".googleLikeFields"][] = "group_code";
$tdatalayers_group[".googleLikeFields"][] = "group_description";
$tdatalayers_group[".googleLikeFields"][] = "param_label";
$tdatalayers_group[".googleLikeFields"][] = "param_view";
$tdatalayers_group[".googleLikeFields"][] = "default_zoom";
$tdatalayers_group[".googleLikeFields"][] = "key_columns";



$tdatalayers_group[".tableType"] = "list";

$tdatalayers_group[".printerPageOrientation"] = 0;
$tdatalayers_group[".nPrinterPageScale"] = 100;

$tdatalayers_group[".nPrinterSplitRecords"] = 40;

$tdatalayers_group[".geocodingEnabled"] = false;










$tdatalayers_group[".pageSize"] = 20;

$tdatalayers_group[".warnLeavingPages"] = true;



$tstrOrderBy = "";
$tdatalayers_group[".strOrderBy"] = $tstrOrderBy;

$tdatalayers_group[".orderindexes"] = array();


$tdatalayers_group[".sqlHead"] = "SELECT pkey,  	group_code,  	group_description,  	param_label,  	param_view,  	default_zoom,  	key_columns";
$tdatalayers_group[".sqlFrom"] = "FROM config.layers_group";
$tdatalayers_group[".sqlWhereExpr"] = "";
$tdatalayers_group[".sqlTail"] = "";










//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdatalayers_group[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdatalayers_group[".arrGroupsPerPage"] = $arrGPP;

$tdatalayers_group[".highlightSearchResults"] = true;

$tableKeyslayers_group = array();
$tableKeyslayers_group[] = "pkey";
$tdatalayers_group[".Keys"] = $tableKeyslayers_group;


$tdatalayers_group[".hideMobileList"] = array();




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

		$fdata["sourceSingle"] = "pkey";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "pkey";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text area");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
				$edata["nRows"] = 100;
			$edata["nCols"] = 200;

	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["pkey"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "pkey";
//	group_code
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "group_code";
	$fdata["GoodName"] = "group_code";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","group_code");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "group_code";

		$fdata["sourceSingle"] = "group_code";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "group_code";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["group_code"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "group_code";
//	group_description
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "group_description";
	$fdata["GoodName"] = "group_description";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","group_description");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "group_description";

		$fdata["sourceSingle"] = "group_description";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "group_description";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["group_description"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "group_description";
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

		$fdata["sourceSingle"] = "param_label";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "param_label";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["param_label"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "param_label";
//	param_view
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 5;
	$fdata["strName"] = "param_view";
	$fdata["GoodName"] = "param_view";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","param_view");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "param_view";

		$fdata["sourceSingle"] = "param_view";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "param_view";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["param_view"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "param_view";
//	default_zoom
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 6;
	$fdata["strName"] = "default_zoom";
	$fdata["GoodName"] = "default_zoom";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","default_zoom");
	$fdata["FieldType"] = 14;


	
	
			

		$fdata["strField"] = "default_zoom";

		$fdata["sourceSingle"] = "default_zoom";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "default_zoom";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Number");

	
	
	
	
	
	
		$vdata["DecimalDigits"] = 0;

	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

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


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["default_zoom"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "default_zoom";
//	key_columns
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 7;
	$fdata["strName"] = "key_columns";
	$fdata["GoodName"] = "key_columns";
	$fdata["ownerTable"] = "config.layers_group";
	$fdata["Label"] = GetFieldLabel("config_layers_group","key_columns");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "key_columns";

		$fdata["sourceSingle"] = "key_columns";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "key_columns";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
		
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text area");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
				$edata["nRows"] = 100;
			$edata["nCols"] = 200;

	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
	//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatalayers_group["key_columns"] = $fdata;
		$tdatalayers_group[".searchableFields"][] = "key_columns";


$tables_data["config.layers_group"]=&$tdatalayers_group;
$field_labels["config_layers_group"] = &$fieldLabelslayers_group;
$fieldToolTips["config_layers_group"] = &$fieldToolTipslayers_group;
$placeHolders["config_layers_group"] = &$placeHolderslayers_group;
$page_titles["config_layers_group"] = &$pageTitleslayers_group;

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)

//if !@TABLE.bReportCrossTab

$detailsTablesData["config.layers_group"] = array();
//	config.layers_info
	
	

		$dIndex = 0;
	$detailsParam = array();
	$detailsParam["dDataSourceTable"]="config.layers_info";
		$detailsParam["dOriginalTable"] = "config.layers_info";



		
		$detailsParam["dType"]=PAGE_LIST;
	$detailsParam["dShortTable"] = "layers_info";
	$detailsParam["dCaptionTable"] = GetTableCaption("config_layers_info");
	$detailsParam["masterKeys"] =array();
	$detailsParam["detailKeys"] =array();


		
	$detailsTablesData["config.layers_group"][$dIndex] = $detailsParam;

	
		$detailsTablesData["config.layers_group"][$dIndex]["masterKeys"] = array();

	$detailsTablesData["config.layers_group"][$dIndex]["masterKeys"][]="group_code";

				$detailsTablesData["config.layers_group"][$dIndex]["detailKeys"] = array();

	$detailsTablesData["config.layers_group"][$dIndex]["detailKeys"][]="layer_group";
//endif

// tables which are master tables for current table (detail)
$masterTablesData["config.layers_group"] = array();



// -----------------end  prepare master-details data arrays ------------------------------//



require_once(getabspath("classes/sql.php"));











function createSqlQuery_layers_group()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "pkey,  	group_code,  	group_description,  	param_label,  	param_view,  	default_zoom,  	key_columns";
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
$proto0["m_fromlist"] = array();
												$proto20=array();
$proto20["m_link"] = "SQLL_MAIN";
			$proto21=array();
$proto21["m_strName"] = "config.layers_group";
$proto21["m_srcTableName"] = "config.layers_group";
$proto21["m_columns"] = array();
$proto21["m_columns"][] = "pkey";
$proto21["m_columns"][] = "group_code";
$proto21["m_columns"][] = "group_description";
$proto21["m_columns"][] = "param_label";
$proto21["m_columns"][] = "param_view";
$proto21["m_columns"][] = "default_zoom";
$proto21["m_columns"][] = "key_columns";
$obj = new SQLTable($proto21);

$proto20["m_table"] = $obj;
$proto20["m_sql"] = "config.layers_group";
$proto20["m_alias"] = "";
$proto20["m_srcTableName"] = "config.layers_group";
$proto22=array();
$proto22["m_sql"] = "";
$proto22["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto22["m_column"]=$obj;
$proto22["m_contained"] = array();
$proto22["m_strCase"] = "";
$proto22["m_havingmode"] = false;
$proto22["m_inBrackets"] = false;
$proto22["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto22);

$proto20["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto20);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="config.layers_group";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_layers_group = createSqlQuery_layers_group();


	
		;

							

$tdatalayers_group[".sqlquery"] = $queryData_layers_group;



$tableEvents["config.layers_group"] = new eventsBase;
$tdatalayers_group[".hasEvents"] = false;

?>