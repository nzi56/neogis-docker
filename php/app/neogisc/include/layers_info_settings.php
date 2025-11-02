<?php
$tdatalayers_info = array();
$tdatalayers_info[".searchableFields"] = array();
$tdatalayers_info[".ShortName"] = "layers_info";
$tdatalayers_info[".OwnerID"] = "";
$tdatalayers_info[".OriginalTable"] = "config.layers_info";


$tdatalayers_info[".pagesByType"] = my_json_decode( "{\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" );
$tdatalayers_info[".originalPagesByType"] = $tdatalayers_info[".pagesByType"];
$tdatalayers_info[".pages"] = types2pages( my_json_decode( "{\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" ) );
$tdatalayers_info[".originalPages"] = $tdatalayers_info[".pages"];
$tdatalayers_info[".defaultPages"] = my_json_decode( "{\"export\":\"export\",\"import\":\"import\",\"list\":\"list\",\"print\":\"print\",\"search\":\"search\",\"view\":\"view\"}" );
$tdatalayers_info[".originalDefaultPages"] = $tdatalayers_info[".defaultPages"];

//	field labels
$fieldLabelslayers_info = array();
$fieldToolTipslayers_info = array();
$pageTitleslayers_info = array();
$placeHolderslayers_info = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelslayers_info["English"] = array();
	$fieldToolTipslayers_info["English"] = array();
	$placeHolderslayers_info["English"] = array();
	$pageTitleslayers_info["English"] = array();
	$fieldLabelslayers_info["English"]["pkey"] = "Pkey";
	$fieldToolTipslayers_info["English"]["pkey"] = "";
	$placeHolderslayers_info["English"]["pkey"] = "";
	$fieldLabelslayers_info["English"]["description"] = "Description";
	$fieldToolTipslayers_info["English"]["description"] = "";
	$placeHolderslayers_info["English"]["description"] = "";
	$fieldLabelslayers_info["English"]["name"] = "Name";
	$fieldToolTipslayers_info["English"]["name"] = "";
	$placeHolderslayers_info["English"]["name"] = "";
	$fieldLabelslayers_info["English"]["sqlquery"] = "Sqlquery";
	$fieldToolTipslayers_info["English"]["sqlquery"] = "";
	$placeHolderslayers_info["English"]["sqlquery"] = "";
	$fieldLabelslayers_info["English"]["tableorview"] = "Tableorview";
	$fieldToolTipslayers_info["English"]["tableorview"] = "";
	$placeHolderslayers_info["English"]["tableorview"] = "";
	$fieldLabelslayers_info["English"]["styles"] = "Styles";
	$fieldToolTipslayers_info["English"]["styles"] = "";
	$placeHolderslayers_info["English"]["styles"] = "";
	$fieldLabelslayers_info["English"]["layer_group"] = "Layer Group";
	$fieldToolTipslayers_info["English"]["layer_group"] = "";
	$placeHolderslayers_info["English"]["layer_group"] = "";
	$fieldLabelslayers_info["English"]["is_visible"] = "Is Visible";
	$fieldToolTipslayers_info["English"]["is_visible"] = "";
	$placeHolderslayers_info["English"]["is_visible"] = "";
	$fieldLabelslayers_info["English"]["status"] = "Status";
	$fieldToolTipslayers_info["English"]["status"] = "";
	$placeHolderslayers_info["English"]["status"] = "";
	$fieldLabelslayers_info["English"]["sl_no"] = "Sl No";
	$fieldToolTipslayers_info["English"]["sl_no"] = "";
	$placeHolderslayers_info["English"]["sl_no"] = "";
	$fieldLabelslayers_info["English"]["info_view"] = "Info View";
	$fieldToolTipslayers_info["English"]["info_view"] = "";
	$placeHolderslayers_info["English"]["info_view"] = "";
	$fieldLabelslayers_info["English"]["info_key"] = "Info Key";
	$fieldToolTipslayers_info["English"]["info_key"] = "";
	$placeHolderslayers_info["English"]["info_key"] = "";
	$fieldLabelslayers_info["English"]["geom_column_name"] = "Geom Column Name";
	$fieldToolTipslayers_info["English"]["geom_column_name"] = "";
	$placeHolderslayers_info["English"]["geom_column_name"] = "";
	$fieldLabelslayers_info["English"]["sub_group"] = "Sub Group";
	$fieldToolTipslayers_info["English"]["sub_group"] = "";
	$placeHolderslayers_info["English"]["sub_group"] = "";
	$fieldLabelslayers_info["English"]["geom_type"] = "Geom Type";
	$fieldToolTipslayers_info["English"]["geom_type"] = "";
	$placeHolderslayers_info["English"]["geom_type"] = "";
	$fieldLabelslayers_info["English"]["info_group"] = "Info Group";
	$fieldToolTipslayers_info["English"]["info_group"] = "";
	$placeHolderslayers_info["English"]["info_group"] = "";
	$fieldLabelslayers_info["English"]["minzoom"] = "Minzoom";
	$fieldToolTipslayers_info["English"]["minzoom"] = "";
	$placeHolderslayers_info["English"]["minzoom"] = "";
	$fieldLabelslayers_info["English"]["maxzoom"] = "Maxzoom";
	$fieldToolTipslayers_info["English"]["maxzoom"] = "";
	$placeHolderslayers_info["English"]["maxzoom"] = "";
	$fieldLabelslayers_info["English"]["sld_name"] = "Sld Name";
	$fieldToolTipslayers_info["English"]["sld_name"] = "";
	$placeHolderslayers_info["English"]["sld_name"] = "";
	if (count($fieldToolTipslayers_info["English"]))
		$tdatalayers_info[".isUseToolTips"] = true;
}


	$tdatalayers_info[".NCSearch"] = true;



