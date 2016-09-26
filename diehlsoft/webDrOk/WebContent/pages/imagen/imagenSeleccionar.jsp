<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@taglib uri="/WEB-INF/tld-diehl/displaytag.tld" prefix="display" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function search(){
	  var imagenForm = document.getElementById("imagenForm");
	  imagenForm.action="<%= request.getContextPath()%>/imagenSeleccionar.do?event=imgModCamList";
	  imagenForm.submit();
	  }

   </script>
 <title>Seleccionar Imagen</title>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Slicebox - 3D Image Slider with Fallback" />
        <meta name="keywords" content="jquery, css3, 3d, webkit, fallback, slider, css3, 3d transforms, slices, rotate, box, automatic" />
		<meta name="author" content="Pedro Botelho for Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/slicebox.css" />
		<link rel="stylesheet" type="text/css" href="css/custom.css" />
		<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
		<script type="text/javascript" src="js/jquery.slicebox.js"></script>
</head>
<body  onBlur="self.focus()" onLoad="self.focus()">
<html:form action="imagenSeleccionar.do" method="post" styleId="imagenForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->

<fieldset>

    <legend><bean:message key="imagenForm.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
	
	<div class="cbp-mc-column50">

	<label><bean:message key="imagenForm.cbo.strimgModulo"/>:</label>
	<html:select property="strimgModulo">
     <html:optionsCollection label="strestNombre" property="imgModuloModuloEstado" value="strestNombre" />
    </html:select>
  </div>
  
    <div class="cbp-mc-column50">
    
    <label><bean:message key="imagenForm.cbo.strimgCampana"/>:</label>
	<html:select property="strimgCampana">
     <html:optionsCollection label="strestNombre" property="imgCampanaModuloEstado" value="strestNombre" />
    </html:select>
  
    </div>
    
    </fieldset>
    </div>
    
    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="search()" ><bean:message key='imagenForm.btn.search'/></html:submit> 

    </div>
 
    
    
   </fieldset>
  
   
   

		<div class="container">
			<div class="wrapper">

				<ul id="sb-slider" class="sb-slider">
				
				 <nested:iterate  property="imgModCamList" id="data">
					<li>
						<html:img page="/imgSubidas/${data.strimgNombre}" alt="image1"/>
						<div class="sb-description">
							<h3><nested:write property="strimgModulo"/></h3>
						</div>
					</li>
					</nested:iterate>
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
			
</script><!-- ================================================= -->
</div>
</div>
		</html:form>
	</body>

</html>	