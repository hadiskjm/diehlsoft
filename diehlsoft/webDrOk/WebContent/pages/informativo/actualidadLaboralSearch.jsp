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
	  var actualidadLaboralForm = document.getElementById("actualidadLaboralForm");
	  actualidadLaboralForm.action="<%= request.getContextPath()%>/actualidadLaboralSearch.do?event=aclSearch";
	  actualidadLaboralForm.submit();
	  }
function pefActiveOrInactive()
{
   return confirm("<bean:message key="actualidadLaboralForm.search.confirm"/>");
}

	jQuery(function(){
		$("#straclNombre").autocomplete("<%= request.getContextPath()%>/pages/informativo/actualidadLaboralAutocomplete.jsp");
	});
   </script>
   
</head>
<body>
<html:form action="actualidadLaboralSearch.do" method="post" styleId="actualidadLaboralForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h4><bean:message key="actualidadLaboralForm.title.search"/></h4>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="actualidadLaboralForm.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
	<label><bean:message key="actualidadLaboralForm.txt.intbolId"/>:</label>
	<html:text property="intbolId" disabled="true"/>

  </div>
  
    <div class="cbp-mc-column50">
    
    <label><bean:message key="actualidadLaboralForm.txt.strbolNombre"/>:</label>
	<html:text  property="strbolNombre" disabled="true"/>
    

	<logic:equal name="actualidadLaboralForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
	<logic:equal name="actualidadLaboralForm" property="flagConfirm" value="OKOK">
     <script type="text/javascript">
	alert("<bean:message key="actualidadLaboralForm.actualidadLaboralNew.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/actualidadLaboralSearch.do?event=actualidadLaboralSearch";
	</script>
    </logic:equal>
    <logic:equal name="actualidadLaboralForm" property="flagConfirm" value="OKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="actualidadLaboralForm.actualidadLaboralUpdate.ok.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/actualidadLaboralSearch.do?event=actualidadLaboralSearch";
	</script>
    </logic:equal>
    
    </div>
    </fieldset>
    </div>
    </div>
    
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <p><bean:message key='actualidadLaboralForm.title.grid.search'/></p>
    <span class="new"><html:link action="actualidadLaboralNew.do?event=aclNew" titleKey="actualidadLaboralForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table name="sessionScope.actualidadLaboralForm.aclSearchList" id="data" export="true"  requestURI="/actualidadLaboralSearch.do" pagesize="10" >
          <display:setProperty name="export.excel.filename" value="actualidadLaboralFormForm.xls" />
          <display:setProperty name="export.xml.filename" value="actualidadLaboralFormForm.xml" />
          <display:setProperty name="export.csv.filename" value="actualidadLaboralFormForm.csv" />
          <display:setProperty name="export.pdf.filename" value="actualidadLaboralFormForm.pdf" />
           
            <display:column property="intaclId" titleKey="actualidadLaboralForm.grid.id" sortable="true" class="hover1"/>
            <display:column property="strbolNombre" titleKey="actualidadLaboralForm.grid.boletin" sortable="true"  />
            <display:column property="straclTitulo" titleKey="actualidadLaboralForm.grid.titulo" sortable="true"  />
            <display:column property="straclNombre" titleKey="actualidadLaboralForm.grid.name" sortable="true"  />
            <display:column property="straclResumen" titleKey="actualidadLaboralForm.grid.resumen" sortable="true"  />
            <display:column property="straclEstado" titleKey="actualidadLaboralForm.grid.state" sortable="true"  />
            <display:column property="straclFile" titleKey="actualidadLaboralForm.grid.file" sortable="true"  />
     
            <display:column title="&nbsp;" sortable="true" url="/actualidadLaboralUpdate.do" paramId="event=aclUpdate&intaclId" paramProperty="intaclId" media="html" >
            <html:img width="20" height="20" titleKey="actualidadLaboralForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            <display:column title="&nbsp;" sortable="true" media="html">
            <html:link action="actualidadLaboralSearch.do?event=pefDelete&intaclId=${data.intaclId}" onclick="return aclActiveOrInactive();">
            <html:img width="20" height="20" title="${data.straclEstado}" page="/image/icon/${data.straclEstado}.png"></html:img>
            </html:link> 
            </display:column>
            
            <display:column title="&nbsp;" sortable="true" url="/actualidadLaboralPrevia.do" paramId="event=aclVistaPrevia&intaclId" paramProperty="intaclId" media="html" >
            <html:img width="20" height="20" titleKey="actualidadLaboralForm.grid.previa" page="/image/icon/page_pre.png"></html:img>
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