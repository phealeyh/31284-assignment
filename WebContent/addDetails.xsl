<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:variable name="email" select="email" />
	<xsl:variable name="password" select="password" />
	<xsl:variable name="fName" select="fName" />
	<xsl:variable name="sName" select="sName" />
	<xsl:variable name="bio" select="bio" />
	<xsl:variable name="dob" select="dob" />


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
					background-color:"#FDFDFD";
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
				<title>Edit Details</title>
			</head>
			<body>

				<div class="heading">
					You are logged in
					<br />
					<a href="account.jsp">My Account</a> | <a href="logout.jsp">Logout</a>
					<h1 class="h1">Edit Details</h1>
				</div>
				<hr />
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>



	<xsl:template match="bio">
		<form action="account.jsp" method="POST">

			<p>Please enter your Date of Birth and brief Biography below.</p>

			<table class="articles" align="center" padding="10px">
				<tr>
					<td>First name</td>
					<td>
						<input type="text" name="fName" value="{$fName}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Last name</td>
					<td>
						<input type="text" name="sName" value="{$sName}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>
						<input type="text" name="email" value="{$email}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<input type="password" name="password" value="{$password}"
							required="true" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td>
						<input type="date" name="dob" placeholder="dd/mm/yyyy"
							value="{$dob}" min="01/01/1911" max="01/01/2001" required="true" />
					</td>
				</tr>
				<tr>
					<td>Biography</td>
					<td>
						<input type="text" size="85" name="bio" value="{$bio}"
							required="true" />
					</td>
				</tr>
				<tr>
					<td>Agree to TOS</td>
					<td>
						<input type="checkbox" name="tos" checked="true" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="Save" />
					</td>
				</tr>
			</table>
		</form>

	</xsl:template>

	<xsl:template match="full">
		<form action="account.jsp" method="POST">

			<table class="articles" align="center" padding="10px">
				<tr>
					<td>First name</td>
					<td>
						<input type="text" name="fName" value="{$fName}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Last name</td>
					<td>
						<input type="text" name="sName" value="{$sName}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>
						<input type="text" name="email" value="{$email}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<input type="password" name="password" value="{$password}"
							required="true" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td>
						<input type="date" name="dob" value="{$dob}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Biography</td>
					<td>
						<input type="text" name="bio" value="{$bio}" required="true" />
					</td>
				</tr>
				<tr>
					<td>Agree to TOS</td>
					<td>
						<input type="checkbox" name="tos" checked="true" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="     Save     " />
					</td>
				</tr>
			</table>
		</form>

	</xsl:template>


</xsl:stylesheet>