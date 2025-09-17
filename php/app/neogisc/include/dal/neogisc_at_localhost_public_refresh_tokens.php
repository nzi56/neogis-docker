<?php
$dalTablerefresh_tokens = array();
$dalTablerefresh_tokens["username"] = array("type"=>200,"varname"=>"username", "name" => "username");
$dalTablerefresh_tokens["token"] = array("type"=>200,"varname"=>"token", "name" => "token");
$dalTablerefresh_tokens["issued_at"] = array("type"=>135,"varname"=>"issued_at", "name" => "issued_at");
$dalTablerefresh_tokens["expires_at"] = array("type"=>135,"varname"=>"expires_at", "name" => "expires_at");
$dalTablerefresh_tokens["revoked"] = array("type"=>11,"varname"=>"revoked", "name" => "revoked");
	$dalTablerefresh_tokens["username"]["key"]=true;

$dal_info["neogisc_at_localhost_public_refresh_tokens"] = &$dalTablerefresh_tokens;
?>