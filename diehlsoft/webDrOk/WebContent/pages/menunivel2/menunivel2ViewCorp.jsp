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

<!-- DrOk Healthcare para Google+ -->
<meta itemprop="name" content='${medbean.strmedGoogleName}'>
<meta itemprop="description" content='${medbean.strmedGoogleDescription}'>
<meta itemprop="image" content='${medbean.strmedGoogleImage}'>

<!-- DrOk Healthcare Twitter Card data -->
<meta name="twitter:card" content='${medbean.strmedTwitterCard}'>
<meta name="twitter:site" content='${medbean.strmedTwitterSite}'>
<meta name="twitter:creator" content='${medbean.strmedTwitterCreator}'>
<meta name="twitter:title" content='${medbean.strmedTwitterTitle}'>
<meta name="twitter:description" content='${medbean.strmedTwitterDescription}'>
<meta name="twitter:image" content='${medbean.strmedTwitterImage}'>

<!-- DrOk Healthcare Open Graph data -->
<meta property="og:title" content='${medbean.strmedOgTitle}' />
<meta property="og:type" content='${medbean.strmedOgType}' />
<meta property="og:url" content='${medbean.strmedOgUrl}' />
<meta property="og:image" content='${medbean.strmedOgImage}' />
<meta property="og:description" content='${medbean.strmedOgDescription}' />
<meta property="og:site_name" content='${medbean.strmedOgSite_name}' />
   
</head>

<body>
<html:form action="menunivel2ViewCorp.do" method="post" styleId="menunivel2Form">

<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->

     <html:html>
     ${medbean.strmedMenu}
      </html:html>


<!-- ================================================= -->
</div>
</div>
    </html:form>

	
</body>
</html>