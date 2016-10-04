<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@ page import="bean.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
 <meta   name="DrOk Healthcare" content="DrOK, DrOk Healthcare, Consultoria, Salud, Servicios, Gestion Eficiente de la Salud, AUDITORÍA DE SERVICIOS DE SALUD" />

<!-- Error 404 -->
<link rel="stylesheet" href="css/404.css">
<link rel="stylesheet" href="css/normalize404.css">
<link rel="stylesheet" href="css/style404.css">
<!-- FIN Error 404 -->

<!-- INICIO ckfinder -->
<link href="ckfinder/_samples/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<!-- FIN ckfinder -->


<!-- Slidebars CSS -->
		<link rel="stylesheet" href="css/slidebars.min.css">
		
		<!-- Slidebars Theme -->
		<link rel="stylesheet" href="css/slidebars-theme.css">

<!-- INICIO DATA TABLES RESPONSIVE -->
<script type="text/javascript" language="JavaScript" src="js/jquery.dataTables_es_PE.js"></script>
<script type="text/javascript" language="JavaScript" src="js/dataTables.responsive.js"></script>

<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css/dataTables.responsive.css">
<!-- FIN DATA TABLES RESPONSIVE -->

<!-- INICIO LOADING -->
<script src="js/cargador.js"></script>
<!-- FIN LOADING -->

<!-- INICIO Slider Header -->
<link rel="stylesheet" href="css/sliderdiehl.css">
<% 
  BeanPersona bean= (BeanPersona)session.getAttribute("beanPersona");
  int intvalor=0;
  if(bean!=null){
  intvalor=bean.getIntpefId();
  if(intvalor>=2) {
  intvalor=2;
  %>
  <link rel="stylesheet" href="css/<%=intvalor%>.css">
  <%
  }else {
  intvalor=1;
  %>
  
  <link rel="stylesheet" href="css/<%=intvalor%>.css">
  <%
  }
  
  } 
  else {
	  intvalor=1;
	  %>
	  
	  <link rel="stylesheet" href="css/<%=intvalor%>.css">
	  <%
	  }
%>


<!-- FIN Slider Header -->

<!-- CSS diseño pagina -->
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/themeDiehl.css">

<!-- ****************************** -->
<!-- JS diseño pagina -->

<script src="js/jquery.js"></script>
<script src="js/superslides.min.js"></script>
<script src="js/scripts.js"></script>
<!-- ************************** -->

<!-- ININCIO DEL EDITOR DE CONTENIDO -->
<script src="ckeditor/ckeditor.js"></script>
<script src="ckeditor/styles.js"></script>
<script src="ckeditor/config.js"></script>
<!-- FIN DEL EDITOR DE CONTENIDO -->	

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

  <script>
		// Note: in this sample we use CKEditor with two extra plugins:
		// - uploadimage to support pasting and dragging images,
		// - image2 (instead of image) to provide images with captions.
		// Additionally, the CSS style for the editing area has been slightly modified to provide responsive images during editing.
		// All these modifications are not required by CKFinder, they just provide better user experience.
		if ( typeof CKEDITOR !== 'undefined' ) {
			CKEDITOR.addCss( 'img {max-width:100%; height: auto;}' );
			var editor = CKEDITOR.replace( 'editor1', {
				extraPlugins: 'uploadimage,image2',
				removePlugins: 'image',
				height:350
			} );

			// Just call CKFinder.setupCKEditor and pass the CKEditor instance as the first argument.
			// The second parameter (optional), is the path for the CKFinder installation (default = "/ckfinder/").
			CKFinder.setupCKEditor( editor, '../webDrOk/ckfinder/' ) ;

			// It is also possible to pass an object with selected CKFinder properties as a second argument.
			// CKFinder.setupCKEditor( editor, { basePath : '../', skin : 'v1' } ) ;
		} else {
			document.getElementById( 'description' ).innerHTML = '<div class="tip-a tip-a-alert">This sample requires working Internet connection to load CKEditor from CDN.</div>'
		}
	</script>	  
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
/*
CKEDITOR.on('instanceReady', function(e) {
    // First time
    e.editor.document.getBody().setStyle('background-color', '#FFFFFF');
    // in case the user switches to source and back
    e.editor.on('contentDom', function() {
        e.editor.document.getBody().setStyle('background-color', '#FFFFFF');
    });
});

*/
	     
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

