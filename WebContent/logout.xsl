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
					text-align: center;
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
					padding-top: 5px;
					padding-right: 20px;
					padding-bottom: 5px;
					padding-left: 20px;


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
				<title>You have been logged out</title>
			</head>
			<body>
						<!-- Page layout -->
			
				<div class="heading">You are not logged in
					<br />
					<a href="register.jsp">Register</a> | <a href="login.jsp">Login</a>
				<br />
				<br />
				<h1 class="h1">You have been logged out.</h1></div>
				
				<br />
				<p>Click <a href="index.jsp">here</a> to return to search through publicly available articles.</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>