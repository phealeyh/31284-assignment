<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="submission.xsl"?>

							<!-- Implement page styles + elements from .xsl -->

<page>
<%
//get user object from session details
	User user = (User) session.getAttribute("user");
//if user exists
	if (user != null) {
%>

<account />


<% %>
<%-- I already have it to only submit article if logged in.

Add table here to include fields for entry: (follow .xml specs)
==needs validation as per marking scheme and use required spec (check register.jsp for examples)

- title
- author / get logged in authors name
- date /get todays date
- category /drop-down box -make sure to include Sciences,Information Technology,Health Care,Architecture
- abstract
- text //full article - later to be able to include gibberish lorem ipsum using REST web service (3rd section of assignment)

- submit button

-- save article to xml
--testing:
--return back to account.jsp page that displays updated list of submitted articles from author
--check index.jsp page that displays updated list of articles

=use JAXB or DOM/ from 2 weeks ago lab = google will help heaps
 --%>
 
<%
//if user does not exist
//must be logged in to submit articles
	} else {
%>

<error />

<%
	}
%>
</page>