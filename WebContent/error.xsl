<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

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

					h1 {text-align: center;
					margin:25px;
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 34px;


					}

					p {
					text-align: center;
					font-size: 16px;
					padding-top: 5px;
					padding-right: 0px;
					padding-bottom: 5px;
					padding-left: 0px;

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
				<title>404: Resource Not Found</title>
			</head>
			<!-- Page layout -->
			
			<body>
				<h1>HTTP 404: The requested resource is not available.</h1>
<br />
				<p>The resource you are looking for may have been removed, had it's
					name changed, or does not exist</p>
				<p>
					Click <a href="index.jsp">here</a> to return to the home page.

				</p>
			</body>
			<br />
			<xsl:apply-templates />
		</html>
	</xsl:template>
</xsl:stylesheet>