$tdatalayers_info[".shortTableName"] = "layers_info";
$tdatalayers_info[".nSecOptions"] = 0;

$tdatalayers_info[".mainTableOwnerID"] = "";
$tdatalayers_info[".entityType"] = 0;
$tdatalayers_info[".connId"] = "neogisc_at_localhost";


$tdatalayers_info[".strOriginalTableName"] = "config.layers_info";

	



$tdatalayers_info[".showAddInPopup"] = false;

$tdatalayers_info[".showEditInPopup"] = false;

$tdatalayers_info[".showViewInPopup"] = false;

$tdatalayers_info[".listAjax"] = false;
//	temporary
//$tdatalayers_info[".listAjax"] = false;

	$tdatalayers_info[".audit"] = false;

	$tdatalayers_info[".locking"] = false;


$pages = $tdatalayers_info[".defaultPages"];

if( $pages[PAGE_EDIT] ) {
	$tdatalayers_info[".edit"] = true;
	$tdatalayers_info[".afterEditAction"] = 1;
	$tdatalayers_info[".closePopupAfterEdit"] = 1;
	$tdatalayers_info[".afterEditActionDetTable"] = "";
}

if( $pages[PAGE_ADD] ) {
$tdatalayers_info[".add"] = true;
$tdatalayers_info[".afterAddAction"] = 1;
$tdatalayers_info[".closePopupAfterAdd"] = 1;
$tdatalayers_info[".afterAddActionDetTable"] = "";
}

if( $pages[PAGE_LIST] ) {
	$tdatalayers_info[".list"] = true;
}



$tdatalayers_info[".strSortControlSettingsJSON"] = "";




if( $pages[PAGE_VIEW] ) {
$tdatalayers_info[".view"] = true;
}

if( $pages[PAGE_IMPORT] ) {
$tdatalayers_info[".import"] = true;
}

if( $pages[PAGE_EXPORT] ) {
$tdatalayers_info[".exportTo"] = true;
}

if( $pages[PAGE_PRINT] ) {
$tdatalayers_info[".printFriendly"] = true;
}



$tdatalayers_info[".showSimpleSearchOptions"] = true; // temp fix #13449

// Allow Show/Hide Fields in GRID
$tdatalayers_info[".allowShowHideFields"] = true; // temp fix #13449
//

// Allow Fields Reordering in GRID
$tdatalayers_info[".allowFieldsReordering"] = true; // temp fix #13449
//

$tdatalayers_info[".isUseAjaxSuggest"] = true;

$tdatalayers_info[".rowHighlite"] = true;





$tdatalayers_info[".ajaxCodeSnippetAdded"] = false;

$tdatalayers_info[".buttonsAdded"] = false;

$tdatalayers_info[".addPageEvents"] = false;

// use timepicker for search panel
$tdatalayers_info[".isUseTimeForSearch"] = false;


$tdatalayers_info[".badgeColor"] = "edca00";


$tdatalayers_info[".allSearchFields"] = array();
$tdatalayers_info[".filterFields"] = array();
$tdatalayers_info[".requiredSearchFields"] = array();

