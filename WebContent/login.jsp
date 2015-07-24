<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="login.xsl"?>


							<!-- Implement page styles + elements from .xsl -->

<%
//clear session to log in
session.invalidate();%>



<page>


							<!-- Submit data to loginAction.jsp -->
<form action="loginAction.jsp" method="POST">

<table>
<text name="email" />
<password name="password" />
<submit name="login" value="Submit" />

</table>

</form>


</page>