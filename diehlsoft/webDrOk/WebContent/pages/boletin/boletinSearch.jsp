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
	  var boletinForm = document.getElementById("boletinForm");
	  boletinForm.action="<%= request.getContextPath()%>/boletinSearch.do?event=bolSearch";
	  boletinForm.submit();
	  }
function bolDelete()
{
   return confirm("<bean:message key="boletinForm.search.confirm"/>");
}

	jQuery(function(){
		$("#strbolNombre").autocomplete("<%= request.getContextPath()%>/pages/boletin/boletinAutocomplete.jsp");
	});
   </script>
   
</head>
<body>
<html:form action="boletinSearch.do" method="post" styleId="boletinForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h4><bean:message key="boletinForm.title.search"/></h4>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="boletinForm.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
	<label><bean:message key="boletinForm.txt.strbolNombre"/>:</label>
	<html:text property="strbolNombre" styleId="strbolNombre" />
	<span  class="generalErrors"><html:errors property="strbolNombre"/></span>


  </div>
  
    <div class="cbp-mc-column50">
       
    <label><bean:message key="boletinForm.cbo.strbolEstado"/>:</label>
	<html:select property="strbolEstado">
     <html:optionsCollection label="strestNombre" property="bolModuloEstado" value="strestNombre" />
    </html:select>
    
	<logic:equal name="boletinForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
	<logic:equal name="boletinForm" property="flagConfirm" value="OKOK">
     <script type="text/javascript">
	alert("<bean:message key="boletinForm.boletinNew.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=boletinSearch";
	</script>
    </logic:equal>
    <logic:equal name="boletinForm" property="flagConfirm" value="OKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="boletinForm.boletinUpdate.ok.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=boletinSearch";
	</script>
    </logic:equal>
    
    </div>
    </fieldset>
    </div>
    
    <BR>
    <html:submit property="" styleClass="button green medium"  onclick="search()" ><bean:message key='boletinForm.btn.search'/></html:submit> 
    </div>
    
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <p><bean:message key='boletinForm.title.grid.search'/></p>
    <span class="new"><html:link action="boletinNew.do?event=bolNew" titleKey="boletinForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table name="sessionScope.boletinForm.bolSearchList" id="data" export="true"  requestURI="/boletinSearch.do" pagesize="10" >
          <display:setProperty name="export.excel.filename" value="boletinForm.xls" />
          <display:setProperty name="export.xml.filename" value="boletinForm.xml" />
          <display:setProperty name="export.csv.filename" value="boletinForm.csv" />
          <display:setProperty name="export.pdf.filename" value="boletinForm.pdf" />
           
            <display:column property="intbolId" titleKey="boletinForm.grid.id" sortable="true" class="hover1"/>
            <display:column property="strbolNombre" titleKey="boletinForm.grid.name" sortable="true"  />
            <display:column property="strbolFile" titleKey="boletinForm.grid.file" sortable="true"  />
     
            <display:column title="&nbsp;" sortable="true" url="/boletinUpdate.do" paramId="event=bolUpdate&intbolId" paramProperty="intbolId" media="html" >
            <html:img width="20" height="20" titleKey="boletinForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column title="&nbsp;" sortable="true" url="/actualidadLaboralSearch.do" paramId="event=actualidadLaboralSearch&intbolId" paramProperty="intbolId" media="html" >
            <html:img width="20" height="20" titleKey="boletinForm.grid.new" page="/image/icon/add.png"></html:img>
            </display:column>
            
            <display:column title="&nbsp;" sortable="true" media="html">
            <html:link action="boletinSearch.do?event=bolDelete&intbolId=${data.intbolId}" onclick="return bolDelete();">
            <html:img width="20" height="20" title="${data.strbolEstado}" page="/image/icon/${data.strbolEstado}.png"></html:img>
            </html:link> 
            </display:column>
                        
            <display:column title="&nbsp;" sortable="true" url="/actualidadLaboralVisorSend.do" paramId="event=aclVisorSend&intbolId" paramProperty="intbolId" media="html" >
            <html:img width="20" height="20" titleKey="boletinForm.grid.previa" page="/image/icon/page_pre.png"></html:img>
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