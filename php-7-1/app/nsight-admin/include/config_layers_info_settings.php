<?php
require_once(getabspath("classes/cipherer.php"));




$tdataconfig_layers_info = array();
	$tdataconfig_layers_info[".truncateText"] = true;
	$tdataconfig_layers_info[".NumberOfChars"] = 80;
	$tdataconfig_layers_info[".ShortName"] = "config_layers_info";
	$tdataconfig_layers_info[".OwnerID"] = "";
	$tdataconfig_layers_info[".OriginalTable"] = "config.layers_info";

//	field labels
$fieldLabelsconfig_layers_info = array();
$fieldToolTipsconfig_layers_info = array();
$pageTitlesconfig_layers_info = array();
$placeHoldersconfig_layers_info = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelsconfig_layers_info["English"] = array();
	$fieldToolTipsconfig_layers_info["English"] = array();
	$placeHoldersconfig_layers_info["English"] = array();
	$pageTitlesconfig_layers_info["English"] = array();
	$fieldLabelsconfig_layers_info["English"]["pkey"] = "Pkey";
	$fieldToolTipsconfig_layers_info["English"]["pkey"] = "";
	$placeHoldersconfig_layers_info["English"]["pkey"] = "";
	$fieldLabelsconfig_layers_info["English"]["description"] = "Description";
	$fieldToolTipsconfig_layers_info["English"]["description"] = "";
	$placeHoldersconfig_layers_info["English"]["description"] = "";
	$fieldLabelsconfig_layers_info["English"]["name"] = "Name";
	$fieldToolTipsconfig_layers_info["English"]["name"] = "";
	$placeHoldersconfig_layers_info["English"]["name"] = "";
	$fieldLabelsconfig_layers_info["English"]["sqlquery"] = "Sqlquery";
	$fieldToolTipsconfig_layers_info["English"]["sqlquery"] = "";
	$placeHoldersconfig_layers_info["English"]["sqlquery"] = "";
	$fieldLabelsconfig_layers_info["English"]["tableorview"] = "Tableorview";
	$fieldToolTipsconfig_layers_info["English"]["tableorview"] = "";
	$placeHoldersconfig_layers_info["English"]["tableorview"] = "";
	$fieldLabelsconfig_layers_info["English"]["styles"] = "Styles";
	$fieldToolTipsconfig_layers_info["English"]["styles"] = "";
	$placeHoldersconfig_layers_info["English"]["styles"] = "";
	$fieldLabelsconfig_layers_info["English"]["layer_group"] = "Layer Group";
	$fieldToolTipsconfig_layers_info["English"]["layer_group"] = "";
	$placeHoldersconfig_layers_info["English"]["layer_group"] = "";
	$fieldLabelsconfig_layers_info["English"]["is_visible"] = "Is Visible";
	$fieldToolTipsconfig_layers_info["English"]["is_visible"] = "";
	$placeHoldersconfig_layers_info["English"]["is_visible"] = "";
	$fieldLabelsconfig_layers_info["English"]["status"] = "Status";
	$fieldToolTipsconfig_layers_info["English"]["status"] = "";
	$placeHoldersconfig_layers_info["English"]["status"] = "";
	$fieldLabelsconfig_layers_info["English"]["sl_no"] = "Sl No";
	$fieldToolTipsconfig_layers_info["English"]["sl_no"] = "";
	$placeHoldersconfig_layers_info["English"]["sl_no"] = "";
	$fieldLabelsconfig_layers_info["English"]["info_view"] = "Info View";
	$fieldToolTipsconfig_layers_info["English"]["info_view"] = "";
	$placeHoldersconfig_layers_info["English"]["info_view"] = "";
	$fieldLabelsconfig_layers_info["English"]["info_key"] = "Info Key";
	$fieldToolTipsconfig_layers_info["English"]["info_key"] = "";
	$placeHoldersconfig_layers_info["English"]["info_key"] = "";
	$fieldLabelsconfig_layers_info["English"]["geom_column_name"] = "Geom Column Name";
	$fieldToolTipsconfig_layers_info["English"]["geom_column_name"] = "";
	$placeHoldersconfig_layers_info["English"]["geom_column_name"] = "";
	$fieldLabelsconfig_layers_info["English"]["sub_group"] = "Sub Group";
	$fieldToolTipsconfig_layers_info["English"]["sub_group"] = "";
	$placeHoldersconfig_layers_info["English"]["sub_group"] = "";
	$fieldLabelsconfig_layers_info["English"]["geom_type"] = "Geom Type";
	$fieldToolTipsconfig_layers_info["English"]["geom_type"] = "";
	$placeHoldersconfig_layers_info["English"]["geom_type"] = "";
	$fieldLabelsconfig_layers_info["English"]["info_group"] = "Info Group";
	$fieldToolTipsconfig_layers_info["English"]["info_group"] = "";
	$placeHoldersconfig_layers_info["English"]["info_group"] = "";
	$fieldLabelsconfig_layers_info["English"]["minzoom"] = "Minzoom";
	$fieldToolTipsconfig_layers_info["English"]["minzoom"] = "";
	$placeHoldersconfig_layers_info["English"]["minzoom"] = "";
	$fieldLabelsconfig_layers_info["English"]["maxzoom"] = "Maxzoom";
	$fieldToolTipsconfig_layers_info["English"]["maxzoom"] = "";
	$placeHoldersconfig_layers_info["English"]["maxzoom"] = "";
	$fieldLabelsconfig_layers_info["English"]["sld_name"] = "Sld Name";
	$fieldToolTipsconfig_layers_info["English"]["sld_name"] = "";
	$placeHoldersconfig_layers_info["English"]["sld_name"] = "";
	$fieldLabelsconfig_layers_info["English"]["hls_code"] = "Hls Code";
	$fieldToolTipsconfig_layers_info["English"]["hls_code"] = "";
	$placeHoldersconfig_layers_info["English"]["hls_code"] = "";
	$fieldLabelsconfig_layers_info["English"]["is_device"] = "Is Device";
	$fieldToolTipsconfig_layers_info["English"]["is_device"] = "";
	$placeHoldersconfig_layers_info["English"]["is_device"] = "";
	$fieldLabelsconfig_layers_info["English"]["is_upstream"] = "Is Upstream";
	$fieldToolTipsconfig_layers_info["English"]["is_upstream"] = "";
	$placeHoldersconfig_layers_info["English"]["is_upstream"] = "";
	$fieldLabelsconfig_layers_info["English"]["is_downstream"] = "Is Downstream";
	$fieldToolTipsconfig_layers_info["English"]["is_downstream"] = "";
	$placeHoldersconfig_layers_info["English"]["is_downstream"] = "";
	if (count($fieldToolTipsconfig_layers_info["English"]))
		$tdataconfig_layers_info[".isUseToolTips"] = true;
}
if(mlang_getcurrentlang()=="")
{
	$fieldLabelsconfig_layers_info[""] = array();
	$fieldToolTipsconfig_layers_info[""] = array();
	$placeHoldersconfig_layers_info[""] = array();
	$pageTitlesconfig_layers_info[""] = array();
	if (count($fieldToolTipsconfig_layers_info[""]))
		$tdataconfig_layers_info[".isUseToolTips"] = true;
}


	$tdataconfig_layers_info[".NCSearch"] = true;



