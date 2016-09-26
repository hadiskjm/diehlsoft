﻿/**
 * Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

// This file contains style definitions that can be used by CKEditor plugins.
//
// The most common use for it is the "stylescombo" plugin, which shows a combo
// in the editor toolbar, containing all styles. Other plugins instead, like
// the div plugin, use a subset of the styles on their feature.
//
// If you don't have plugins that depend on this file, you can simply ignore it.
// Otherwise it is strongly recommended to customize this file to match your
// website requirements and design properly.



CKEDITOR.stylesSet.add( 'default', [
	/* Block Styles */

	// These styles are already available in the "Format" combo ("format" plugin),
	// so they are not needed here by default. You may enable them to avoid
	// placing the "Format" combo in the toolbar, maintaining the same features.
	/*
	{ name: 'Paragraph',		element: 'p' },
	{ name: 'Heading 1',		element: 'h1' },
	{ name: 'Heading 2',		element: 'h2' },
	{ name: 'Heading 3',		element: 'h3' },
	{ name: 'Heading 4',		element: 'h4' },
	{ name: 'Heading 5',		element: 'h5' },
	{ name: 'Heading 6',		element: 'h6' },
	{ name: 'Preformatted Text',element: 'pre' },
	{ name: 'Address',			element: 'address' },
	*/

	{ name: 'Italic Title',		element: 'h2', styles: { 'font-style': 'italic' } },
	{ name: 'Subtitle',			element: 'h3', styles: { 'color': '#aaa', 'font-style': 'italic' } },
	{
		name: 'Special Container',
		element: 'div',
		styles: {
			padding: '5px 10px',
			background: '#FFFFFF',
			border: '1px solid #ccc'
		}
	},

	/* Inline Styles */

	// These are core styles available as toolbar buttons. You may opt enabling
	// some of them in the Styles combo, removing them from the toolbar.
	// (This requires the "stylescombo" plugin)
	/*
	{ name: 'Strong',			element: 'strong', overrides: 'b' },
	{ name: 'Emphasis',			element: 'em'	, overrides: 'i' },
	{ name: 'Underline',		element: 'u' },
	{ name: 'Strikethrough',	element: 'strike' },
	{ name: 'Subscript',		element: 'sub' },
	{ name: 'Superscript',		element: 'sup' },
	*/

	{ name: 'Marker',			element: 'span', attributes: { 'class': 'marker' } },

	{ name: 'Big',				element: 'big' },
	{ name: 'Small',			element: 'small' },
	{ name: 'Typewriter',		element: 'tt' },

	{ name: 'Computer Code',	element: 'code' },
	{ name: 'Keyboard Phrase',	element: 'kbd' },
	{ name: 'Sample Text',		element: 'samp' },
	{ name: 'Variable',			element: 'var' },

	{ name: 'Deleted Text',		element: 'del' },
	{ name: 'Inserted Text',	element: 'ins' },

	{ name: 'Cited Work',		element: 'cite' },
	{ name: 'Inline Quotation',	element: 'q' },

	{ name: 'Language: RTL',	element: 'span', attributes: { 'dir': 'rtl' } },
	{ name: 'Language: LTR',	element: 'span', attributes: { 'dir': 'ltr' } },

	/* Object Styles */
/*
	{
		name: 'Styled image (left)',
		element: 'img',
		attributes: { 'class': 'left' }
	},

	{
		name: 'Styled image (right)',
		element: 'img',
		attributes: { 'class': 'right' }
	},
*/
	{
		name: 'Compact table',
		element: 'table',
		attributes: {
			cellpadding: '5',
			cellspacing: '0',
			border: '1',
			bordercolor: '#ccc'
		},
		styles: {
			'border-collapse': 'collapse'
		}
	},
    
	{ name: 'Texto',		element: 'p',	styles: {'text-align': 'justify','text-indent':'0pt','margin': '0pt','font-family':'Arial','font-style':'normal','font-weight':'normal' } },
	{ name: 'Imagen Derecha',		element: 'img',	styles: {'float':'right','padding': '10px','width': '100%' } },
	{ name: 'Imagen Izquierda',		element: 'img',	styles: {'float':'left','padding': '10px','width': '100%' } },
	{ name: 'Imagen Centro',		element: 'img',	styles: {'text-align':'center','padding': '10px','width': '100%' } },
	{ name: 'Imagen Centro2',		element: 'img',	styles: {'float':'left','padding': '10px','width': '120%' } },
        { name: 'Image derecha',		element: 'img',	styles: {'float':'right','margin': '10px 10px 10px 10px','padding': '15px !important','border': '1px solid #ccc','background': '#FFF'} },
	{ name: 'Tabla',		element: 'table',	styles: {'border':'1px solid #FFD0B9','width': '100%' } },
	{ name: 'Cabecera de Tabla',	element: 'tr',	styles: {'border':'1px solid #FFD0B9', 'background-color': '#D87D27' ,'font-family':'Open Sans','font-size': '12px'} },
	{ name: 'Contenido Tabla Linea 1',	element: 'tr',	styles: {'background-color': '#BEBEBE' ,'font-family':'Open Sans','font-size': '11px'} },
	{ name: 'Contenido Tabla Linea 2',	element: 'tr',	styles: {'background-color': '#D9D9D9' ,'font-family':'Open Sans','font-size': '11px'} },
	{ name: 'Contenido TD',	element: 'td',	styles: {'padding': '10px 10px 10px 10px'} },
	{ name: 'Disc Bulleted List',	element: 'ul',		styles: { 'list-style-type': 'disc','padding': '20px 20px 20px 20px' } },
	{ name: 'Styled image (right)',	element: 'img',	attributes: { 'class': 'imgright' }},
	{ name: 'Div (id,mainleft)',	element: 'div',	attributes: { 'id': 'mainleft' }},
	{ name: 'Div (id,mainright)',	element: 'div',	attributes: { 'id': 'mainright' }},
	{ name: 'Div (grid)',	element: 'div',	attributes: { 'class': 'grid' }},
	{ name: 'Div (column-6)',	element: 'div',	attributes: { 'class': 'column-6' }},
	{ name: 'Div (column-4)',	element: 'div',	attributes: { 'class': 'column-4' }},
	{ name: 'Div (mainForm)',	element: 'div',	attributes: { 'class': 'mainForm' }},
	{ name: 'Div (cbp-mc-form)',	element: 'div',	attributes: { 'class': 'cbp-mc-form' }},
	{ name: 'Div (cbp-mc-column25)',	element: 'div',	attributes: { 'class': 'cbp-mc-column25' }},
	{ name: 'Div (cbp-mc-column33)',	element: 'div',	attributes: { 'class': 'cbp-mc-column33' }},
	{ name: 'Div (cbp-mc-column50)',	element: 'div',	attributes: { 'class': 'cbp-mc-column50' }},
	{ name: 'Div (cbp-mc-column75)',	element: 'div',	attributes: { 'class': 'cbp-mc-column75' }},
	{ name: 'Div (cbp-mc-column100)',	element: 'div',	attributes: { 'class': 'cbp-mc-column100' }},
	{ name: 'Img (imgrightcarnet)',	element: 'img',	attributes: { 'class': 'imgrightcarnet' }},
	{ name: 'Img (imgleftcarnet)',	element: 'img',	attributes: { 'class': 'imgleftcarnet' }},
	 { name: 'a (href_disabled)',	element: 'a',	attributes: { 'class': 'href_disabled' }},
        { name: 'Lista Numerica',	element: 'ol',	styles: { 'list-style-type': 'decimal','padding': '20px 20px 20px 20px','text-align': 'justify' } }, 
	] );

