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
	  var menunivel3Form = document.getElementById("menunivel3Form");
	  menunivel3Form.action="<%= request.getContextPath()%>/redireccionando.do?event=metSearch";
	  menunivel3Form.submit();
	  }
function save(){
	  var menunivel3Form = document.getElementById("menunivel3Form");
	  menunivel3Form.action="<%= request.getContextPath()%>/menunivel3New.do?event=metSave&saveandadd=save";
	  menunivel3Form.submit();
	  }
function saveandadd(){
	  var menunivel3Form = document.getElementById("menunivel3Form");
	  menunivel3Form.action="<%= request.getContextPath()%>/menunivel3New.do?event=metSave&saveandadd=saveandadd";
	  menunivel3Form.submit();
	  }
function metFillMenu2(){
	  var menunivel3Form = document.getElementById("menunivel3Form");
	  menunivel3Form.action="<%= request.getContextPath()%>/menunivel3New.do?event=metFillMenu2";
	  menunivel3Form.submit();
	  }
   </script>
   
</head>

<body>
<html:form action="menunivel3New.do" method="post" styleId="menunivel3Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="menunivel3Form.metNew.title"/></h3>
    <hr>
    <br>
    <fieldset>
    
    
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel3Form.metNew.legend.general"/></legend>
					<div class="cbp-mc-column25">
					    <label><bean:message key="menunivel3Form.metNew.cbo.intmecId"/>:</label>
						<html:select property="intmecId" onchange="metFillMenu2(this.value)">
					     <html:optionsCollection label="strmecNombreMenu" property="metListMenuNivel1" value="intmecId" />
					    </html:select>
					    
					     <label><bean:message key="menunivel3Form.metNew.cbo.intmedId"/>:</label>
						<html:select property="intmedId">
					     <html:optionsCollection label="strmedNombreMenu" property="metListMenuNivel2" value="intmedId" />
					    </html:select>
					    
						<label><bean:message key="menunivel3Form.metNew.txt.strmetNombreMenu"/>:</label>
						<html:text property="strmetNombreMenu" styleId="strmetNombreMenu" />
						<span  class="generalErrors"><html:errors property="strmetNombreMenu"/></span>
                        
                        <label><bean:message key="menunivel3Form.metNew.cbo.strmetLocale"/>:</label>
						<html:select property="strmetLocale">
					          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
					          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
					    </html:select>
					    
					    
					  </div>
					  
					    <div class="cbp-mc-column25">
					    
					    <label><bean:message key="menunivel3Form.metNew.cbo.strmetTipoSistema"/>:</label>
						<html:select property="strmetTipoSistema">
					     <html:optionsCollection label="strestNombre" property="metListTipoSistema" value="strestNombre" />
					    </html:select>
					    
					    <label><bean:message key="menunivel3Form.metNew.txt.intmetNivelUsuario"/>:</label>
						<html:text property="intmetNivelUsuario" styleId="intmetNivelUsuario" />
						<span  class="generalErrors"><html:errors property="intmetNivelUsuario"/></span>

						<label><bean:message key="menunivel3Form.metNew.txt.strmetEvento"/>:</label>
						<html:text property="strmetEvento" styleId="strmetEvento" />
						<span  class="generalErrors"><html:errors property="strmetEvento"/></span>
						
						 <label><bean:message key="menunivel3Form.metNew.cbo.strmetMuestraContenido"/>:</label>
						<html:select property="strmetMuestraContenido">
					     <html:optionsCollection label="strestNombre" property="metListMostrarContenido" value="strestNombre" />
					    </html:select>

					    </div>
					    
					    <div class="cbp-mc-column25">
					    
					     <label><bean:message key="menunivel3Form.metNew.fle.strmetNombreImagen"/>:</label>
						<html:text property="strmetNombreImagen" styleId="strmetNombreImagen" />
						<span  class="generalErrors"><html:errors property="strmetNombreImagen"/></span>
                        
			           <label>&nbsp;</label>
			            <html:button property="" styleClass="button green metium"  onclick="BrowseServer('Images:/', 'strmetNombreImagen' );"  >
			            <bean:message key='menunivel3Form.metNew.btn.browser'/></html:button> 
			            
			            <label><bean:message key="menunivel3Form.metNew.cbo.strmetEstado"/>:</label>
						<html:select property="strmetEstado">
					     <html:optionsCollection label="strestNombre" property="metListMenuNivel3" value="strestNombre" />
					    </html:select>
					    
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.fle.strmetNombrePdf"/>:</label>
						<html:text property="strmetNombrePdf" styleId="strmetNombrePdf" />
						<span  class="generalErrors"><html:errors property="strmetNombrePdf"/></span>
                        
                        <label>&nbsp;</label>
			            <html:button property="" styleClass="button green metium"  onclick="BrowseServer('Files:/', 'strmetNombrePdf' );"  >
			            <bean:message key='menunivel3Form.metNew.btn.browser'/></html:button> 
                        
                        <label><bean:message key="menunivel3Form.metNew.txt.intmetPosicion"/>:</label>
						<html:text property="intmetPosicion" styleId="intmetPosicion" />
						<span  class="generalErrors"><html:errors property="intmetPosicion"/></span>
					  </div>
					  
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel3Form.metNew.legend.twitter"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetTwitterCard"/>:</label>
						<html:text property="strmetTwitterCard" styleId="strmetTwitterCard" />
						<span  class="generalErrors"><html:errors property="strmetTwitterCard"/></span>
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetTwitterSite"/>:</label>
						<html:text property="strmetTwitterSite" styleId="strmetTwitterSite" />
						<span  class="generalErrors"><html:errors property="strmetTwitterSite"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">

					    <label><bean:message key="menunivel3Form.metNew.txt.strmetTwitterTitle"/>:</label>
						<html:text property="strmetTwitterTitle" styleId="strmetTwitterTitle" />
						<span  class="generalErrors"><html:errors property="strmetTwitterTitle"/></span>
						
						<label><bean:message key="menunivel3Form.metNew.txt.strmetTwitterCreator"/>:</label>
						<html:text property="strmetTwitterCreator" styleId="strmetTwitterCreator" />
						<span  class="generalErrors"><html:errors property="strmetTwitterCreator"/></span>
						
					  </div>
					  
					   <div class="cbp-mc-column25">
						
						<label><bean:message key="menunivel3Form.metNew.txt.strmetTwitterImage"/>:</label>
						<html:text property="strmetTwitterImage" styleId="strmetTwitterImage" />
						<span  class="generalErrors"><html:errors property="strmetTwitterImage"/></span>
                        
                        <label>&nbsp;</label>
			            <html:button property="" styleClass="button green metium"  onclick="BrowseServer('Images:/', 'strmetTwitterImage' );"  >
			            <bean:message key='menunivel3Form.metNew.btn.browser'/></html:button> 
					  </div>
					  
					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel3Form.metNew.txt.strmetTwitterDescription"/>:</label>
						<html:textarea property="strmetTwitterDescription" styleId="strmetTwitterDescription" />
						<span  class="generalErrors"><html:errors property="strmetTwitterDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                  <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel3Form.metNew.legend.google"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetGoogleName"/>:</label>
						<html:text property="strmetGoogleName" styleId="strmetGoogleName" />
						<span  class="generalErrors"><html:errors property="strmetGoogleName"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetGoogleImage"/>:</label>
						<html:text property="strmetGoogleImage" styleId="strmetGoogleImage" />
						<span  class="generalErrors"><html:errors property="strmetGoogleImage"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label>&nbsp;</label>
			            <html:button property="" styleClass="button green metium"  onclick="BrowseServer('Images:/', 'strmetGoogleImage' );"  >
			            <bean:message key='menunivel3Form.metNew.btn.browser'/></html:button> 
			            						
					  </div>

					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel3Form.metNew.txt.strmetGoogleDescription"/>:</label>
						<html:textarea property="strmetGoogleDescription" styleId="strmetGoogleDescription" />
						<span  class="generalErrors"><html:errors property="strmetGoogleDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel3Form.metNew.legend.og"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetOgTitle"/>:</label>
						<html:text property="strmetOgTitle" styleId="strmetOgTitle" />
						<span  class="generalErrors"><html:errors property="strmetOgTitle"/></span>
						
						<label><bean:message key="menunivel3Form.metNew.txt.strmetOgSite_name"/>:</label>
						<html:text property="strmetOgSite_name" styleId="strmetOgSite_name" />
						<span  class="generalErrors"><html:errors property="strmetOgSite_name"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetOgType"/>:</label>
						<html:text property="strmetOgType" styleId="strmetOgType" />
						<span  class="generalErrors"><html:errors property="strmetOgType"/></span>
						
						<label><bean:message key="menunivel3Form.metNew.txt.strmetOgUrl"/>:</label>
						<html:text property="strmetOgUrl" styleId="strmetOgUrl" />
						<span  class="generalErrors"><html:errors property="strmetOgUrl"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel3Form.metNew.txt.strmetOgImage"/>:</label>
						<html:text property="strmetOgImage" styleId="strmetOgImage" />
						<span  class="generalErrors"><html:errors property="strmetOgImage"/></span>
						
						<label>&nbsp;</label>
			            <html:button property="" styleClass="button green metium"  onclick="BrowseServer('Images:/', 'strmetOgImage' );"  >
			            <bean:message key='menunivel3Form.metNew.btn.browser'/></html:button> 					
					  </div>

					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel3Form.metNew.txt.strmetOgDescription"/>:</label>
						<html:textarea property="strmetOgDescription" styleId="strmetOgDescription" />
						<span  class="generalErrors"><html:errors property="strmetOgDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel3Form.metNew.legend.general"/></legend>

					    <div class="cbp-mc-column100">
                           
                            
						    <label><bean:message key="menunivel3Form.metNew.txt.strmetMenu"/>:</label>
							<html:textarea  property="strmetMenu" styleClass="ckeditor"  cols="80" styleId="editor1" rows="10"/>
							<span  class="generalErrors"><html:errors property="strmetMenu"/></span>
							
																				
											      
					    </div>
			    </fieldset>

                 </div>

    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green metium"  onclick="save()" >
            <bean:message key='menunivel3Form.metNew.btn.save'/></html:submit> 
            &nbsp;
		    <html:button property="" styleClass="button green metium" onclick="saveandadd()" >
		    <bean:message key='menunivel3Form.metNew.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green metium" onclick="cancel()" >
			<bean:message key='menunivel3Form.metNew.btn.cancel'/></html:button>
	  
	<span>
    <logic:equal name="menunivel3Form" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="menunivel3Form.metNew.error.error" /> <bean:write name="menunivel3Form" property="strmetNombreMenu"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="menunivel3Form" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="menunivel3Form.metNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="menunivel3Form" property="flagConfirm" value="FALSE">
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