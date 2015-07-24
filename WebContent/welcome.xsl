<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:template match="page">
		<html>
			<head>
				<style>
											<!-- Page element styles -->
				
					body {
					text-align: left;
					margin:10px;
					background-color:#F7F7F7;
					font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
					font-size: 14px;

					}

					body.text {background-color:#333
					font-family:
					"Helvetica
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
					font-family:
					"Helvetica Neue",Helvetica,Arial,sans-serif;
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
					font-family: "Helvetica
					Neue",Helvetica,Arial,sans-serif;
					font-size: 16px;
					background-color:
					#5F5F5F;
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
					border-color: #EEE
					-moz-use-text-color -moz-use-text-color;
					}
		</style>
				<title>Welcome</title>
			</head>
			<body>
				<!-- Page layout -->

				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="welcome">

		<form action="account.jsp" method="POST">
			<div class="heading">
				You are logged in
				<br />
				<a href="account.jsp">My Account</a> | <a href="logout.jsp">Logout</a>
				<h1 class="h1">Thanks for Signing Up</h1>
			</div>
			<hr />

			<br />
			<p> Welcome, </p>
			<p>
				You will soon have access to a wide range of scholarly articles
				ranging many topics over many categories.
				<br />
				By signing up, you have been granted access to:
				<br />
			</p>

			<ul>
				<li>Submit scholarly works such as articles and journals;</li>
				<li>Access submitted content that is restricted to viewing by other
					registered authors.</li>
			</ul>
			<br />

			<p>
				Click <a href="account.jsp">here</a> to access your account.
			</p>

		</form>
	</xsl:template>

	<xsl:template match="account">
		<h1> Details already exists on our servers.</h1>
		<p>
			<br />
			Click <a href="register.jsp">here</a> to try again using another email address.
		</p>
	</xsl:template>

</xsl:stylesheet>