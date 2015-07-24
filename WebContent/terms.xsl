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
				<title>Terms and Conditions</title>
			</head>
			<body>

				<div class="heading">
					<h1 class="h1">Terms and Conditions</h1>
				</div>
				<hr />
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="terms">
		<!-- Page layout -->

		<form action="welcome.jsp" method="POST">

			<h2>1. Welcome</h2>
			This integrated digital platform provides long-term preservation and
			access to submitted academic journals and scholarly articles from
			around the world. This is a not-for-profit web service aiming to
			provide global access to scholarly articles for the preservation and
			expansion of knowledge within the global community.
			<br />
			<br />
			By using this platform you agree to these Terms and Conditions of
			Use:

			<h2>2. Users</h2>

			2.1 Access to content on this platform is available for the following
			users:
			<br />
			<br />
			(a) All individuals in the public domain
			<br />
			(b) Individual authors of scholarly articles and journals that have
			agreed to publish their works on this web platform
			<br />
			<br />
			2.2 Access to content on this platform may be restricted for the
			following reasons:
			<br />
			<br />
			(a) The author of the submitted works has decided to make their works
			only available to other scholarly authors

			<h2>3. Permitted Uses of the Content</h2>

			3.1 Users may search, view, display, download, and print content for
			the following Permitted Uses, provided they have been granted access
			to the works by the author, as detailed in section 2.2.
			<br />
			<br />
			(a) Individual or organisational research activities;
			<br />
			(b) Individual scholarly assignments
			<br />
			(c) Individual expansion of knowledge
			<br />

			<h2>4. Prohibited Uses of the Content</h2>
			Institutions and users may not:
			<br />
			<br />
			(a) Modify, obscure, or remove any copyright notice included in the
			Content;
			<br />
			(b) Distribute Content for monetary gain;
			<br />
			(c) Attempt to access Content that has been restricted by choice of
			the author.
			<br />

			<br />
			<br />
			Last Updated on May 11, 2015
		</form>
		
		<!--Closes current tab and returns to the previously opened registration 
			page -->
		<p>
			Click <a href="javascript:window.open('register.jsp','_self').close();">here</a> to return to the registration page.
		</p>


	</xsl:template>

</xsl:stylesheet>