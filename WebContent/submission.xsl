<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:template match="page">
		<html>
			<head>
				<style>
											<!-- Page element styles -->
				
					body {
					text-align: center;
					margin:10px;
					background-color:#F7F7F7;
					font-family: "Helvetica
					Neue",Helvetica,Arial,sans-serif;
					font-size: 14px;

					}

					body.text
					{background-color:#333
					font-family: "Helvetica
					Neue",Helvetica,Arial,sans-serif;
					}

					table.articles {
					font-family:
					"Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 14px;
					padding-top: 5px;
					padding-right: 0px;
					padding-bottom: 5px;
					padding-left: 0px;
					}


					tr.text {
					font-family: "Helvetica
					Neue",Helvetica,Arial,sans-serif;
					font-size: 14px;
					padding:5px;
					}

					th {
					padding:5px;
					font-size: 16px;

					}

					tr {
					text-align:center;

					padding:5px;

					}

					td
					{
					padding:5px;
					text-align:center;

					}



					div.heading { text-align: right;
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 16px;
					background-color: #5F5F5F;
					padding-top: 15px;
					padding-right: 15px;
					padding-left: 15px;
					margin:5px;
					color:#F9F9F9 ;

					}

					h1 {text-align: left;
					margin:25px;
					font-family: "Helvetica
					Neue",Helvetica,Arial,sans-serif;
					font-size: 34px;
					padding-top: 5px;
					padding-right: 20px;
					padding-bottom: 5px;
					padding-left: 20px;


					}

					hr {
					color:#F9F9F9;
					margin-top: 10px;
					margin-bottom: 10px;
					border-width:
					2px 0px 0px;
					border-style: solid none none;
					border-color: #EEE
					-moz-use-text-color -moz-use-text-color;
					}
   </style>
				<title>Article Submission</title>
			</head>
			<body>
				<!-- Page layout -->

				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="account">
		<div class="heading">
			You are logged in
			<br />
			<a href="index.jsp">Index</a> | <a href="logout.jsp">Logout</a>

			<h1 class="h1">Article Submission</h1>
		</div>
	<!-- Submit button takes webpage to submissionAction.jsp page -->
		<form action="submissionAction.jsp" method="POST">
			<!-- Pass Id, Author, and Date to the next page. Problem -->
		<table class="articles" align="center">
			<tr><td>Title</td><td><input type="text" name="title" size="105"/></td></tr>
			<tr><td>Category</td><td>
			<select>
				  <option type="text" value="sciences" name="category">Sciences</option>
				  <option type="text" value="informationTechnology" name="category">Information Technology</option>
				  <option type="text" value="healthCare" name="category">Health Care</option>
				  <option type="text" value="architecture" name="category">Architecture</option>
			</select></td></tr>
			<tr><td>Abstract</td><td><textarea type="text" name="sText" style="height: 105px; width: 685px; " /></td></tr>
			<tr><td>Full Text</td><td><textarea type="text" name="text" style="height: 235px; width: 685px; " /></td></tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>			<input type="submit" value="        Submit        " />
				</td>
				<td></td>
			</tr>		
		</table>
		</form>
	</xsl:template>

	<xsl:template match="error">
		<div class="heading">
			You are not logged in
			<br />
			<a href="login.jsp">Login</a> | <a href="register.jsp">Register</a>

			<h1 class="h1">Article Submission</h1>
		</div>
		<hr />
		<div style="text-align: center;">
			<h2 text-align="center">
				You are unable to submit an article.
				<br />
				<br />
				Please <a href="login.jsp">log in</a> first then retry.
			</h2>
		</div>
	</xsl:template>

</xsl:stylesheet>