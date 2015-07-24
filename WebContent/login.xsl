<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:variable name="email" select="email" />
	<xsl:variable name="password" select="password" />

	<xsl:template match="page">
		<html>
			<head>
				<style>
											<!-- Page element styles -->
				
					body {
					margin:10px;
					background-color:#F7F7F7;
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 14px;

					}

					body.text {background-color:#333
					font-family: "Helvetica
					Neue",Helvetica,Arial,sans-serif;
					}

					table.articles {
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 14px;
					padding-top: 5px;
					padding-right: 0px;
					padding-bottom: 5px;
					padding-left: 0px;
					}

					tr.text {
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
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

					td {
					font-size: 16px;
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
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 34px;


					}

					hr {
					color:#F9F9F9;
					margin-top: 10px;
					margin-bottom: 10px;
					border-width: 2px 0px 0px;
					border-style: solid none none;
					border-color: #EEE -moz-use-text-color -moz-use-text-color;
					}
		
		
		
		
		</style>
				<title>Log In</title>
			</head>
			<body>
				<!-- Page layout -->

				<div class="heading">
					You are not logged in
					<br />
					<a href="index.jsp">Index</a> | <a href="register.jsp">Register</a>

					<h1 class="h1">Log In</h1>
				</div>
				<hr />
				<form action="loginAction.jsp" method="POST">
					<table class="articles" align="center" padding="10px">
						<tr>
							<td>Email:</td>
							<td>
								<input type="text" name="email" value="{$email}" size="35" required="true"></input>
							</td>
						</tr>
						<tr>
							<td>Password:</td>
							<td>
								<input type="password" name="password" size="35" required="true" />
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<input type="submit" value="   Submit   " required="true" />
							</td>
						</tr>
					</table>
				</form>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="page2">
		<html>
			<head>
				<title>Log In</title>
			</head>
			<body>
				<!-- Page layout -->

				<div style="text-align: right;">
					You are not logged in <br />
					<a href="index.jsp">Index</a> | <a href="register.jsp">Register</a>
				</div>
				<h1>Log In</h1>
				<br />
				<xsl:apply-templates />
			</body>

		</html>
	</xsl:template>

	<xsl:template match="form">
		<form action="{@action}" method="{@method}">
			<xsl:apply-templates />
		</form>
	</xsl:template>

	<xsl:template match="table">
		<table>
			<tr>
				<td>Email</td>
				<td>
					<input type="text" name="{@name}" required="true" />
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>
					<input type="password" name="{@name}" required="true" />
				</td>
			</tr>
			<xsl:apply-templates select="submit" />
		</table>
	</xsl:template>

	<xsl:template match="text">
		<input type="text" name="{@name}" required="true" />
	</xsl:template>

	<xsl:template match="password">
		<input type="password" name="{@name}" required="true" />
	</xsl:template>

	<xsl:template match="submit">
		<tr>
			<td></td>
			<td>
				<input type="submit" name="{@name}" value="{@value}" />
			</td>
		</tr>
	</xsl:template>


</xsl:stylesheet>