$tdataconfig_layers_info[".shortTableName"] = "config_layers_info";
$tdataconfig_layers_info[".nSecOptions"] = 0;
$tdataconfig_layers_info[".recsPerRowPrint"] = 1;
$tdataconfig_layers_info[".mainTableOwnerID"] = "";
$tdataconfig_layers_info[".moveNext"] = 1;
$tdataconfig_layers_info[".entityType"] = 0;

$tdataconfig_layers_info[".strOriginalTableName"] = "config.layers_info";

	



$tdataconfig_layers_info[".showAddInPopup"] = false;

$tdataconfig_layers_info[".showEditInPopup"] = false;

$tdataconfig_layers_info[".showViewInPopup"] = false;

//page's base css files names
$popupPagesLayoutNames = array();
$tdataconfig_layers_info[".popupPagesLayoutNames"] = $popupPagesLayoutNames;


$tdataconfig_layers_info[".fieldsForRegister"] = array();

$tdataconfig_layers_info[".listAjax"] = false;

	$tdataconfig_layers_info[".audit"] = false;

	$tdataconfig_layers_info[".locking"] = false;

$tdataconfig_layers_info[".edit"] = true;
$tdataconfig_layers_info[".afterEditAction"] = 1;
$tdataconfig_layers_info[".closePopupAfterEdit"] = 1;
$tdataconfig_layers_info[".afterEditActionDetTable"] = "";

$tdataconfig_layers_info[".add"] = true;
$tdataconfig_layers_info[".afterAddAction"] = 1;
$tdataconfig_layers_info[".closePopupAfterAdd"] = 1;
$tdataconfig_layers_info[".afterAddActionDetTable"] = "";

$tdataconfig_layers_info[".list"] = true;



$tdataconfig_layers_info[".reorderRecordsByHeader"] = true;


$tdataconfig_layers_info[".exportFormatting"] = 2;
$tdataconfig_layers_info[".exportDelimiter"] = ",";
		
$tdataconfig_layers_info[".copy"] = true;
$tdataconfig_layers_info[".view"] = true;

$tdataconfig_layers_info[".import"] = true;

$tdataconfig_layers_info[".exportTo"] = true;

