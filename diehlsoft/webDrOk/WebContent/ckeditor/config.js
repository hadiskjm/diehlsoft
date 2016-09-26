/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
    config.uiColor = '#FFFFFF';
	// Define changes to default configuration here.
	// For the complete reference:
	//config.extraPlugins = 'justify';
	//config.height = '250px';
     //config.width = '700px';
	// http://docs.ckeditor.com/#!/api/CKEDITOR.config

	// The toolbar groups arrangement, optimized for two toolbar rows.
	/*config.toolbarGroups = [
		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
		{ name: 'links' },
		{ name: 'insert' },
		{ name: 'forms' },
		{ name: 'tools' },
		{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'others' },
		'/',
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
		{ name: 'styles' },
		{ name: 'colors' },
		{ name: 'about' }
	];
*/
	// Remove some buttons, provided by the standard plugins, which we don't
	// need to have in the Standard(s) toolbar.
	//config.removeButtons = 'Underline,Subscript,Superscript';
 // Remove some buttons, provided by the standard plugins, which we don't
    // need to have in the Standard(s) toolbar.
 // default directory path
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