<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:variable name="email" select="email" />
	<xsl:variable name="password" select="password" />
	<xsl:variable name="fName" select="fName" />
	<xsl:variable name="sName" select="sName" />
	<xsl:variable name="dob" select="dob" />
	<xsl:variable name="bio" select="bio" />



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
					text-align:left;

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
				<title>Sign Up</title>
			</head>
			<body>
						<!-- Page layout -->
			
			
			<div class="heading">
			You are not logged in <br />
			<a href="login.jsp">Login</a> | <a href="register.jsp">Register</a> | <a href="account.jsp">My Account</a>
			
						<h1 class="h1">Registration</h1></div>
			<hr />
		<form action="welcome.jsp" method="POST">
				<table class="articles" align="center" padding="10px">
      	<tr><td>First Name:</td><td><input type="text" name="fName" value="{$fName}" size="35" required="true"></input></td></tr>
        <tr><td>Surname:</td><td><input type="text" name="sName" value="{$sName}" size="35" required="true"/></td></tr>
        <tr><td>Email:</td><td><input type="text" name="email" value="{$email}" size="35" required="true"></input></td></tr>
        <tr><td>Password:</td><td><input type="password" name="password" size="35" required="true"/></td></tr>
        <tr><td>Date of Birth:</td><td><input type="date" name="dob" size="35" placeholder="dd/mm/yyyy" value="{$dob}" min="01/01/1911" max="01/01/2001" required="true" /></td></tr>
		<tr><td>Favourite colour: </td><td><select name="bio" required="true">
			<option value="red">Red</option>
			<option value="green">Green</option>
			<option value="blue">Blue</option>
			<option value="yellow">Yellow</option>
			<option value="orange">Orange</option>
			<option value="pink">Pink</option>
		</select></td></tr>      </table>
      <br />
		<p> Click <a href="terms.jsp" target="_blank" >here</a> to view the terms and conditions of site use.</p>
		<br />
				<table class="articles" align="center" padding="10px">
		<tr>
			<td>Agree to TOS</td>
			<td>
				<input type="checkbox" name="{@name}" onclick="this.form['reg'].disabled=false" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td text-align="left">			
				<input type="submit" name="reg" value="     Register     " disabled="true" />
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
				<title>Sign Up</title>
			</head>
			<body>
						<!-- Page layout -->
			
				<div style="text-align: right;">
					You are not logged in
					<br />
					<a href="index.jsp">Index</a> | <a href="login.jsp">Login</a>
				</div>
				<h1>Registration</h1>
			</body>
			<xsl:apply-templates />
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
				<td>First name</td>
				<td>
					<input type="text" name="{@name}" required="true" />

				</td>
			</tr>
			<tr>
				<td>Last name</td>
				<td>
					<input type="text" name="{@name}" required="true" />

				</td>
			</tr>
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
		</table>
	</xsl:template>

	<xsl:template match="text">
		<input type="text" name="{@name}" required="true" />
	</xsl:template>

	<xsl:template match="password">
		<input type="password" name="{@name}" required="true" />
	</xsl:template>

<!--Opens terms page in a new tab-->
	<xsl:template match="terms">
		<br />
		<p> Click <a href="terms.jsp" target="_blank" >here</a> to view the terms and conditions of site use.</p>
		<br />
	</xsl:template>

	<xsl:template match="table2">
		<tr>
			<td>Agree to TOS</td>
			<td>
				<input type="checkbox" name="{@name}" onclick="this.form['reg'].disabled=false" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
		<xsl:apply-templates />
	</xsl:template>

<!--Disables submit button until terms agreed to- via checkbox selected-->
	<xsl:template match="submit">
		<tr>
			<td></td>
			<td>			
				<input type="submit" name="{@name}" value="Register" disabled="true" />
			</td>
		</tr>

	</xsl:template>

</xsl:stylesheet>