$tdataconfig_layers_info[".printFriendly"] = true;

$tdataconfig_layers_info[".delete"] = true;

$tdataconfig_layers_info[".showSimpleSearchOptions"] = false;

// Allow Show/Hide Fields in GRID
$tdataconfig_layers_info[".allowShowHideFields"] = false;
//

// Allow Fields Reordering in GRID
$tdataconfig_layers_info[".allowFieldsReordering"] = false;
//

// search Saving settings
$tdataconfig_layers_info[".searchSaving"] = false;
//

$tdataconfig_layers_info[".showSearchPanel"] = true;
		$tdataconfig_layers_info[".flexibleSearch"] = true;

$tdataconfig_layers_info[".isUseAjaxSuggest"] = true;

$tdataconfig_layers_info[".rowHighlite"] = true;





$tdataconfig_layers_info[".ajaxCodeSnippetAdded"] = false;

$tdataconfig_layers_info[".buttonsAdded"] = false;

$tdataconfig_layers_info[".addPageEvents"] = false;

// use timepicker for search panel
$tdataconfig_layers_info[".isUseTimeForSearch"] = false;



$tdataconfig_layers_info[".badgeColor"] = "6DA5C8";


$tdataconfig_layers_info[".allSearchFields"] = array();
$tdataconfig_layers_info[".filterFields"] = array();
$tdataconfig_layers_info[".requiredSearchFields"] = array();

$tdataconfig_layers_info[".allSearchFields"][] = "description";
	$tdataconfig_layers_info[".allSearchFields"][] = "name";
	$tdataconfig_layers_info[".allSearchFields"][] = "layer_group";
	$tdataconfig_layers_info[".allSearchFields"][] = "is_visible";
	$tdataconfig_layers_info[".allSearchFields"][] = "status";
	$tdataconfig_layers_info[".allSearchFields"][] = "sl_no";
	$tdataconfig_layers_info[".allSearchFields"][] = "sub_group";
	$tdataconfig_layers_info[".allSearchFields"][] = "minzoom";
	$tdataconfig_layers_info[".allSearchFields"][] = "maxzoom";
	$tdataconfig_layers_info[".allSearchFields"][] = "sld_name";
	$tdataconfig_layers_info[".allSearchFields"][] = "hls_code";
	$tdataconfig_layers_info[".allSearchFields"][] = "is_device";
	$tdataconfig_layers_info[".allSearchFields"][] = "is_upstream";
	$tdataconfig_layers_info[".allSearchFields"][] = "is_downstream";
	

$tdataconfig_layers_info[".googleLikeFields"] = array();
$tdataconfig_layers_info[".googleLikeFields"][] = "pkey";
$tdataconfig_layers_info[".googleLikeFields"][] = "description";
$tdataconfig_layers_info[".googleLikeFields"][] = "name";
$tdataconfig_layers_info[".googleLikeFields"][] = "sqlquery";
$tdataconfig_layers_info[".googleLikeFields"][] = "tableorview";
$tdataconfig_layers_info[".googleLikeFields"][] = "styles";
$tdataconfig_layers_info[".googleLikeFields"][] = "layer_group";
$tdataconfig_layers_info[".googleLikeFields"][] = "is_visible";
$tdataconfig_layers_info[".googleLikeFields"][] = "status";
$tdataconfig_layers_info[".googleLikeFields"][] = "sl_no";
$tdataconfig_layers_info[".googleLikeFields"][] = "info_view";
$tdataconfig_layers_info[".googleLikeFields"][] = "info_key";
$tdataconfig_layers_info[".googleLikeFields"][] = "geom_column_name";
$tdataconfig_layers_info[".googleLikeFields"][] = "sub_group";
$tdataconfig_layers_info[".googleLikeFields"][] = "geom_type";
$tdataconfig_layers_info[".googleLikeFields"][] = "info_group";
$tdataconfig_layers_info[".googleLikeFields"][] = "minzoom";
$tdataconfig_layers_info[".googleLikeFields"][] = "maxzoom";
$tdataconfig_layers_info[".googleLikeFields"][] = "sld_name";
$tdataconfig_layers_info[".googleLikeFields"][] = "hls_code";
$tdataconfig_layers_info[".googleLikeFields"][] = "is_device";
$tdataconfig_layers_info[".googleLikeFields"][] = "is_upstream";
$tdataconfig_layers_info[".googleLikeFields"][] = "is_downstream";