$tdatalayers_info[".googleLikeFields"] = array();
$tdatalayers_info[".googleLikeFields"][] = "pkey";
$tdatalayers_info[".googleLikeFields"][] = "description";
$tdatalayers_info[".googleLikeFields"][] = "name";
$tdatalayers_info[".googleLikeFields"][] = "sqlquery";
$tdatalayers_info[".googleLikeFields"][] = "tableorview";
$tdatalayers_info[".googleLikeFields"][] = "styles";
$tdatalayers_info[".googleLikeFields"][] = "layer_group";
$tdatalayers_info[".googleLikeFields"][] = "is_visible";
$tdatalayers_info[".googleLikeFields"][] = "status";
$tdatalayers_info[".googleLikeFields"][] = "sl_no";
$tdatalayers_info[".googleLikeFields"][] = "info_view";
$tdatalayers_info[".googleLikeFields"][] = "info_key";
$tdatalayers_info[".googleLikeFields"][] = "geom_column_name";
$tdatalayers_info[".googleLikeFields"][] = "sub_group";
$tdatalayers_info[".googleLikeFields"][] = "geom_type";
$tdatalayers_info[".googleLikeFields"][] = "info_group";
$tdatalayers_info[".googleLikeFields"][] = "minzoom";
$tdatalayers_info[".googleLikeFields"][] = "maxzoom";
$tdatalayers_info[".googleLikeFields"][] = "sld_name";



$tdatalayers_info[".tableType"] = "list";

$tdatalayers_info[".printerPageOrientation"] = 0;
$tdatalayers_info[".nPrinterPageScale"] = 100;

$tdatalayers_info[".nPrinterSplitRecords"] = 40;

$tdatalayers_info[".geocodingEnabled"] = false;










$tdatalayers_info[".pageSize"] = 20;

$tdatalayers_info[".warnLeavingPages"] = true;



$tstrOrderBy = "";
$tdatalayers_info[".strOrderBy"] = $tstrOrderBy;

$tdatalayers_info[".orderindexes"] = array();


$tdatalayers_info[".sqlHead"] = "SELECT pkey,  	description,  	name,  	sqlquery,  	tableorview,  	styles,  	layer_group,  	is_visible,  	status,  	sl_no,  	info_view,  	info_key,  	geom_column_name,  	sub_group,  	geom_type,  	info_group,  	minzoom,  	maxzoom,  	sld_name";
$tdatalayers_info[".sqlFrom"] = "FROM config.layers_info";
$tdatalayers_info[".sqlWhereExpr"] = "";
$tdatalayers_info[".sqlTail"] = "";










//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdatalayers_info[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdatalayers_info[".arrGroupsPerPage"] = $arrGPP;

$tdatalayers_info[".highlightSearchResults"] = true;

$tableKeyslayers_info = array();
$tableKeyslayers_info[] = "pkey";
$tdatalayers_info[".Keys"] = $tableKeyslayers_info;


$tdatalayers_info[".hideMobileList"] = array();




