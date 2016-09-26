<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<html>
<head>
</head>
<body>
<div class="containerFooter clearfix">
	<div id="footercont" class="bodycontainer clearfix">
	
	  <div class="mainForm">
				<div class="cbp-mc-form">
			        
			        <div class="cbp-mc-column25">
    
					<h2>CONTACTO</h2>
					<br>
					<p><bean:message key="footer.direccion"/></p>
					<br>
					<p style="font-weight: bold;"><bean:message key="footer.correo"/></p>
					<br>
					<p><bean:message key="footer.telefononame"/></p>
					<p><bean:message key="footer.telefono"/></p>
                   </div>
                   
                   <div class="cbp-mc-column25">
    
					<span><a href="http://www.drokhealthcare.com"><html:img border="0" align="right" page="/image/logo2.png"/></a></span>
                   
                   </div>
                   
					<div class="cbp-mc-column50">
    
					<span class="new"><html:img border="0" align="right" page="/image/logo48.png"/></span>
					<br>
					<h6><bean:message key="footer.copyright"/></h6>

                   </div>
    
    </div>
    
    </div>


</div>
</div>
</body>
</html>