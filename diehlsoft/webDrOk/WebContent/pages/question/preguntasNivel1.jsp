<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@taglib uri="/WEB-INF/tld-diehl/displaytag.tld" prefix="display" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <link rel="stylesheet" type="text/css" href="css/slidediehl.css" />
		<link rel="stylesheet" type="text/css" href="css/slicebox.css" />
		<link rel="stylesheet" type="text/css" href="css/custom.css" />
		<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
		<script type="text/javascript" src="js/jquery.slicebox.js"></script>

<script type="text/javascript">
function BrowseServer( startupPath, functionData )
{
	// You can use the "CKFinder" class to render CKFinder in a page:
	var finder = new CKFinder();

	// The path for the installation of CKFinder (default = "/ckfinder/").
	finder.basePath = '../webDrOk/ckfinder/';

	//Startup path in a form: "Type:/path/to/directory/"
	finder.startupPath = startupPath;

	// Name of a function which is called when a file is selected in CKFinder.
	finder.selectActionFunction = SetFileField;

	// Additional data to be passed to the selectActionFunction in a second argument.
	// We'll use this feature to pass the Id of a field that will be updated.
	finder.selectActionData = functionData;

	// Name of a function which is called when a thumbnail is selected in CKFinder.
	finder.selectThumbnailActionFunction = ShowThumbnails;

	// Launch CKFinder
	finder.popup();
}

// This is a sample function which is called when a file is selected in CKFinder.
function SetFileField( fileUrl, data )
{
	document.getElementById( data["selectActionData"] ).value = fileUrl;
}

// This is a sample function which is called when a thumbnail is selected in CKFinder.
function ShowThumbnails( fileUrl, data )
{
	// this = CKFinderAPI
	var sFileName = this.getSelectedFile().name;
	document.getElementById( 'thumbnails' ).innerHTML +=
			'<div class="thumb">' +
				'<img src="' + fileUrl + '" />' +
				'<div class="caption">' +
					'<a href="' + data["fileUrl"] + '" target="_blank">' + sFileName + '</a> (' + data["fileSize"] + 'KB)' +
				'</div>' +
			'</div>';

	document.getElementById( 'preview' ).style.display = "";
	// It is not required to return any value.
	// When false is returned, CKFinder will not close automatically.
	return false;
}
	</script>




<script type="text/javascript">
function cancel(){
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/redireccionando.do?event=mecSearch";
	  menunivel1Form.submit();
	  }
function createMenu(){
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/menunivel1New.do?event=mecCreateMenu";
	  menunivel1Form.submit();
	  }
   </script>
   
</head>

<body>
<html:form action="preguntaNivel1.do" method="post" styleId="preguntaNivel1Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="preguntaNivel1Form.pagNivel1.title"/></h3>
    <hr>
    <br>
    <fieldset>

    <div class="mainForm">

                 <div class="cbp-mc-form">
			
				    
					<div class="cbp-mc-column100">
				<!-- 
				<logic:iterate name="preguntaNivel1Form" property="pagList" id="pagList">
				
			  <bean:write name="pagList" property="strpgaDescripcion"/>
				
				</logic:iterate>
				 -->	
				
				<!-- ********************************************* -->
				
				<div>
			<div class="wrapperDiehl">

				<ul id="sb-slider" class="sb-slider">
				
				<logic:iterate name="preguntaNivel1Form" property="pagList" id="data">
					<li>
						
						<html:img page="/Archivos/userfiles/images/imgpga/${data.strpgaImg}" alt="image1"/>
						<div class="sb-description">
							<h3><bean:write name="data" property="strpgaDescripcion"/></h3>

							<logic:iterate name="preguntaNivel1Form" property="altListXPregunta" id="altdata">
							
								 <logic:equal  name="data"  property="intpgaId" value="${altdata.intpgaId}">
								      <h3>* <bean:write  name="altdata" property="straltDescripcion"/></h3>
								 </logic:equal >
							</logic:iterate>
							
							
						</div>
					</li>
					</logic:iterate>
				</ul>

				<div id="shadow" class="shadow"></div>

				<div id="nav-arrows" class="nav-arrows">
					<a href="#">Next</a>
					<a href="#">Previous</a>
				</div>

			</div><!-- /wrapper -->


		</div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.slicebox.js"></script>
		<script type="text/javascript">
			$(function() {
				
				var Page = (function() {

					var $navArrows = $( '#nav-arrows' ).hide(),
						$shadow = $( '#shadow' ).hide(),
						slicebox = $( '#sb-slider' ).slicebox( {
							onReady : function() {

								$navArrows.show();
								$shadow.show();

							},
							orientation : 'r',
							cuboidsRandom : true,
							disperseFactor : 30
						} ),
						
						init = function() {

							initEvents();
							
						},
						initEvents = function() {

							// add navigation events
							$navArrows.children( ':first' ).on( 'click', function() {

								slicebox.next();
								return false;

							} );

							$navArrows.children( ':last' ).on( 'click', function() {
								
								slicebox.previous();
								return false;

							} );

						};

						return { init : init };

				})();

				Page.init();

			});
			
</script>
				
				<!-- ********************************************* -->
				
											
					  </div>

			

                 </div>
     	  
	
    </div>
    
   </fieldset>

    <br>
    


<!-- ================================================= -->
</div>
</div>
    </html:form>

	
</body>
</html>