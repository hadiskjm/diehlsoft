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


 
</head>

<body >

<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->

     <div align="center" >
     
     <div align="center">
     <html:img page="/image/manerror.gif" styleClass="img100"/>
     </div>
     <br>
     <br>
     
      <div class="content" align="center" style="background: black;">
       
            <svg viewBox="0 0 600 300">

                <!-- Symbol -->
                <symbol id="s-text">
                    <text text-anchor="middle" x="50%" y="50%" dy=".35em">
                       
    <bean:message key="error.errors.pagenotfound"/>
                 </text>
                </symbol>

                <!-- Duplicate symbols -->
                <use xlink:href="#s-text" class="text"></use>
                <use xlink:href="#s-text" class="text"></use>
                <use xlink:href="#s-text" class="text"></use>
                <use xlink:href="#s-text" class="text"></use>
                <use xlink:href="#s-text" class="text"></use>

            </svg>
            
        </div>
       
     </div>

<!-- ================================================= -->
</div>
</div>

   	  
</body>
</html>