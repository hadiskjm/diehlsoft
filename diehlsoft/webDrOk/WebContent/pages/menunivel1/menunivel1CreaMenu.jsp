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
function createMenu(){
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/menunivel1New.do?event=mecCreateMenu";
	  menunivel1Form.submit();
	  }
   </script>
   
</head>

<body>
<html:form action="menunivel1CreaMenu.do" method="post" styleId="menunivel1Form">
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
				    <legend><bean:message key="menunivel1Form.mecNew.legend.og"/></legend>
					<div class="cbp-mc-column25">
					
						<label><bean:message key="menunivel1Form.mecNew.cbo.intmenuNivelUser"/></label>
						<html:select property="intmenuNivelUser">
						          <html:option value="1"><bean:message key="menunivel1Form.mecNew.option.menuNivelUser1"/></html:option>
						          <html:option value="2"><bean:message key="menunivel1Form.mecNew.option.menuNivelUser2"/></html:option>
						          <html:option value="3"><bean:message key="menunivel1Form.mecNew.option.menuNivelUser3"/></html:option>
						</html:select>
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					     <label><bean:message key="menunivel1Form.mecNew.cbo.strmecTipoSistema"/>:</label>
						<html:select property="strmecTipoSistema">
					     <html:optionsCollection label="strestNombre" property="mecListTipoSistema" value="strestNombre" />
					    </html:select>
						
											
					  </div>
					  
					  <div class="cbp-mc-column25">
					
										
					  </div>

					    <div class="cbp-mc-column25">

						
						
					
					    </div>
			    </fieldset>

                 </div>
                 
                

    <BR>
            
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='menunivel1Form.mecNew.btn.cancel'/></html:button>
			 &nbsp;
			<html:button property="" styleClass="button green medium" onclick="createMenu()" >
			<bean:message key='menunivel1Form.mecNew.btn.createMenu'/></html:button>
	  
	<span>
 
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