/*
Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
For licensing, see license.txt or http://cksource.com/ckfinder/license
*/

CKFinder.customConfig = function( config )
{
	// Define changes to default configuration here.
	// For the list of available options, check:
	// http://docs.cksource.com/ckfinder_2.x_api/symbols/CKFinder.config.html

	// Sample configuration options:
	// config.uiColor = '#BDE31E';
	// config.language = 'fr';
	// config.removePlugins = 'basket';
baseURL = "http://" + location.host + "/webDrOk/";

    
    //servidor
config.filebrowserBrowseUrl      = baseURL+"ckfinder/ckfinder.html?type=Files";
config.filebrowserImageBrowseUrl = baseURL+"ckfinder/ckfinder.html?type=Images";
config.filebrowserFlashBrowseUrl = baseURL+"ckfinder/ckfinder.html?type=Flash";
    //examinar
config.filebrowserUploadUrl      = baseURL+"ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files";
config.filebrowserImageUploadUrl = baseURL+"ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images";
config.filebrowserFlashUploadUrl = baseURL+"ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash";
    
};
