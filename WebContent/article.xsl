<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nsm="http://www.uts.edu.au/31284/wsd-articles"
	exclude-result-prefixes="nsm">

	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
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
				<title>Viewing Article</title>
			</head>
			<body>
				<div class="heading">
					<a href="login.jsp">Login</a> | <a href="register.jsp">Register</a> | <a href="account.jsp">My Account</a>
					<h1 class="h1">Viewing Article</h1>
				</div>
				<hr />

				<table class="articles" border="1">
					<thead>
						<tr bgcolor="#EAEAEA" padding="5px">
							<th>Author</th>
							<th>Date</th>
							<th>Title</th>
							<th>Category</th>
							<th>Text</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="nsm:articles/nsm:article">
							<tr bgcolor="#FDFDFD" padding="5px">
								<td>
									<a href="author.jsp?author={nsm:author}">
										<xsl:value-of select="nsm:author" />
									</a>
								</td>
								<td>
									<xsl:value-of select="nsm:date" />
								</td>
								<td>
									<xsl:value-of select="nsm:title" />
								</td>
								<td>
									<xsl:value-of select="nsm:category" />
								</td>
								<td>
									<xsl:value-of select="nsm:text" />
								</td>
							</tr>
						</xsl:for-each>

					</tbody>
				</table>
				<p class="text" align="center">Click <a href="index.jsp">here</a> to return to the home page.
				</p>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>