function autenticar(){
	  var usuarioForm = document.getElementById("usuarioForm");
	  usuarioForm.action="<%= request.getContextPath()%>/usuario.do?event=autenticar";
	  usuarioForm.submit();
	  }
	  
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
			
		    <h1><a href="http://www.drokhealthcare.com"><html:img styleClass="img100" border="0" page="/image/logodrokeducation.png"/></a></h1>
		</div>
		
		<!-- Your main site content in here -->
		<div id="sb-site">
             
     <div><tiles:insert attribute="header" /></div>
      <div id="cargando"  align="center">
	<html:img border="0" align="center" page="/image/loadingDiehl2.gif"/></div>

    <div><tiles:insert attribute="body" />
  
    </div>

    <div><tiles:insert attribute="footer" /></div>
	        
	</div>
	
		<div class="sb-slidebar sb-left">	
			<h1><a href="http://www.drokhealthcare.com"><html:img border="0" page="/image/logo2.png"/></a></h1>
			<!-- Lists in Slidebars -->
			<ul class="sb-menu">
			
			<% 
	int intnivelUser=0;
  if(bean!=null){
	  intnivelUser=bean.getIntpefId();
  if(intnivelUser>2) {
	  %>
	 <jsp:include page="/pages/general/3e.jsp"></jsp:include>
	  <%
	  }
  else if(intnivelUser>1) {
  %>
 <jsp:include page="/pages/general/2e.jsp"></jsp:include>
  <%
  }else {
  %>
  
<jsp:include page="/pages/general/1e.jsp"></jsp:include>
  <%
  }
  
  } 
  else {
	  %>
	   <jsp:include page="/pages/general/1e.jsp"></jsp:include>
	  <%
	  }