$tdataconfig_layers_info[".advSearchFields"] = array();
$tdataconfig_layers_info[".advSearchFields"][] = "description";
$tdataconfig_layers_info[".advSearchFields"][] = "name";
$tdataconfig_layers_info[".advSearchFields"][] = "layer_group";
$tdataconfig_layers_info[".advSearchFields"][] = "is_visible";
$tdataconfig_layers_info[".advSearchFields"][] = "status";
$tdataconfig_layers_info[".advSearchFields"][] = "sl_no";
$tdataconfig_layers_info[".advSearchFields"][] = "sub_group";
$tdataconfig_layers_info[".advSearchFields"][] = "minzoom";
$tdataconfig_layers_info[".advSearchFields"][] = "maxzoom";
$tdataconfig_layers_info[".advSearchFields"][] = "sld_name";
$tdataconfig_layers_info[".advSearchFields"][] = "hls_code";
$tdataconfig_layers_info[".advSearchFields"][] = "is_device";
$tdataconfig_layers_info[".advSearchFields"][] = "is_upstream";
$tdataconfig_layers_info[".advSearchFields"][] = "is_downstream";

$tdataconfig_layers_info[".tableType"] = "list";

$tdataconfig_layers_info[".printerPageOrientation"] = 0;
$tdataconfig_layers_info[".nPrinterPageScale"] = 100;

$tdataconfig_layers_info[".nPrinterSplitRecords"] = 40;

$tdataconfig_layers_info[".nPrinterPDFSplitRecords"] = 40;



$tdataconfig_layers_info[".geocodingEnabled"] = false;





$tdataconfig_layers_info[".listGridLayout"] = 3;





// view page pdf

// print page pdf


$tdataconfig_layers_info[".pageSize"] = 20;

$tdataconfig_layers_info[".warnLeavingPages"] = true;



$tstrOrderBy = "";
if(strlen($tstrOrderBy) && strtolower(substr($tstrOrderBy,0,8))!="order by")
	$tstrOrderBy = "order by ".$tstrOrderBy;
$tdataconfig_layers_info[".strOrderBy"] = $tstrOrderBy;

$tdataconfig_layers_info[".orderindexes"] = array();

$tdataconfig_layers_info[".sqlHead"] = "SELECT pkey,  	description,  	name,  	sqlquery,  	tableorview,  	styles,  	layer_group,  	is_visible,  	status,  	sl_no,  	info_view,  	info_key,  	geom_column_name,  	sub_group,  	geom_type,  	info_group,  	minzoom,  	maxzoom,  	sld_name,  	hls_code,  	is_device,  	is_upstream,  	is_downstream";
$tdataconfig_layers_info[".sqlFrom"] = "FROM config.layers_info";
$tdataconfig_layers_info[".sqlWhereExpr"] = "";
$tdataconfig_layers_info[".sqlTail"] = "";












//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdataconfig_layers_info[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdataconfig_layers_info[".arrGroupsPerPage"] = $arrGPP;

$tdataconfig_layers_info[".highlightSearchResults"] = true;

$tableKeysconfig_layers_info = array();
$tableKeysconfig_layers_info[] = "pkey";
$tdataconfig_layers_info[".Keys"] = $tableKeysconfig_layers_info;

$tdataconfig_layers_info[".listFields"] = array();
$tdataconfig_layers_info[".listFields"][] = "description";
$tdataconfig_layers_info[".listFields"][] = "name";
$tdataconfig_layers_info[".listFields"][] = "layer_group";
$tdataconfig_layers_info[".listFields"][] = "is_visible";
$tdataconfig_layers_info[".listFields"][] = "status";

$tdataconfig_layers_info[".hideMobileList"] = array();


$tdataconfig_layers_info[".viewFields"] = array();
$tdataconfig_layers_info[".viewFields"][] = "description";
$tdataconfig_layers_info[".viewFields"][] = "name";
$tdataconfig_layers_info[".viewFields"][] = "layer_group";
$tdataconfig_layers_info[".viewFields"][] = "is_visible";
$tdataconfig_layers_info[".viewFields"][] = "status";
$tdataconfig_layers_info[".viewFields"][] = "sl_no";
$tdataconfig_layers_info[".viewFields"][] = "sub_group";
$tdataconfig_layers_info[".viewFields"][] = "minzoom";
$tdataconfig_layers_info[".viewFields"][] = "maxzoom";
$tdataconfig_layers_info[".viewFields"][] = "sld_name";
$tdataconfig_layers_info[".viewFields"][] = "hls_code";
$tdataconfig_layers_info[".viewFields"][] = "is_device";
$tdataconfig_layers_info[".viewFields"][] = "is_upstream";
$tdataconfig_layers_info[".viewFields"][] = "is_downstream";