//	pkey
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 1;
	$fdata["strName"] = "pkey";
	$fdata["GoodName"] = "pkey";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","pkey");
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


	$tdatalayers_info["pkey"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "pkey";
//	description
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "description";
	$fdata["GoodName"] = "description";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","description");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "description";

		$fdata["sourceSingle"] = "description";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "description";

	
	
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


	$tdatalayers_info["description"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "description";
//	name
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "name";
	$fdata["GoodName"] = "name";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","name");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "name";

		$fdata["sourceSingle"] = "name";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "name";

	
	
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


	$tdatalayers_info["name"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "name";
//	sqlquery
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 4;
	$fdata["strName"] = "sqlquery";
	$fdata["GoodName"] = "sqlquery";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sqlquery");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "sqlquery";

		$fdata["sourceSingle"] = "sqlquery";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sqlquery";

	
	
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


	$tdatalayers_info["sqlquery"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "sqlquery";
//	tableorview
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 5;
	$fdata["strName"] = "tableorview";
	$fdata["GoodName"] = "tableorview";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","tableorview");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "tableorview";

		$fdata["sourceSingle"] = "tableorview";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "tableorview";

	
	
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


	$tdatalayers_info["tableorview"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "tableorview";
//	styles
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 6;
	$fdata["strName"] = "styles";
	$fdata["GoodName"] = "styles";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","styles");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "styles";

		$fdata["sourceSingle"] = "styles";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "styles";

	
	
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


	$tdatalayers_info["styles"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "styles";
//	layer_group
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 7;
	$fdata["strName"] = "layer_group";
	$fdata["GoodName"] = "layer_group";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","layer_group");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "layer_group";

		$fdata["sourceSingle"] = "layer_group";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "layer_group";

	
	
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

	$edata = array("EditFormat" => "Lookup wizard");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	

// Begin Lookup settings
				$edata["LookupType"] = 2;
	$edata["LookupTable"] = "config.layers_group";
			$edata["autoCompleteFieldsOnEdit"] = 0;
	$edata["autoCompleteFields"] = array();
		$edata["LCType"] = 0;

	
		
	$edata["LinkField"] = "group_code";
	$edata["LinkFieldType"] = 0;
	$edata["DisplayField"] = "group_description";

	

	
	$edata["LookupOrderBy"] = "group_description";

	
	
	
	

	
	
		$edata["SelectSize"] = 1;

// End Lookup Settings


	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
	
	
	
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
		$fdata["defaultSearchOption"] = "Equals";

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


	$tdatalayers_info["layer_group"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "layer_group";
//	is_visible
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 8;
	$fdata["strName"] = "is_visible";
	$fdata["GoodName"] = "is_visible";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","is_visible");
	$fdata["FieldType"] = 11;


	
	
			

		$fdata["strField"] = "is_visible";

		$fdata["sourceSingle"] = "is_visible";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "is_visible";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Checkbox");

	
	
	
	
	
	
	
	
	
	
	
		
	
	
	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Checkbox");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
	
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
		$fdata["defaultSearchOption"] = "Equals";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
				$fdata["filterFormat"] = "Options list";
		$fdata["showCollapsed"] = false;

	
	
	
		$fdata["filterCheckedMessageType"] = "Text";
	$fdata["filterCheckedMessageText"] = "Checked";
	$fdata["filterUncheckedMessageType"] = "Text";
	$fdata["filterUncheckedMessageText"] = "Unchecked";

//end of Filters settings


	$tdatalayers_info["is_visible"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "is_visible";
//	status
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 9;
	$fdata["strName"] = "status";
	$fdata["GoodName"] = "status";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","status");
	$fdata["FieldType"] = 11;


	
	
			

		$fdata["strField"] = "status";

		$fdata["sourceSingle"] = "status";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "status";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Checkbox");

	
	
	
	
	
	
	
	
	
	
	
		
	
	
	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Checkbox");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypes"] = ".+$";
		$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
	
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
		$fdata["defaultSearchOption"] = "Equals";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
				$fdata["filterFormat"] = "Options list";
		$fdata["showCollapsed"] = false;

	
	
	
		$fdata["filterCheckedMessageType"] = "Text";
	$fdata["filterCheckedMessageText"] = "Checked";
	$fdata["filterUncheckedMessageType"] = "Text";
	$fdata["filterUncheckedMessageText"] = "Unchecked";

//end of Filters settings


	$tdatalayers_info["status"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "status";
//	sl_no
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 10;
	$fdata["strName"] = "sl_no";
	$fdata["GoodName"] = "sl_no";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sl_no");
	$fdata["FieldType"] = 3;


	
	
			

		$fdata["strField"] = "sl_no";

		$fdata["sourceSingle"] = "sl_no";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sl_no";

	
	
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


	$tdatalayers_info["sl_no"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "sl_no";
//	info_view
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 11;
	$fdata["strName"] = "info_view";
	$fdata["GoodName"] = "info_view";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","info_view");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "info_view";

		$fdata["sourceSingle"] = "info_view";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "info_view";

	
	
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


	$tdatalayers_info["info_view"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "info_view";
//	info_key
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 12;
	$fdata["strName"] = "info_key";
	$fdata["GoodName"] = "info_key";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","info_key");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "info_key";

		$fdata["sourceSingle"] = "info_key";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "info_key";

	
	
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


	$tdatalayers_info["info_key"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "info_key";
//	geom_column_name
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 13;
	$fdata["strName"] = "geom_column_name";
	$fdata["GoodName"] = "geom_column_name";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","geom_column_name");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "geom_column_name";

		$fdata["sourceSingle"] = "geom_column_name";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "geom_column_name";

	
	
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


	$tdatalayers_info["geom_column_name"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "geom_column_name";
//	sub_group
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 14;
	$fdata["strName"] = "sub_group";
	$fdata["GoodName"] = "sub_group";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sub_group");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "sub_group";

		$fdata["sourceSingle"] = "sub_group";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sub_group";

	
	
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


	$tdatalayers_info["sub_group"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "sub_group";
//	geom_type
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 15;
	$fdata["strName"] = "geom_type";
	$fdata["GoodName"] = "geom_type";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","geom_type");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "geom_type";

		$fdata["sourceSingle"] = "geom_type";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "geom_type";

	
	
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


	$tdatalayers_info["geom_type"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "geom_type";
//	info_group
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 16;
	$fdata["strName"] = "info_group";
	$fdata["GoodName"] = "info_group";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","info_group");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "info_group";

		$fdata["sourceSingle"] = "info_group";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "info_group";

	
	
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


	$tdatalayers_info["info_group"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "info_group";
//	minzoom
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 17;
	$fdata["strName"] = "minzoom";
	$fdata["GoodName"] = "minzoom";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","minzoom");
	$fdata["FieldType"] = 14;


	
	
			

		$fdata["strField"] = "minzoom";

		$fdata["sourceSingle"] = "minzoom";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "minzoom";

	
	
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


	$tdatalayers_info["minzoom"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "minzoom";
//	maxzoom
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 18;
	$fdata["strName"] = "maxzoom";
	$fdata["GoodName"] = "maxzoom";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","maxzoom");
	$fdata["FieldType"] = 14;


	
	
			

		$fdata["strField"] = "maxzoom";

		$fdata["sourceSingle"] = "maxzoom";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "maxzoom";

	
	
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


	$tdatalayers_info["maxzoom"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "maxzoom";
//	sld_name
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 19;
	$fdata["strName"] = "sld_name";
	$fdata["GoodName"] = "sld_name";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sld_name");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "sld_name";

		$fdata["sourceSingle"] = "sld_name";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sld_name";

	
	
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


	$tdatalayers_info["sld_name"] = $fdata;
		$tdatalayers_info[".searchableFields"][] = "sld_name";


$tables_data["config.layers_info"]=&$tdatalayers_info;
$field_labels["config_layers_info"] = &$fieldLabelslayers_info;
$fieldToolTips["config_layers_info"] = &$fieldToolTipslayers_info;
$placeHolders["config_layers_info"] = &$placeHolderslayers_info;
$page_titles["config_layers_info"] = &$pageTitleslayers_info;

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)

//if !@TABLE.bReportCrossTab

$detailsTablesData["config.layers_info"] = array();
//endif

// tables which are master tables for current table (detail)
$masterTablesData["config.layers_info"] = array();



	
	//if !@t.bReportCrossTab
			$strOriginalDetailsTable="config.layers_group";
	$masterParams = array();
	$masterParams["mDataSourceTable"]="config.layers_group";
	$masterParams["mOriginalTable"]= $strOriginalDetailsTable;
	$masterParams["mShortTable"]= "layers_group";
	$masterParams["masterKeys"]= array();
	$masterParams["detailKeys"]= array();

	$masterParams["type"] = PAGE_LIST;
					$masterTablesData["config.layers_info"][0] = $masterParams;
				$masterTablesData["config.layers_info"][0]["masterKeys"] = array();
	$masterTablesData["config.layers_info"][0]["masterKeys"][]="group_code";
				$masterTablesData["config.layers_info"][0]["detailKeys"] = array();
	$masterTablesData["config.layers_info"][0]["detailKeys"][]="layer_group";
		
	//endif
// -----------------end  prepare master-details data arrays ------------------------------//



require_once(getabspath("classes/sql.php"));











function createSqlQuery_layers_info()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "pkey,  	description,  	name,  	sqlquery,  	tableorview,  	styles,  	layer_group,  	is_visible,  	status,  	sl_no,  	info_view,  	info_key,  	geom_column_name,  	sub_group,  	geom_type,  	info_group,  	minzoom,  	maxzoom,  	sld_name";
$proto0["m_strFrom"] = "FROM config.layers_info";
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
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto6["m_sql"] = "pkey";
$proto6["m_srcTableName"] = "config.layers_info";
$proto6["m_expr"]=$obj;
$proto6["m_alias"] = "";
$obj = new SQLFieldListItem($proto6);

$proto0["m_fieldlist"][]=$obj;
						$proto8=array();
			$obj = new SQLField(array(
	"m_strName" => "description",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto8["m_sql"] = "description";
$proto8["m_srcTableName"] = "config.layers_info";
$proto8["m_expr"]=$obj;
$proto8["m_alias"] = "";
$obj = new SQLFieldListItem($proto8);

$proto0["m_fieldlist"][]=$obj;
						$proto10=array();
			$obj = new SQLField(array(
	"m_strName" => "name",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto10["m_sql"] = "name";
$proto10["m_srcTableName"] = "config.layers_info";
$proto10["m_expr"]=$obj;
$proto10["m_alias"] = "";
$obj = new SQLFieldListItem($proto10);

$proto0["m_fieldlist"][]=$obj;
						$proto12=array();
			$obj = new SQLField(array(
	"m_strName" => "sqlquery",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto12["m_sql"] = "sqlquery";
$proto12["m_srcTableName"] = "config.layers_info";
$proto12["m_expr"]=$obj;
$proto12["m_alias"] = "";
$obj = new SQLFieldListItem($proto12);

$proto0["m_fieldlist"][]=$obj;
						$proto14=array();
			$obj = new SQLField(array(
	"m_strName" => "tableorview",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto14["m_sql"] = "tableorview";
$proto14["m_srcTableName"] = "config.layers_info";
$proto14["m_expr"]=$obj;
$proto14["m_alias"] = "";
$obj = new SQLFieldListItem($proto14);

$proto0["m_fieldlist"][]=$obj;
						$proto16=array();
			$obj = new SQLField(array(
	"m_strName" => "styles",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto16["m_sql"] = "styles";
$proto16["m_srcTableName"] = "config.layers_info";
$proto16["m_expr"]=$obj;
$proto16["m_alias"] = "";
$obj = new SQLFieldListItem($proto16);

$proto0["m_fieldlist"][]=$obj;
						$proto18=array();
			$obj = new SQLField(array(
	"m_strName" => "layer_group",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto18["m_sql"] = "layer_group";
$proto18["m_srcTableName"] = "config.layers_info";
$proto18["m_expr"]=$obj;
$proto18["m_alias"] = "";
$obj = new SQLFieldListItem($proto18);

$proto0["m_fieldlist"][]=$obj;
						$proto20=array();
			$obj = new SQLField(array(
	"m_strName" => "is_visible",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto20["m_sql"] = "is_visible";
$proto20["m_srcTableName"] = "config.layers_info";
$proto20["m_expr"]=$obj;
$proto20["m_alias"] = "";
$obj = new SQLFieldListItem($proto20);

$proto0["m_fieldlist"][]=$obj;
						$proto22=array();
			$obj = new SQLField(array(
	"m_strName" => "status",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto22["m_sql"] = "status";
$proto22["m_srcTableName"] = "config.layers_info";
$proto22["m_expr"]=$obj;
$proto22["m_alias"] = "";
$obj = new SQLFieldListItem($proto22);

$proto0["m_fieldlist"][]=$obj;
						$proto24=array();
			$obj = new SQLField(array(
	"m_strName" => "sl_no",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto24["m_sql"] = "sl_no";
$proto24["m_srcTableName"] = "config.layers_info";
$proto24["m_expr"]=$obj;
$proto24["m_alias"] = "";
$obj = new SQLFieldListItem($proto24);

$proto0["m_fieldlist"][]=$obj;
						$proto26=array();
			$obj = new SQLField(array(
	"m_strName" => "info_view",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto26["m_sql"] = "info_view";
$proto26["m_srcTableName"] = "config.layers_info";
$proto26["m_expr"]=$obj;
$proto26["m_alias"] = "";
$obj = new SQLFieldListItem($proto26);

$proto0["m_fieldlist"][]=$obj;
						$proto28=array();
			$obj = new SQLField(array(
	"m_strName" => "info_key",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto28["m_sql"] = "info_key";
$proto28["m_srcTableName"] = "config.layers_info";
$proto28["m_expr"]=$obj;
$proto28["m_alias"] = "";
$obj = new SQLFieldListItem($proto28);

$proto0["m_fieldlist"][]=$obj;
						$proto30=array();
			$obj = new SQLField(array(
	"m_strName" => "geom_column_name",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto30["m_sql"] = "geom_column_name";
$proto30["m_srcTableName"] = "config.layers_info";
$proto30["m_expr"]=$obj;
$proto30["m_alias"] = "";
$obj = new SQLFieldListItem($proto30);

$proto0["m_fieldlist"][]=$obj;
						$proto32=array();
			$obj = new SQLField(array(
	"m_strName" => "sub_group",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto32["m_sql"] = "sub_group";
$proto32["m_srcTableName"] = "config.layers_info";
$proto32["m_expr"]=$obj;
$proto32["m_alias"] = "";
$obj = new SQLFieldListItem($proto32);

$proto0["m_fieldlist"][]=$obj;
						$proto34=array();
			$obj = new SQLField(array(
	"m_strName" => "geom_type",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto34["m_sql"] = "geom_type";
$proto34["m_srcTableName"] = "config.layers_info";
$proto34["m_expr"]=$obj;
$proto34["m_alias"] = "";
$obj = new SQLFieldListItem($proto34);

$proto0["m_fieldlist"][]=$obj;
						$proto36=array();
			$obj = new SQLField(array(
	"m_strName" => "info_group",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto36["m_sql"] = "info_group";
$proto36["m_srcTableName"] = "config.layers_info";
$proto36["m_expr"]=$obj;
$proto36["m_alias"] = "";
$obj = new SQLFieldListItem($proto36);

$proto0["m_fieldlist"][]=$obj;
						$proto38=array();
			$obj = new SQLField(array(
	"m_strName" => "minzoom",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto38["m_sql"] = "minzoom";
$proto38["m_srcTableName"] = "config.layers_info";
$proto38["m_expr"]=$obj;
$proto38["m_alias"] = "";
$obj = new SQLFieldListItem($proto38);

$proto0["m_fieldlist"][]=$obj;
						$proto40=array();
			$obj = new SQLField(array(
	"m_strName" => "maxzoom",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto40["m_sql"] = "maxzoom";
$proto40["m_srcTableName"] = "config.layers_info";
$proto40["m_expr"]=$obj;
$proto40["m_alias"] = "";
$obj = new SQLFieldListItem($proto40);

$proto0["m_fieldlist"][]=$obj;
						$proto42=array();
			$obj = new SQLField(array(
	"m_strName" => "sld_name",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto42["m_sql"] = "sld_name";
$proto42["m_srcTableName"] = "config.layers_info";
$proto42["m_expr"]=$obj;
$proto42["m_alias"] = "";
$obj = new SQLFieldListItem($proto42);

$proto0["m_fieldlist"][]=$obj;
$proto0["m_fromlist"] = array();
												$proto44=array();
$proto44["m_link"] = "SQLL_MAIN";
			$proto45=array();
$proto45["m_strName"] = "config.layers_info";
$proto45["m_srcTableName"] = "config.layers_info";
$proto45["m_columns"] = array();
$proto45["m_columns"][] = "pkey";
$proto45["m_columns"][] = "description";
$proto45["m_columns"][] = "name";
$proto45["m_columns"][] = "sqlquery";
$proto45["m_columns"][] = "tableorview";
$proto45["m_columns"][] = "styles";
$proto45["m_columns"][] = "layer_group";
$proto45["m_columns"][] = "is_visible";
$proto45["m_columns"][] = "status";
$proto45["m_columns"][] = "sl_no";
$proto45["m_columns"][] = "info_view";
$proto45["m_columns"][] = "info_key";
$proto45["m_columns"][] = "geom_column_name";
$proto45["m_columns"][] = "sub_group";
$proto45["m_columns"][] = "geom_type";
$proto45["m_columns"][] = "info_group";
$proto45["m_columns"][] = "minzoom";
$proto45["m_columns"][] = "maxzoom";
$proto45["m_columns"][] = "sld_name";
$obj = new SQLTable($proto45);

$proto44["m_table"] = $obj;
$proto44["m_sql"] = "config.layers_info";
$proto44["m_alias"] = "";
$proto44["m_srcTableName"] = "config.layers_info";
$proto46=array();
$proto46["m_sql"] = "";
$proto46["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto46["m_column"]=$obj;
$proto46["m_contained"] = array();
$proto46["m_strCase"] = "";
$proto46["m_havingmode"] = false;
$proto46["m_inBrackets"] = false;
$proto46["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto46);

$proto44["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto44);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="config.layers_info";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_layers_info = createSqlQuery_layers_info();


	
		;

																			

$tdatalayers_info[".sqlquery"] = $queryData_layers_info;



$tableEvents["config.layers_info"] = new eventsBase;
$tdatalayers_info[".hasEvents"] = false;

?>