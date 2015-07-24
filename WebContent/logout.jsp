<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="logout.xsl"?>


							<!-- Implement page styles + elements from .xsl -->

<%
//clear session to logout
session.invalidate();%>

<page>


</page>