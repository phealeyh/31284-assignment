<%@page contentType="application/xml" import="uts.wsd.*"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="index3.xsl"?>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<% String filePath2 = application.getRealPath("WEB-INF/articles.xml"); %>
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication" scope="application">
    <jsp:setProperty name="articlesApp" property="filePath" value="<%=filePath2%>"/>
</jsp:useBean>

<page>

<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
%>

<logged-in />

<%
	} else {
%>

<logged-out />

<%
	}
%>




<c:import var="xml" url="WEB-INF/articles.xml"/>
<c:import var="xslt" url="index3.xsl"/>
<x:transform xml="${xml}" xslt="${xslt}"/>

</page>
