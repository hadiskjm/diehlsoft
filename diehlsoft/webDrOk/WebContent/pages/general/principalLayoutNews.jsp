<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<!-- Slidebars CSS -->
		<link rel="stylesheet" href="css/slidebars.min.css">
		
		<!-- Slidebars Theme -->
		<link rel="stylesheet" href="css/slidebars-theme.css">

<script src="js/cargador.js"></script>
<!-- CSS diseño pagina -->
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/themeDiehl.css">

<!-- ****************************** -->
<!-- JS diseño pagina -->
<script src="js/jquery.js"></script>
<script src="js/superslides.min.js"></script>
<script src="js/scripts.js"></script>
<!-- ************************** -->

<script src="jscssEditor/ckeditor.js"></script>
<script src="jscssEditor/styles.js"></script>
<script src="jscssEditor/config.js"></script>
		
<style type="text/css">
#cargando {
    position:fixed;
    left: 0;
    top: calc(100%/2 - 2*1em - 2*1px);
	height:     100%;
	width:      100%;
    background:url(../image/loadingDiehl.gif) no-repeat center;
}
</style>
<style>
.resaltar{background-color:#FFAA7F;}
</style> 

<script type='text/javascript' >
    $.expr[':'].icontains = function(obj, index, meta, stack){
    return (obj.textContent || obj.innerText || jQuery(obj).text() || '').toLowerCase().indexOf(meta[3].toLowerCase()) >= 0;
    };
    $(document).ready(function(){   
        $('#buscador').keyup(function(){
                     buscar = $(this).val();
                     $('#maincont p').removeClass('resaltar');
                            if(jQuery.trim(buscar) != ''){
                               $("#maincont p:icontains('" + buscar + "')").addClass('resaltar');
                            }
            });
    });   
 </script> 
 
<script type="text/javascript">
CKEDITOR.on('instanceReady', function(e) {
    // First time
    e.editor.document.getBody().setStyle('background-color', '#FFFFFF');
    // in case the user switches to source and back
    e.editor.on('contentDom', function() {
        e.editor.document.getBody().setStyle('background-color', '#FFFFFF');
    });
});
	     
$(window).load(function () {
	  // Una vez se cargue al completo la página desaparecerá el div "cargando"
	  //$('#cargando').hide();
	  setTimeout("$('#cargando').fadeOut()", 500);
	});
</script>

<meta name="description" content="">
<meta name="keywords" content="">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="image/icon/logoDiehl144.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="image/icon/logoDiehl114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/icon/logoDiehl72.png">
<link rel="apple-touch-icon-precomposed" href="image/icon/logoDiehl57.png">
<link rel="shortcut icon" href="image/icon/logoDiehl57.png">




<script type="text/javascript">
document.onkeydown = function(){  
    if(window.event && window.event.keyCode == 116){ 
     window.event.keyCode = 505;  
    } 
    if(window.event && window.event.keyCode == 505){  
     return false;     
    }  
   }  
</script>

<title>
	<tiles:getAsString name="title"/>
</title>
</head> 
<body id="pagetop">
<div >

	<!-- Top Navigation Bar -->
		<div class="sb-navbar sb-slide">
		
			<!-- Left Slidebar control -->
			<div class="sb-toggle-left">
				<div class="navicon-line"></div>
				<div class="navicon-line"></div>
				<div class="navicon-line"></div>
			</div>
			
			<!-- Right Slidebar control -->
			<div class="sb-toggle-right">
				<div class="navicon-line"></div>
				<div class="navicon-line"></div>
				<div class="navicon-line"></div>
			</div>
			
			<!-- Menu Items -->
			<ul class="sb-navbar-menu">
				<!-- poner algo si se quiere en el menu bar -->
			</ul>
			
		    <h1><html:img styleClass="img100" border="0" page="/image/logodroknews.png"/></h1>
		</div>
		
		<!-- Your main site content in here -->
		<div id="sb-site">
             
     
      <div id="cargando"  align="center">
	<html:img border="0" align="center" page="/image/loadingDiehl2.gif"/></div>

    <div><tiles:insert attribute="body" /></div>

    <div><tiles:insert attribute="footer" /></div>
	        
	</div>
	
		<div class="sb-slidebar sb-left">	
			<h1><html:img border="0" page="/image/logo2.png"/></h1>
			<!-- Lists in Slidebars -->
			<ul class="sb-menu">
				<li><html:link action="redireccionando.do?event=homeCorp">Inicio</html:link> </li>
				<li><html:link action="redireccionando.do?event=homeCorp">Noticias</html:link> </li>
				<li><html:link action="redireccionando.do?event=homeCorp">Foro</html:link> </li>
				
			</ul>
			
		</div><!-- /.sb-slidebar .sb-left -->
		
		
		<!-- Right Slidebars -->
		<div class="sb-slidebar sb-right">	
			
			<!-- Widgets -->
			<aside class="sb-widget">
				<div class="sb-widget-header">
					<h3 class="sb-widget-title">Text Widget</h3>
				</div>
				<div class="sb-widget-content">
					<p>Text widget goes here.</p>
				</div>
			</aside>
			
			<aside class="sb-widget">
				<div class="sb-widget-header">
					<h3 class="sb-widget-title">List Widget</h3>
				</div>
				<div class="sb-widget-content">
					<ul>
						<li>List</li>
						<li>of</li>
						<li>Items</li>
					</ul>
				</div>
			</aside>
			
		</div><!-- /.sb-slidebar .sb-right -->
		
				
		<!-- jQuery -->
		<script src="js/menuslider.js"></script>
		
		<!-- Slidebars -->
		<script src="js/slidebars.min.js"></script>
		<script>
		var harold = jQuery.noConflict();
			(function(harold) {
				harold(document).ready(function() {
					harold.slidebars();
				});
			}) (jQuery);
		</script>
		
		<!-- Slidebars Theme JS
			 This should be included after you have initiated Slidebars. -->
		<script src="js/slidebars-theme.js"></script>
</div>


</body>


</html:html>