$tdataconfig_layers_info[".addFields"] = array();
$tdataconfig_layers_info[".addFields"][] = "description";
$tdataconfig_layers_info[".addFields"][] = "name";
$tdataconfig_layers_info[".addFields"][] = "layer_group";
$tdataconfig_layers_info[".addFields"][] = "is_visible";
$tdataconfig_layers_info[".addFields"][] = "status";
$tdataconfig_layers_info[".addFields"][] = "sl_no";
$tdataconfig_layers_info[".addFields"][] = "sub_group";
$tdataconfig_layers_info[".addFields"][] = "minzoom";
$tdataconfig_layers_info[".addFields"][] = "maxzoom";
$tdataconfig_layers_info[".addFields"][] = "sld_name";
$tdataconfig_layers_info[".addFields"][] = "hls_code";
$tdataconfig_layers_info[".addFields"][] = "is_device";
$tdataconfig_layers_info[".addFields"][] = "is_upstream";
$tdataconfig_layers_info[".addFields"][] = "is_downstream";

$tdataconfig_layers_info[".masterListFields"] = array();
$tdataconfig_layers_info[".masterListFields"][] = "pkey";
$tdataconfig_layers_info[".masterListFields"][] = "description";
$tdataconfig_layers_info[".masterListFields"][] = "name";
$tdataconfig_layers_info[".masterListFields"][] = "sqlquery";
$tdataconfig_layers_info[".masterListFields"][] = "tableorview";
$tdataconfig_layers_info[".masterListFields"][] = "styles";
$tdataconfig_layers_info[".masterListFields"][] = "layer_group";
$tdataconfig_layers_info[".masterListFields"][] = "is_visible";
$tdataconfig_layers_info[".masterListFields"][] = "status";
$tdataconfig_layers_info[".masterListFields"][] = "sl_no";
$tdataconfig_layers_info[".masterListFields"][] = "info_view";
$tdataconfig_layers_info[".masterListFields"][] = "info_key";
$tdataconfig_layers_info[".masterListFields"][] = "geom_column_name";
$tdataconfig_layers_info[".masterListFields"][] = "sub_group";
$tdataconfig_layers_info[".masterListFields"][] = "geom_type";
$tdataconfig_layers_info[".masterListFields"][] = "info_group";
$tdataconfig_layers_info[".masterListFields"][] = "minzoom";
$tdataconfig_layers_info[".masterListFields"][] = "maxzoom";
$tdataconfig_layers_info[".masterListFields"][] = "sld_name";
$tdataconfig_layers_info[".masterListFields"][] = "hls_code";
$tdataconfig_layers_info[".masterListFields"][] = "is_device";
$tdataconfig_layers_info[".masterListFields"][] = "is_upstream";
$tdataconfig_layers_info[".masterListFields"][] = "is_downstream";

$tdataconfig_layers_info[".inlineAddFields"] = array();

$tdataconfig_layers_info[".editFields"] = array();
$tdataconfig_layers_info[".editFields"][] = "description";
$tdataconfig_layers_info[".editFields"][] = "name";
$tdataconfig_layers_info[".editFields"][] = "layer_group";
$tdataconfig_layers_info[".editFields"][] = "is_visible";
$tdataconfig_layers_info[".editFields"][] = "status";
$tdataconfig_layers_info[".editFields"][] = "sl_no";
$tdataconfig_layers_info[".editFields"][] = "sub_group";
$tdataconfig_layers_info[".editFields"][] = "minzoom";
$tdataconfig_layers_info[".editFields"][] = "maxzoom";
$tdataconfig_layers_info[".editFields"][] = "sld_name";
$tdataconfig_layers_info[".editFields"][] = "hls_code";
$tdataconfig_layers_info[".editFields"][] = "is_device";
$tdataconfig_layers_info[".editFields"][] = "is_upstream";
$tdataconfig_layers_info[".editFields"][] = "is_downstream";

$tdataconfig_layers_info[".inlineEditFields"] = array();

$tdataconfig_layers_info[".updateSelectedFields"] = array();
$tdataconfig_layers_info[".updateSelectedFields"][] = "description";
$tdataconfig_layers_info[".updateSelectedFields"][] = "name";
$tdataconfig_layers_info[".updateSelectedFields"][] = "layer_group";
$tdataconfig_layers_info[".updateSelectedFields"][] = "is_visible";
$tdataconfig_layers_info[".updateSelectedFields"][] = "status";
$tdataconfig_layers_info[".updateSelectedFields"][] = "sl_no";
$tdataconfig_layers_info[".updateSelectedFields"][] = "sub_group";
$tdataconfig_layers_info[".updateSelectedFields"][] = "minzoom";
$tdataconfig_layers_info[".updateSelectedFields"][] = "maxzoom";
$tdataconfig_layers_info[".updateSelectedFields"][] = "sld_name";
$tdataconfig_layers_info[".updateSelectedFields"][] = "hls_code";
$tdataconfig_layers_info[".updateSelectedFields"][] = "is_device";
$tdataconfig_layers_info[".updateSelectedFields"][] = "is_upstream";
$tdataconfig_layers_info[".updateSelectedFields"][] = "is_downstream";


