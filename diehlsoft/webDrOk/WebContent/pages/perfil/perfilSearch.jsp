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
	  var perfilForm = document.getElementById("perfilForm");
	  perfilForm.action="<%= request.getContextPath()%>/perfilSearch.do?event=pefSearch";
	  perfilForm.submit();
	  }
function pefActiveOrInactive()
{
   return confirm("<bean:message key="perfilForm.search.confirm"/>");
}

	jQuery(function(){
		$("#strpefDescripcion").autocomplete("<%= request.getContextPath()%>/pages/perfil/acDescPerfil.jsp");
	});
   </script>
   
</head>
<body>
<html:form action="perfilSearch.do" method="post" styleId="perfilForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h4><bean:message key="perfilForm.title.search"/></h4>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="perfilForm.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
	<label><bean:message key="perfilForm.txt.strpefDescripcion"/>:</label>
	<html:text  styleId="strpefDescripcion" property="strpefDescripcion" />
	<span  class="generalErrors"><html:errors property="strpefDescripcion"/></span>

	<label><bean:message key="perfilForm.cbo.strpefEstado"/>:</label>
	<html:select property="strpefEstado">
     <html:optionsCollection label="strestNombre" property="estModuloPef" value="strestNombre" />
    </html:select>
  </div>
    <div class="cbp-mc-column50">
    <label><bean:message key="perfilForm.cbo.strpefLocale"/>:</label>
	 <html:select  property="strpefLocale" disabled="true">
          <html:option value="es_PE"><bean:message key="perfilForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="perfilForm.option.english"/></html:option>
            </html:select>
    

	<logic:equal name="perfilForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
	<logic:equal name="perfilForm" property="flagConfirm" value="OKOK">
     <script type="text/javascript">
	alert("<bean:message key="perfilForm.perfilMn.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=perfilSearch";
	</script>
    </logic:equal>
    <logic:equal name="perfilForm" property="flagConfirm" value="OKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="perfilForm.perfilUpdate.ok.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=perfilSearch";
	</script>
    </logic:equal>
    
    </div>
    </fieldset>
    </div>
    
    <BR>
    <html:submit property="" styleClass="button green medium"  onclick="search()" ><bean:message key='perfilForm.btn.search'/></html:submit> 
    </div>
    
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <p><bean:message key='perfilForm.title.grid.search'/></p>
    <span class="new"><html:link action="perfilMn.do?event=pefNew" titleKey="perfilForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table name="sessionScope.perfilForm.pefSearchList" id="data" export="true"  requestURI="/perfilSearch.do" pagesize="10" >
          <display:setProperty name="export.excel.filename" value="listSearchPerfil.xls" />
          <display:setProperty name="export.xml.filename" value="listSearchPerfil.xml" />
          <display:setProperty name="export.csv.filename" value="listSearchPerfil.csv" />
          <display:setProperty name="export.pdf.filename" value="listSearchPerfil.pdf" />
           
            <display:column property="intpefId" titleKey="perfilForm.grid.id" sortable="true" class="hover1"/>
            <display:column property="strpefDescripcion" titleKey="perfilForm.grid.name" sortable="true"  />
            <display:column property="strpefEstado" titleKey="perfilForm.grid.state" sortable="true"  />
            <display:column property="strpefLocale" titleKey="perfilForm.grid.locale" sortable="true"  />
     
            <display:column title="&nbsp;" sortable="true" url="/perfilSearch.do" paramId="event=pefUpdate&intpefId" paramProperty="intpefId" media="html" >
            <html:img width="20" height="20" titleKey="perfilForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            <display:column title="&nbsp;" sortable="true" media="html">
            <html:link action="perfilSearch.do?event=pefDelete&intpefId=${data.intpefId}" onclick="return pefActiveOrInactive();">
            <html:img width="20" height="20" title="${data.strpefEstado}" page="/image/icon/${data.strpefEstado}.png"></html:img>
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