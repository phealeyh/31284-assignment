<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nsm="http://www.uts.edu.au/31284/wsd-articles"
	exclude-result-prefixes="nsm">

	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<html>
			<head>
				<title>Articles Search</title>				
			</head>
			<body>			
							<h1>Articles Search</h1>

				<table border="1">
					<thead>
						<tr bgcolor="#EAEAEA">
							<th>Author</th>
							<th>Date</th>
							<th>Title</th>
							<th>Category</th>
							<th>Text</th>
						</tr>
					</thead>
					<tbody>
						<xsl:apply-templates />
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="nsm:articles/nsm:article">
		<tr bgcolor="#FDFDFD">
			<xsl:apply-templates />
		</tr>
	</xsl:template>

	<xsl:template match="nsm:author">
		<td>
			<a href="author.jsp?author={nsm:author}"><xsl:apply-templates /></a>
		</td>
	</xsl:template>

	<xsl:template match="nsm:date">
		<td>
			<xsl:apply-templates />
		</td>
	</xsl:template>

	<xsl:template match="nsm:title">
		<td>
			<xsl:apply-templates />
		</td>
	</xsl:template>

	<xsl:template match="nsm:category">
		<td>
			<xsl:apply-templates />
		</td>
	</xsl:template>

	<xsl:template match="nsm:sText">
		<td>
			<xsl:apply-templates />
			<br />
			<a href="article.jsp?articleID={@id}">Read More</a>
		</td>
	</xsl:template>

	<xsl:template match="nsm:text" />

</xsl:stylesheet>