$tdataconfig_layers_info[".exportFields"] = array();
$tdataconfig_layers_info[".exportFields"][] = "description";
$tdataconfig_layers_info[".exportFields"][] = "name";
$tdataconfig_layers_info[".exportFields"][] = "layer_group";
$tdataconfig_layers_info[".exportFields"][] = "is_visible";
$tdataconfig_layers_info[".exportFields"][] = "status";
$tdataconfig_layers_info[".exportFields"][] = "sl_no";
$tdataconfig_layers_info[".exportFields"][] = "sub_group";
$tdataconfig_layers_info[".exportFields"][] = "minzoom";
$tdataconfig_layers_info[".exportFields"][] = "maxzoom";
$tdataconfig_layers_info[".exportFields"][] = "sld_name";
$tdataconfig_layers_info[".exportFields"][] = "hls_code";
$tdataconfig_layers_info[".exportFields"][] = "is_device";
$tdataconfig_layers_info[".exportFields"][] = "is_upstream";
$tdataconfig_layers_info[".exportFields"][] = "is_downstream";

$tdataconfig_layers_info[".importFields"] = array();
$tdataconfig_layers_info[".importFields"][] = "description";
$tdataconfig_layers_info[".importFields"][] = "name";
$tdataconfig_layers_info[".importFields"][] = "layer_group";
$tdataconfig_layers_info[".importFields"][] = "is_visible";
$tdataconfig_layers_info[".importFields"][] = "status";
$tdataconfig_layers_info[".importFields"][] = "sl_no";
$tdataconfig_layers_info[".importFields"][] = "sub_group";
$tdataconfig_layers_info[".importFields"][] = "minzoom";
$tdataconfig_layers_info[".importFields"][] = "maxzoom";
$tdataconfig_layers_info[".importFields"][] = "sld_name";
$tdataconfig_layers_info[".importFields"][] = "hls_code";
$tdataconfig_layers_info[".importFields"][] = "is_device";
$tdataconfig_layers_info[".importFields"][] = "is_upstream";
$tdataconfig_layers_info[".importFields"][] = "is_downstream";

$tdataconfig_layers_info[".printFields"] = array();
$tdataconfig_layers_info[".printFields"][] = "description";
$tdataconfig_layers_info[".printFields"][] = "name";
$tdataconfig_layers_info[".printFields"][] = "layer_group";
$tdataconfig_layers_info[".printFields"][] = "is_visible";
$tdataconfig_layers_info[".printFields"][] = "status";
$tdataconfig_layers_info[".printFields"][] = "sl_no";
$tdataconfig_layers_info[".printFields"][] = "sub_group";
$tdataconfig_layers_info[".printFields"][] = "minzoom";
$tdataconfig_layers_info[".printFields"][] = "maxzoom";
$tdataconfig_layers_info[".printFields"][] = "sld_name";
$tdataconfig_layers_info[".printFields"][] = "hls_code";
$tdataconfig_layers_info[".printFields"][] = "is_device";
$tdataconfig_layers_info[".printFields"][] = "is_upstream";
$tdataconfig_layers_info[".printFields"][] = "is_downstream";


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








	$tdataconfig_layers_info["pkey"] = $fdata;
//	description
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "description";
	$fdata["GoodName"] = "description";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","description");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "description";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "description";

	
	
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
		
		$edata["controlWidth"] = 178;

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




	$tdataconfig_layers_info["description"] = $fdata;
