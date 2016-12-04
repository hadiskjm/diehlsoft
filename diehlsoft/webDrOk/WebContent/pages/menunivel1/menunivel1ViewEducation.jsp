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
<meta itemprop="name" content='${mecbean.strmecGoogleName}'>
<meta itemprop="description" content='${mecbean.strmecGoogleDescription}'>
<meta itemprop="image" content='${mecbean.strmecGoogleImage}'>

<!-- DrOk Healthcare Twitter Card data -->
<meta name="twitter:card" content='${mecbean.strmecTwitterCard}'>
<meta name="twitter:site" content='${mecbean.strmecTwitterSite}'>
<meta name="twitter:creator" content='${mecbean.strmecTwitterCreator}'>
<meta name="twitter:title" content='${mecbean.strmecTwitterTitle}'>
<meta name="twitter:description" content='${mecbean.strmecTwitterDescription}'>
<meta name="twitter:image" content='${mecbean.strmecTwitterImage}'>

<!-- DrOk Healthcare Open Graph data -->
<meta property="og:title" content='${mecbean.strmecOgTitle}' />
<meta property="og:type" content='${mecbean.strmecOgType}' />
<meta property="og:url" content='${mecbean.strmecOgUrl}' />
<meta property="og:image" content='${mecbean.strmecOgImage}' />
<meta property="og:description" content='${mecbean.strmecOgDescription}' />
<meta property="og:site_name" content='${mecbean.strmecOgSite_name}' />
   
</head>

<body>
<html:form action="menunivel1ViewCorp.do" method="post" styleId="menunivel1Form">

<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->

     <html:html>
     ${mecbean.strmecMenu}
      </html:html>


<!-- ================================================= -->
</div>
</div>
    </html:form>

	
</body>
</html>