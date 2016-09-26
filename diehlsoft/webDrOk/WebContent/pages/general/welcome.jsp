<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
function Cerrar()
{	 
return confirm("Esta seguro  de cerrar sesión?");
}
</script>

</head>
<body >
  <div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<div class="generalBienvenido">
<bean:message key="menu.title"/>&nbsp;
<bean:write name="usuario" property="strNombreCompleto"/>
 </div>
 </div>
 </div>
</body>
</html>