//	name
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "name";
	$fdata["GoodName"] = "name";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","name");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "name";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "name";

	
	
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




	$tdataconfig_layers_info["name"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sqlquery";

	
	
			
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








	$tdataconfig_layers_info["sqlquery"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "tableorview";

	
	
			
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








	$tdataconfig_layers_info["tableorview"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "styles";

	
	
			
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








	$tdataconfig_layers_info["styles"] = $fdata;
//	layer_group
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 7;
	$fdata["strName"] = "layer_group";
	$fdata["GoodName"] = "layer_group";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","layer_group");
	$fdata["FieldType"] = 201;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "layer_group";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "layer_group";

	
	
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

	$edata = array("EditFormat" => "Lookup wizard");

	
	
		
	
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

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
	
		$edata["controlWidth"] = 519;

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




	$tdataconfig_layers_info["layer_group"] = $fdata;
//	is_visible
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 8;
	$fdata["strName"] = "is_visible";
	$fdata["GoodName"] = "is_visible";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","is_visible");
	$fdata["FieldType"] = 11;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "is_visible";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "is_visible";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Checkbox");

	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Checkbox");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

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




	$tdataconfig_layers_info["is_visible"] = $fdata;
//	status
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 9;
	$fdata["strName"] = "status";
	$fdata["GoodName"] = "status";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","status");
	$fdata["FieldType"] = 11;

	
	
	
			
		$fdata["bListPage"] = true;

		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "status";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "status";

	
	
				$fdata["FieldPermissions"] = true;

				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Checkbox");

	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Checkbox");

	
	
		
	


	
	
	
			$edata["acceptFileTypes"] = ".+$";

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




	$tdataconfig_layers_info["status"] = $fdata;
//	sl_no
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 10;
	$fdata["strName"] = "sl_no";
	$fdata["GoodName"] = "sl_no";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sl_no");
	$fdata["FieldType"] = 3;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "sl_no";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sl_no";

	
	
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
		
		$edata["controlWidth"] = 188;

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




	$tdataconfig_layers_info["sl_no"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "info_view";

	
	
			
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








	$tdataconfig_layers_info["info_view"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "info_key";

	
	
			
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








	$tdataconfig_layers_info["info_key"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "geom_column_name";

	
	
			
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








	$tdataconfig_layers_info["geom_column_name"] = $fdata;
//	sub_group
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 14;
	$fdata["strName"] = "sub_group";
	$fdata["GoodName"] = "sub_group";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sub_group");
	$fdata["FieldType"] = 201;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "sub_group";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sub_group";

	
	
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




	$tdataconfig_layers_info["sub_group"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "geom_type";

	
	
			
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








	$tdataconfig_layers_info["geom_type"] = $fdata;
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

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "info_group";

	
	
			
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








	$tdataconfig_layers_info["info_group"] = $fdata;
//	minzoom
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 17;
	$fdata["strName"] = "minzoom";
	$fdata["GoodName"] = "minzoom";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","minzoom");
	$fdata["FieldType"] = 14;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "minzoom";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "minzoom";

	
	
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




	$tdataconfig_layers_info["minzoom"] = $fdata;
//	maxzoom
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 18;
	$fdata["strName"] = "maxzoom";
	$fdata["GoodName"] = "maxzoom";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","maxzoom");
	$fdata["FieldType"] = 14;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "maxzoom";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "maxzoom";

	
	
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
		
		$edata["controlWidth"] = 188;

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




	$tdataconfig_layers_info["maxzoom"] = $fdata;
//	sld_name
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 19;
	$fdata["strName"] = "sld_name";
	$fdata["GoodName"] = "sld_name";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","sld_name");
	$fdata["FieldType"] = 201;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "sld_name";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "sld_name";

	
	
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




	$tdataconfig_layers_info["sld_name"] = $fdata;
//	hls_code
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 20;
	$fdata["strName"] = "hls_code";
	$fdata["GoodName"] = "hls_code";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","hls_code");
	$fdata["FieldType"] = 201;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "hls_code";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "hls_code";

	
	
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




	$tdataconfig_layers_info["hls_code"] = $fdata;
//	is_device
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 21;
	$fdata["strName"] = "is_device";
	$fdata["GoodName"] = "is_device";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","is_device");
	$fdata["FieldType"] = 3;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "is_device";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "is_device";

	
	
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
		
		$edata["controlWidth"] = 78;

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




	$tdataconfig_layers_info["is_device"] = $fdata;
//	is_upstream
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 22;
	$fdata["strName"] = "is_upstream";
	$fdata["GoodName"] = "is_upstream";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","is_upstream");
	$fdata["FieldType"] = 3;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "is_upstream";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "is_upstream";

	
	
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
		
		$edata["controlWidth"] = 68;

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




	$tdataconfig_layers_info["is_upstream"] = $fdata;
//	is_downstream
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 23;
	$fdata["strName"] = "is_downstream";
	$fdata["GoodName"] = "is_downstream";
	$fdata["ownerTable"] = "config.layers_info";
	$fdata["Label"] = GetFieldLabel("config_layers_info","is_downstream");
	$fdata["FieldType"] = 3;

	
	
	
			
	
		$fdata["bAddPage"] = true;

	
		$fdata["bEditPage"] = true;

	
		$fdata["bUpdateSelected"] = true;


		$fdata["bViewPage"] = true;

		$fdata["bAdvancedSearch"] = true;

		$fdata["bPrinterPage"] = true;

		$fdata["bExportPage"] = true;

		$fdata["strField"] = "is_downstream";

		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "is_downstream";

	
	
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
		
		$edata["controlWidth"] = 88;

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




	$tdataconfig_layers_info["is_downstream"] = $fdata;


$tables_data["config.layers_info"]=&$tdataconfig_layers_info;
$field_labels["config_layers_info"] = &$fieldLabelsconfig_layers_info;
$fieldToolTips["config_layers_info"] = &$fieldToolTipsconfig_layers_info;
$placeHolders["config_layers_info"] = &$placeHoldersconfig_layers_info;
$page_titles["config_layers_info"] = &$pageTitlesconfig_layers_info;

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)
$detailsTablesData["config.layers_info"] = array();

// tables which are master tables for current table (detail)
$masterTablesData["config.layers_info"] = array();


// -----------------end  prepare master-details data arrays ------------------------------//

require_once(getabspath("classes/sql.php"));










function createSqlQuery_config_layers_info()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "pkey,  	description,  	name,  	sqlquery,  	tableorview,  	styles,  	layer_group,  	is_visible,  	status,  	sl_no,  	info_view,  	info_key,  	geom_column_name,  	sub_group,  	geom_type,  	info_group,  	minzoom,  	maxzoom,  	sld_name,  	hls_code,  	is_device,  	is_upstream,  	is_downstream";
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
						$proto44=array();
			$obj = new SQLField(array(
	"m_strName" => "hls_code",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto44["m_sql"] = "hls_code";
$proto44["m_srcTableName"] = "config.layers_info";
$proto44["m_expr"]=$obj;
$proto44["m_alias"] = "";
$obj = new SQLFieldListItem($proto44);

$proto0["m_fieldlist"][]=$obj;
						$proto46=array();
			$obj = new SQLField(array(
	"m_strName" => "is_device",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto46["m_sql"] = "is_device";
$proto46["m_srcTableName"] = "config.layers_info";
$proto46["m_expr"]=$obj;
$proto46["m_alias"] = "";
$obj = new SQLFieldListItem($proto46);

$proto0["m_fieldlist"][]=$obj;
						$proto48=array();
			$obj = new SQLField(array(
	"m_strName" => "is_upstream",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto48["m_sql"] = "is_upstream";
$proto48["m_srcTableName"] = "config.layers_info";
$proto48["m_expr"]=$obj;
$proto48["m_alias"] = "";
$obj = new SQLFieldListItem($proto48);

$proto0["m_fieldlist"][]=$obj;
						$proto50=array();
			$obj = new SQLField(array(
	"m_strName" => "is_downstream",
	"m_strTable" => "config.layers_info",
	"m_srcTableName" => "config.layers_info"
));

$proto50["m_sql"] = "is_downstream";
$proto50["m_srcTableName"] = "config.layers_info";
$proto50["m_expr"]=$obj;
$proto50["m_alias"] = "";
$obj = new SQLFieldListItem($proto50);

$proto0["m_fieldlist"][]=$obj;
$proto0["m_fromlist"] = array();
												$proto52=array();
$proto52["m_link"] = "SQLL_MAIN";
			$proto53=array();
$proto53["m_strName"] = "config.layers_info";
$proto53["m_srcTableName"] = "config.layers_info";
$proto53["m_columns"] = array();
$proto53["m_columns"][] = "pkey";
$proto53["m_columns"][] = "description";
$proto53["m_columns"][] = "name";
$proto53["m_columns"][] = "sqlquery";
$proto53["m_columns"][] = "tableorview";
$proto53["m_columns"][] = "styles";
$proto53["m_columns"][] = "layer_group";
$proto53["m_columns"][] = "is_visible";
$proto53["m_columns"][] = "status";
$proto53["m_columns"][] = "sl_no";
$proto53["m_columns"][] = "info_view";
$proto53["m_columns"][] = "info_key";
$proto53["m_columns"][] = "geom_column_name";
$proto53["m_columns"][] = "sub_group";
$proto53["m_columns"][] = "geom_type";
$proto53["m_columns"][] = "info_group";
$proto53["m_columns"][] = "minzoom";
$proto53["m_columns"][] = "maxzoom";
$proto53["m_columns"][] = "sld_name";
$proto53["m_columns"][] = "hls_code";
$proto53["m_columns"][] = "is_device";
$proto53["m_columns"][] = "is_upstream";
$proto53["m_columns"][] = "is_downstream";
$obj = new SQLTable($proto53);

$proto52["m_table"] = $obj;
$proto52["m_sql"] = "config.layers_info";
$proto52["m_alias"] = "";
$proto52["m_srcTableName"] = "config.layers_info";
$proto54=array();
$proto54["m_sql"] = "";
$proto54["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto54["m_column"]=$obj;
$proto54["m_contained"] = array();
$proto54["m_strCase"] = "";
$proto54["m_havingmode"] = false;
$proto54["m_inBrackets"] = false;
$proto54["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto54);

$proto52["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto52);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="config.layers_info";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_config_layers_info = createSqlQuery_config_layers_info();


	
		;

																							

$tdataconfig_layers_info[".sqlquery"] = $queryData_config_layers_info;

$tableEvents["config.layers_info"] = new eventsBase;
$tdataconfig_layers_info[".hasEvents"] = false;

?>