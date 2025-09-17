<?php
$dalTablereports_info = array();
$dalTablereports_info["pkey"] = array("type"=>201,"varname"=>"pkey", "name" => "pkey");
$dalTablereports_info["report_id"] = array("type"=>201,"varname"=>"report_id", "name" => "report_id");
$dalTablereports_info["report_description"] = array("type"=>201,"varname"=>"report_description", "name" => "report_description");
$dalTablereports_info["report_sql"] = array("type"=>201,"varname"=>"report_sql", "name" => "report_sql");
$dalTablereports_info["report_file"] = array("type"=>201,"varname"=>"report_file", "name" => "report_file");
	$dalTablereports_info["pkey"]["key"]=true;

$dal_info["neogisc_at_localhost_config_reports_info"] = &$dalTablereports_info;
?>