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
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>

<script type="text/javascript">
function search(){
	  var opcionPerfilForm = document.getElementById("opcionPerfilForm");
	  opcionPerfilForm.action="<%= request.getContextPath()%>/opcionPerfilSearch.do?event=oppSearch";
	  opcionPerfilForm.submit();
	  }
function oppActiveOrInactive()
{
   return confirm("<bean:message key="opcionPerfilForm.search.confirm"/>");
}
	  
</script>
	<script>
	jQuery(function(){
		$("#stroppDescripcion").autocomplete("<%= request.getContextPath()%>/pages/opcionPerfil/acDescOpcionPerfil.jsp");
	});
   </script>
   
</head>
<body>
<html:form action="opcionPerfilSearch.do" method="post" styleId="opcionPerfilForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
    <h4><bean:message key="opcionPerfilForm.title.search"/></h4>
    <hr>
    <br>
    
    <fieldset>
    
    <legend><bean:message key="opcionPerfilForm.subtitle.search"/></legend>
    
       <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
    
    <label><bean:message key="opcionPerfilForm.txt.stroppDescripcion"/>:</label>
	<html:text styleId="stroppDescripcion" property="stroppDescripcion" />
	<span class="generalErrors"><html:errors property="stroppDescripcion"/></span>
    
    <label><bean:message key="opcionPerfilForm.cbo.stroppEstado"/>:</label>
	<html:select property="stroppEstado">
     <html:optionsCollection label="strestNombre" property="estModuloOpp" value="strestNombre" />
    </html:select>
    
    </div>
    <div class="cbp-mc-column50">
    <label><bean:message key="opcionPerfilForm.cbo.stroppLocale"/>:</label>
	 <html:select  property="stroppLocale" disabled="true">
          <html:option value="es_PE"><bean:message key="opcionPerfilForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="opcionPerfilForm.option.english"/></html:option>
            </html:select>
            
    
    
	<logic:equal name="opcionPerfilForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
	<logic:equal name="opcionPerfilForm" property="flagConfirm" value="OKOK">
     <script type="text/javascript">
	alert("<bean:message key="opcionPerfilForm.opcionPerfilNew.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=opcionPerfilSearch";
	</script>
    </logic:equal>
    <logic:equal name="opcionPerfilForm" property="flagConfirm" value="OKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="opcionPerfilForm.perfilUpdate.ok.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=opcionPerfilSearch";
	</script>
    </logic:equal>
	</div>
	</fieldset>
	</div>
	<br>
	<html:submit property="" styleClass="button green medium"  onclick="search()" ><bean:message key='opcionPerfilForm.btn.search'/></html:submit>
	</div>
    
   </fieldset>
         

    
    <br>
    <div class="bodyDisplay">
    <p><bean:message key='opcionPerfilForm.title.grid.search'/></p>
    <span class="new"><html:link action="opcionPerfilNew.do?event=oppNew" titleKey="opcionPerfilForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <BR/>

         <display:table name="sessionScope.opcionPerfilForm.oppSearchList" id="data" export="true"  requestURI="/opcionPerfilSearch.do" pagesize="20" >
          <display:setProperty name="export.excel.filename" value="listSearchOpcionPerfil.xls" />
          <display:setProperty name="export.xml.filename" value="listSearchOpcionPerfil.xml" />
          <display:setProperty name="export.csv.filename" value="listSearchOpcionPerfil.csv" />
           
            <display:column property="intoppId" titleKey="opcionPerfilForm.grid.id" sortable="true" class="hover1"/>
            <display:column property="stroppDescripcion" titleKey="opcionPerfilForm.grid.name" sortable="true"  />
            <display:column property="stroppEstado" titleKey="opcionPerfilForm.grid.state" sortable="true"  />
            <display:column property="stroppLocale" titleKey="opcionPerfilForm.grid.locale" sortable="true"  />
     
            <display:column title="&nbsp;" sortable="true" url="/opcionPerfilSearch.do" paramId="event=oppUpdate&intoppId" paramProperty="intoppId" media="html" >
            <html:img width="20" height="20" titleKey="opcionPerfilForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            <display:column title="&nbsp;" sortable="true" media="html">
            <html:link action="opcionPerfilSearch.do?event=oppDelete&intoppId=${data.intoppId}" onclick="return oppActiveOrInactive();">
            <html:img width="20" height="20" title="${data.stroppEstado}" page="/image/icon/${data.stroppEstado}.png"></html:img>
            </html:link> 
            </display:column>
        </display:table>

        <br/>
    </div>

<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>