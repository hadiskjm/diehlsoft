<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
  <div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<table width="100%">
  <!-- modificar de aqui para adelante -->
   <tr>
    <td class="generalTitulo"><bean:message key="reporteConsultarLicenciasArea.title"/></td>
    </tr> 
    <tr>
    <td ><hr class="generalLineHorizontal"/></td>
    </tr>
    <tr>
	</tr>
    <tr>
    <td width="100%">
    <!--height="500"
				width="1380"-->
	 
	<birt:viewer
        id="birtViewer"
        reportDesign="pages/licencias/reporteConsultarLicenciasArea.rptdesign"
        pattern="frameset"
        isHostPage="false"

        frameborder="0"
        scrolling="false"
        style="height:720px;width:100%;border-radius:25px; border:3px solid silver"
        format="html">
        </birt:viewer>		

    </td>
    </tr>
   <!-- mdoficar de aqui asia atras -->
</table>
</div></div>  
</body>
</html>