<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="register.xsl"?>

							<!-- Implement page styles + elements from .xsl -->

<% 
//clear session
session.invalidate();%>

<page>

<form action="welcome.jsp" method="POST">

<table>
<text name="fName" />
<text name="sName" />
<text name="email" />
<password name="password" />
</table>

<terms />

<table2>
<submit name="reg" />
</table2>


</form>
</page>