%>
			  
			  

				 <!--  
				 <li><html:link action="menunivel1ViewCorp.do?event=mecViewCorp&intmecId=1">CAPACIDADES</html:link></li>
				 <li><html:link action="menunivel2ViewCorp.do?event=medViewCorp&intmedId=1">PERSONAS</html:link></li>
				 <li><html:link action="menunivel3ViewCorp.do?event=metViewCorp&intmetId=1">AUDITORÍA DE SERVICIOS DE SALUD</html:link></li>

				<li><a class="sb-toggle-submenu" href="#">Experiencia<span class="sb-caret"></span></a>
					<ul class="sb-submenu">
					
						<li><a  class="sb-toggle-submenu" href="#">Industrias<span class="sb-caret"></span></a>
							<ul class="sb-submenu">
								<li><a href="#">Educación</a></li>
								<li><a href="#">Farmacia y Productos Farmaceuticos</a></li>
								<li><a href="#">Gestión del Cambio</a></li>
								<li><a  class="sb-toggle-submenu" href="#">Gestión de Servicios de Salud<span class="sb-caret"></span></a>
								     <ul class="sb-submenu">
										<li><a href="#">Educación</a></li>
										<li><a href="#">Farmacia y Productos Farmaceuticos</a></li>
										<li><a href="#">Gestión del Cambio</a></li>
										<li><a href="#">Infraestructura</a></li>
										<li><a href="#">Normativo y Regulatorio</a></li>
										<li><a href="#">Seguros</a></li>
										<li><a href="#">Sector Público</a></li>
										<li><a href="#">Sector Social</a></li>
									</ul>
								</li>
								<li><a href="#">Infraestructura</a></li>
								<li><a href="#">Normativo y Regulatorio</a></li>
								<li><a href="#">Seguros</a></li>
								<li><a href="#">Sector Público</a></li>
								<li><a href="#">Sector Social</a></li>
							</ul>
						</li>

						<li><a href="#">Capacidades</a></li>
					</ul>
				</li>
                
				
						<li><a  class="sb-toggle-submenu" href="#">Personas<span class="sb-caret"></span></a>
							<ul class="sb-submenu">
								<li><a href="#">Líderes y Expertos</a></li>
							</ul>
						</li>
				
				<li><a  class="sb-toggle-submenu" href="#">Acerca de DrOk<span class="sb-caret"></span></a>
							<ul class="sb-submenu">
								<li><a href="#">Quienes somos</a></li>
								<li><a  class="sb-toggle-submenu" href="#">Consultoría<span class="sb-caret"></span></a>
								     <ul class="sb-submenu">
										<li><html:link action="redireccionando.do?event=homeEducation">Capacitación y Entrenamiento</html:link> </li>						
									</ul>
								</li>
							</ul>
						</li>
						
				<li><html:link action="redireccionando.do?event=homeNews">Noticias y Foros</html:link></li>
	
						<li><a  class="sb-toggle-submenu" href="#">Clientes y Usuarios<span class="sb-caret"></span></a>
							<ul class="sb-submenu">
								<li><a href="#">Contacto</a></li>
								<li><a href="#">Términos de Uso</a></li>
								<li><a href="#">Políticas de Privacidad</a></li>
							</ul>
						</li>
				
				-->
				
				
			</ul>
			
		</div><!-- /.sb-slidebar .sb-left -->
		
		
		<!-- Right Slidebars -->
		<div class="sb-slidebar sb-right">	
			
			<!-- Widgets Login -->
			<html:form action="usuario" styleId="usuarioForm" method="post" focus="strusuUser" onsubmit="return autenticar(this);">  
					
	<%-- ============================================= --%> 
			<fieldset>
			<div class="mainForm">
			
		<h5><bean:message key="usuarioForm.title.login"/></h5>
		
		<div class="cbp-mc-form">
		<div class="cbp-mc-column100"> 
		<h3 class="sb-widget-title"><bean:message key="usuarioForm.lbl.usuario"/>:</h3>
		<html:text  property="strusuUser"/>
		<span  class="generalErrors"> <html:errors property="strusuUser"/></span>
		</div>
		</div>
		
		<div class="cbp-mc-form">
		<div class="cbp-mc-column100"> 
		<h3 class="sb-widget-title"><bean:message key="usuarioForm.lbl.contrasena"/>:</h3>
		<html:password property="strusuPassword"/>
		<span class="generalErrors"> <html:errors property="strusuPassword"/></span>
		</div>
		</div>
		
		<div class="cbp-mc-form">
		<div class="cbp-mc-column100"> 
		<h3 class="sb-widget-title"><bean:message key="usuarioForm.cbo.language"/></h3>
		<html:select  styleClass="generalCombobox" property="strusuIdioma" onchange="changueLanguage(this.value)">
		          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
		          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
		            </html:select>
		    </div>
		    </div>
		<div class="cbp-mc-form">
		<div class="cbp-mc-column100"> 
		<logic:messagesPresent >
			<br><span  class="generalErrors"> <bean:message key="usuarioForm.error.autenticar" /></span>
		  </logic:messagesPresent>
		<br>
		<html:submit property="" styleClass="button green medium" onclick="autenticar()" ><bean:message key='usuarioForm.btn.login'/></html:submit>
		</div>
		
		</div>
		
		<div class="cbp-mc-form">
		<div class="cbp-mc-column100"> 
		<h3 class="sb-widget-title">
		<bean:message key="usuarioForm.msg.registrar"/>
		<html:link action="RegisterUserPage.do?event=perNew">Registrate</html:link>
		</h3>
		</div></div>
		
		</div>
		</fieldset>
		<%-- ========================================== --%>  


</html:form>
			
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