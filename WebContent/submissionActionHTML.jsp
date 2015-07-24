<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Article Submission</title>
</head>
<body>

<form>
<% String filePath = application.getRealPath("WEB-INF/articles.xml"); %>
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication" scope="application">
    <jsp:setProperty name="articlesApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	
// Problem: increment id to be assigned for new created article
Integer id = Integer.parseInt(request.getParameter("id"));
// Passed value from submission.jsp file equalling variables of created article
String author = request.getParameter("author");
String date = request.getParameter("date");
String title = request.getParameter("title");
String category = request.getParameter("category");
String sText = request.getParameter("sText");
String text = request.getParameter("text");

// Gets list of articles
Articles articles = articlesApp.getArticles();
// Creates new object article of submitted article
Article article = (Article)session.getAttribute("article");
article = new Article(id, author, date, title, category, sText, text);
// Add article to article array list
articles.addArticle(article);
articlesApp.setArticles(articles);
session.setAttribute("article",article);
%>

<div style="text-align: right;">You are logged in as <%=user.getName()%>
</div>
<div style="text-align: right;"><a href="index.jsp">Index</a> | <a href="logout.jsp">Logout</a></div>

<h1>Article Submission</h1>
<p>Click <a href="account.jsp">here</a> to view your submitted article</p>
</form>
<%
	} else {
%>

<div style="text-align: right;">You are not logged in <br>
<a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Invalid Article Submission</title>
</head>
<body>

</body>
</html>
<div style="text-align: center;">
<h2> You are unable to submit an article. <br></br>
Please <a href="login.jsp">log in</a> first then retry.
</h2>
</div>
<%
	}
%>


</body>
</html>