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
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/redireccionando.do?event=mecSearch";
	  menunivel1Form.submit();
	  }
function save(){
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/menunivel1New.do?event=mecSave&saveandadd=save";
	  menunivel1Form.submit();
	  }
function saveandadd(){
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/menunivel1New.do?event=mecSave&saveandadd=saveandadd";
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
<html:form action="menunivel1New.do" method="post" styleId="menunivel1Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="menunivel1Form.mecNew.title"/></h3>
    <hr>
    <br>
    <fieldset>
    
    
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel1Form.mecNew.legend.general"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecNombreMenu"/>:</label>
						<html:text property="strmecNombreMenu" styleId="strmecNombreMenu" />
						<span  class="generalErrors"><html:errors property="strmecNombreMenu"/></span>
                        
                        <label><bean:message key="menunivel1Form.mecNew.cbo.strmecLocale"/>:</label>
						<html:select property="strmecLocale">
					          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
					          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
					    </html:select>
					    
					    <label><bean:message key="menunivel1Form.mecNew.cbo.strmecTipoSistema"/>:</label>
						<html:select property="strmecTipoSistema">
					     <html:optionsCollection label="strestNombre" property="mecListTipoSistema" value="strestNombre" />
					    </html:select>
					  </div>
					  
					    <div class="cbp-mc-column25">
					    
					    <label><bean:message key="menunivel1Form.mecNew.txt.intmecNivelUsuario"/>:</label>
						<html:text property="intmecNivelUsuario" styleId="intmecNivelUsuario" />
						<span  class="generalErrors"><html:errors property="intmecNivelUsuario"/></span>

						<label><bean:message key="menunivel1Form.mecNew.txt.strmecEvento"/>:</label>
						<html:text property="strmecEvento" styleId="strmecEvento" />
						<span  class="generalErrors"><html:errors property="strmecEvento"/></span>
						
						 <label><bean:message key="menunivel1Form.mecNew.cbo.strmecMuestraContenido"/>:</label>
						<html:select property="strmecMuestraContenido">
					     <html:optionsCollection label="strestNombre" property="mecListMostrarContenido" value="strestNombre" />
					    </html:select>

					    </div>
					    
					    <div class="cbp-mc-column25">
					    
					     <label><bean:message key="menunivel1Form.mecNew.fle.strmecNombreImagen"/>:</label>
						<html:text property="strmecNombreImagen" styleId="strmecNombreImagen" />
						<span  class="generalErrors"><html:errors property="strmecNombreImagen"/></span>
                        
			           <label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmecNombreImagen' );"  >
			            <bean:message key='menunivel1Form.mecNew.btn.browser'/></html:button> 
			            
			            <label><bean:message key="menunivel1Form.mecNew.cbo.strmecEstado"/>:</label>
						<html:select property="strmecEstado">
					     <html:optionsCollection label="strestNombre" property="mecListMenuNivel1" value="strestNombre" />
					    </html:select>
					    
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.fle.strmecNombrePdf"/>:</label>
						<html:text property="strmecNombrePdf" styleId="strmecNombrePdf" />
						<span  class="generalErrors"><html:errors property="strmecNombrePdf"/></span>
                        
                        <label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Files:/', 'strmecNombrePdf' );"  >
			            <bean:message key='menunivel1Form.mecNew.btn.browser'/></html:button> 
                        
                        <label><bean:message key="menunivel1Form.mecNew.txt.intmecPosicion"/>:</label>
						<html:text property="intmecPosicion" styleId="intmecPosicion" />
						<span  class="generalErrors"><html:errors property="intmecPosicion"/></span>
                        
					  </div>
					  
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel1Form.mecNew.legend.twitter"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecTwitterCard"/>:</label>
						<html:text property="strmecTwitterCard" styleId="strmecTwitterCard" />
						<span  class="generalErrors"><html:errors property="strmecTwitterCard"/></span>
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecTwitterSite"/>:</label>
						<html:text property="strmecTwitterSite" styleId="strmecTwitterSite" />
						<span  class="generalErrors"><html:errors property="strmecTwitterSite"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">

					    <label><bean:message key="menunivel1Form.mecNew.txt.strmecTwitterTitle"/>:</label>
						<html:text property="strmecTwitterTitle" styleId="strmecTwitterTitle" />
						<span  class="generalErrors"><html:errors property="strmecTwitterTitle"/></span>
						
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecTwitterCreator"/>:</label>
						<html:text property="strmecTwitterCreator" styleId="strmecTwitterCreator" />
						<span  class="generalErrors"><html:errors property="strmecTwitterCreator"/></span>
						
					  </div>
					  
					   <div class="cbp-mc-column25">
						
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecTwitterImage"/>:</label>
						<html:text property="strmecTwitterImage" styleId="strmecTwitterImage" />
						<span  class="generalErrors"><html:errors property="strmecTwitterImage"/></span>
                        
                        <label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmecTwitterImage' );"  >
			            <bean:message key='menunivel1Form.mecNew.btn.browser'/></html:button> 
					  </div>
					  
					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel1Form.mecNew.txt.strmecTwitterDescription"/>:</label>
						<html:textarea property="strmecTwitterDescription" styleId="strmecTwitterDescription" />
						<span  class="generalErrors"><html:errors property="strmecTwitterDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                  <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel1Form.mecNew.legend.google"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecGoogleName"/>:</label>
						<html:text property="strmecGoogleName" styleId="strmecGoogleName" />
						<span  class="generalErrors"><html:errors property="strmecGoogleName"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecGoogleImage"/>:</label>
						<html:text property="strmecGoogleImage" styleId="strmecGoogleImage" />
						<span  class="generalErrors"><html:errors property="strmecGoogleImage"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmecGoogleImage' );"  >
			            <bean:message key='menunivel1Form.mecNew.btn.browser'/></html:button> 
			            						
					  </div>

					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel1Form.mecNew.txt.strmecGoogleDescription"/>:</label>
						<html:textarea property="strmecGoogleDescription" styleId="strmecGoogleDescription" />
						<span  class="generalErrors"><html:errors property="strmecGoogleDescription"/></span>
					
					    </div>
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel1Form.mecNew.legend.og"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecOgTitle"/>:</label>
						<html:text property="strmecOgTitle" styleId="strmecOgTitle" />
						<span  class="generalErrors"><html:errors property="strmecOgTitle"/></span>
						
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecOgSite_name"/>:</label>
						<html:text property="strmecOgSite_name" styleId="strmecOgSite_name" />
						<span  class="generalErrors"><html:errors property="strmecOgSite_name"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecOgType"/>:</label>
						<html:text property="strmecOgType" styleId="strmecOgType" />
						<span  class="generalErrors"><html:errors property="strmecOgType"/></span>
						
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecOgUrl"/>:</label>
						<html:text property="strmecOgUrl" styleId="strmecOgUrl" />
						<span  class="generalErrors"><html:errors property="strmecOgUrl"/></span>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.txt.strmecOgImage"/>:</label>
						<html:text property="strmecOgImage" styleId="strmecOgImage" />
						<span  class="generalErrors"><html:errors property="strmecOgImage"/></span>
						
						<label>&nbsp;</label>
			            <html:button property="" styleClass="button green medium"  onclick="BrowseServer('Images:/', 'strmecOgImage' );"  >
			            <bean:message key='menunivel1Form.mecNew.btn.browser'/></html:button> 					
					  </div>

					    <div class="cbp-mc-column25">

						<label><bean:message key="menunivel1Form.mecNew.txt.strmecOgDescription"/>:</label>
						<html:textarea property="strmecOgDescription" styleId="strmecOgDescription" />
						<span  class="generalErrors"><html:errors property="strmecOgDescription"/></span>
						
						<label><bean:message key="menunivel1Form.mecNew.cbo.intmenuNivelUser"/></label>
						<html:select property="intmenuNivelUser">
						          <html:option value="1"><bean:message key="menunivel1Form.mecNew.option.menuNivelUser1"/></html:option>
						          <html:option value="2"><bean:message key="menunivel1Form.mecNew.option.menuNivelUser2"/></html:option>
						          <html:option value="3"><bean:message key="menunivel1Form.mecNew.option.menuNivelUser3"/></html:option>
						</html:select>
					
					    </div>
			    </fieldset>

                 </div>
                 
                 <div class="cbp-mc-form">
				<fieldset>
				    <legend><bean:message key="menunivel1Form.mecNew.legend.general"/></legend>

					    <div class="cbp-mc-column100">
                           
                            
						    <label><bean:message key="menunivel1Form.mecNew.txt.strmecMenu"/>:</label>
							<html:textarea  property="strmecMenu" styleClass="ckeditor"  cols="80" styleId="editor1" rows="10"/>
							<span  class="generalErrors"><html:errors property="strmecMenu"/></span>
							
																				
											      
					    </div>
			    </fieldset>

                 </div>

    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='menunivel1Form.mecNew.btn.save'/></html:submit> 
            &nbsp;
		    <html:button property="" styleClass="button green medium" onclick="saveandadd()" >
		    <bean:message key='menunivel1Form.mecNew.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='menunivel1Form.mecNew.btn.cancel'/></html:button>
			 &nbsp;
			<html:button property="" styleClass="button green medium" onclick="createMenu()" >
			<bean:message key='menunivel1Form.mecNew.btn.createMenu'/></html:button>
	  
	<span>
    <logic:equal name="menunivel1Form" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="menunivel1Form.mecNew.error.error" /> <bean:write name="menunivel1Form" property="strmecNombreMenu"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="menunivel1Form" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="menunivel1Form.mecNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="menunivel1Form" property="flagConfirm" value="FALSE">
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