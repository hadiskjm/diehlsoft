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
	  var menunivel2Form = document.getElementById("menunivel2Form");
	  menunivel2Form.action="<%= request.getContextPath()%>/redireccionando.do?event=medSearch";
	  menunivel2Form.submit();
	  }
function save(){
	  var menunivel2Form = document.getElementById("menunivel2Form");
	  menunivel2Form.action="<%= request.getContextPath()%>/menunivel2New.do?event=medSave&saveandadd=save";
	  menunivel2Form.submit();
	  }
function saveandadd(){
	  var menunivel2Form = document.getElementById("menunivel2Form");
	  menunivel2Form.action="<%= request.getContextPath()%>/menunivel2New.do?event=medSave&saveandadd=saveandadd";
	  menunivel2Form.submit();
	  }
   </script>
   
</head>

<body>
<html:form action="menunivel2New.do" method="post" styleId="menunivel2Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="menunivel2Form.medNew.title"/></h3>
    <hr>
    <br>
    <fieldset>
    
    
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel2Form.medNew.legend.general"/></legend>
					<div class="cbp-mc-column25">
					
					    <label><bean:message key="menunivel2Form.medNew.cbo.intmecId"/>:</label>
						<html:select property="intmecId">
					     <html:optionsCollection label="strmecNombreMenu" property="medListMenuNivel1" value="intmecId" />
					    </html:select>
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedNombreMenu"/>:</label>
						<html:text property="strmedNombreMenu" styleId="strmedNombreMenu" />
						<span  class="generalErrors"><html:errors property="strmedNombreMenu"/></span>
                        
                        <label><bean:message key="menunivel2Form.medNew.cbo.strmedLocale"/>:</label>
						<html:select property="strmedLocale">
					          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
					          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
					    </html:select>
					    
					    <label><bean:message key="menunivel2Form.medNew.cbo.strmedTipoSistema"/>:</label>
						<html:select property="strmedTipoSistema">
					     <html:optionsCollection label="strestNombre" property="medListTipoSistema" value="strestNombre" />
					    </html:select>
					  </div>
					  
					    <div class="cbp-mc-column25">
					    
					    <label><bean:message key="menunivel2Form.medNew.txt.intmedNivelUsuario"/>:</label>
						<html:text property="intmedNivelUsuario" styleId="intmedNivelUsuario" />
						<span  class="generalErrors"><html:errors property="intmedNivelUsuario"/></span>

						<label><bean:message key="menunivel2Form.medNew.txt.strmedEvento"/>:</label>
						<html:text property="strmedEvento" styleId="strmedEvento" />
						<span  class="generalErrors"><html:errors property="strmedEvento"/></span>
						
						 <label><bean:message key="menunivel2Form.medNew.cbo.strmedMuestraContenido"/>:</label>
						<html:select property="strmedMuestraContenido">
					     <html:optionsCollection label="strestNombre" property="medListMostrarContenido" value="strestNombre" />
					    </html:select>

					    </div>
					    
					    <div class="cbp-mc-column25">
					    
					     <label><bean:message key="menunivel2Form.medNew.fle.strmedNombreImagen"/>:</label>
						<html:text property="strmedNombreImagen" styleId="strmedNombreImagen" />
						<span  class="generalErrors"><html:errors property="strmedNombreImagen"/></span>
                        
			           <label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmedNombreImagen' );"  >
			            <bean:message key='menunivel2Form.medNew.btn.browser'/></html:button> 
			            
			            <label><bean:message key="menunivel2Form.medNew.cbo.strmedEstado"/>:</label>
						<html:select property="strmedEstado">
					     <html:optionsCollection label="strestNombre" property="medListMenuNivel2" value="strestNombre" />
					    </html:select>
					    
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.fle.strmedNombrePdf"/>:</label>
						<html:text property="strmedNombrePdf" styleId="strmedNombrePdf" />
						<span  class="generalErrors"><html:errors property="strmedNombrePdf"/></span>
                        
                        <label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Files:/', 'strmedNombrePdf' );"  >
			            <bean:message key='menunivel2Form.medNew.btn.browser'/></html:button> 
			            
			            <label><bean:message key="menunivel2Form.medNew.txt.intmedPosicion"/>:</label>
						<html:text property="intmedPosicion" styleId="intmedPosicion" />
						<span  class="generalErrors"><html:errors property="intmedPosicion"/></span>

					  </div>
					  
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel2Form.medNew.legend.twitter"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedTwitterCard"/>:</label>
						<html:text property="strmedTwitterCard" styleId="strmedTwitterCard" />
						<span  class="generalErrors"><html:errors property="strmedTwitterCard"/></span>
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedTwitterSite"/>:</label>
						<html:text property="strmedTwitterSite" styleId="strmedTwitterSite" />
						<span  class="generalErrors"><html:errors property="strmedTwitterSite"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">

					    <label><bean:message key="menunivel2Form.medNew.txt.strmedTwitterTitle"/>:</label>
						<html:text property="strmedTwitterTitle" styleId="strmedTwitterTitle" />
						<span  class="generalErrors"><html:errors property="strmedTwitterTitle"/></span>
						
						<label><bean:message key="menunivel2Form.medNew.txt.strmedTwitterCreator"/>:</label>
						<html:text property="strmedTwitterCreator" styleId="strmedTwitterCreator" />
						<span  class="generalErrors"><html:errors property="strmedTwitterCreator"/></span>
						
					  </div>
					  
					   <div class="cbp-mc-column25">
						
						<label><bean:message key="menunivel2Form.medNew.txt.strmedTwitterImage"/>:</label>
						<html:text property="strmedTwitterImage" styleId="strmedTwitterImage" />
						<span  class="generalErrors"><html:errors property="strmedTwitterImage"/></span>
                        
                        <label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmedTwitterImage' );"  >
			            <bean:message key='menunivel2Form.medNew.btn.browser'/></html:button> 
					  </div>
					  
					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel2Form.medNew.txt.strmedTwitterDescription"/>:</label>
						<html:textarea property="strmedTwitterDescription" styleId="strmedTwitterDescription" />
						<span  class="generalErrors"><html:errors property="strmedTwitterDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                  <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel2Form.medNew.legend.google"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedGoogleName"/>:</label>
						<html:text property="strmedGoogleName" styleId="strmedGoogleName" />
						<span  class="generalErrors"><html:errors property="strmedGoogleName"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedGoogleImage"/>:</label>
						<html:text property="strmedGoogleImage" styleId="strmedGoogleImage" />
						<span  class="generalErrors"><html:errors property="strmedGoogleImage"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmedGoogleImage' );"  >
			            <bean:message key='menunivel2Form.medNew.btn.browser'/></html:button> 
			            						
					  </div>

					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel2Form.medNew.txt.strmedGoogleDescription"/>:</label>
						<html:textarea property="strmedGoogleDescription" styleId="strmedGoogleDescription" />
						<span  class="generalErrors"><html:errors property="strmedGoogleDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel2Form.medNew.legend.og"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedOgTitle"/>:</label>
						<html:text property="strmedOgTitle" styleId="strmedOgTitle" />
						<span  class="generalErrors"><html:errors property="strmedOgTitle"/></span>
						
						<label><bean:message key="menunivel2Form.medNew.txt.strmedOgSite_name"/>:</label>
						<html:text property="strmedOgSite_name" styleId="strmedOgSite_name" />
						<span  class="generalErrors"><html:errors property="strmedOgSite_name"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedOgType"/>:</label>
						<html:text property="strmedOgType" styleId="strmedOgType" />
						<span  class="generalErrors"><html:errors property="strmedOgType"/></span>
						
						<label><bean:message key="menunivel2Form.medNew.txt.strmedOgUrl"/>:</label>
						<html:text property="strmedOgUrl" styleId="strmedOgUrl" />
						<span  class="generalErrors"><html:errors property="strmedOgUrl"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel2Form.medNew.txt.strmedOgImage"/>:</label>
						<html:text property="strmedOgImage" styleId="strmedOgImage" />
						<span  class="generalErrors"><html:errors property="strmedOgImage"/></span>
						
						<label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmedOgImage' );"  >
			            <bean:message key='menunivel2Form.medNew.btn.browser'/></html:button> 					
					  </div>

					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel2Form.medNew.txt.strmedOgDescription"/>:</label>
						<html:textarea property="strmedOgDescription" styleId="strmedOgDescription" />
						<span  class="generalErrors"><html:errors property="strmedOgDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel2Form.medNew.legend.general"/></legend>

					    <div class="cbp-mc-column100">
                           
                            
						    <label><bean:message key="menunivel2Form.medNew.txt.strmedMenu"/>:</label>
							<html:textarea  property="strmedMenu" styleClass="ckeditor"  cols="80" styleId="editor1" rows="10"/>
							<span  class="generalErrors"><html:errors property="strmedMenu"/></span>
							
																				
											      
					    </div>
			    </fieldset>

                 </div>

    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='menunivel2Form.medNew.btn.save'/></html:submit> 
            &nbsp;
		    <html:button property="" styleClass="button green medium" onclick="saveandadd()" >
		    <bean:message key='menunivel2Form.medNew.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='menunivel2Form.medNew.btn.cancel'/></html:button>
	  
	<span>
    <logic:equal name="menunivel2Form" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="menunivel2Form.medNew.error.error" /> <bean:write name="menunivel2Form" property="strmedNombreMenu"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="menunivel2Form" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="menunivel2Form.medNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="menunivel2Form" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
    </span>
    
    </div>
    
   </fieldset>

    <br>
    


<!-- ================================================= -->
</div>
</div>
    </html:form>

	
</body>
</html>