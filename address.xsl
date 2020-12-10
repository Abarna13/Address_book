<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body bgcolor="gray">
  <h1><center>ADDRESS BOOK</center></h1>
<table border="3" color="green">
<thead>
    <tr bgcolor="red">

	<th align="center">S.No</th>
	<th align="center">First Name</th>
	<th align="center">Last Name</th>
	<th align="center">D.O.B</th>
	<th align="center">Phone</th>
	<th align="center">Dno</th>
	<th align="center">Street</th>
	<th align="center">City</th>
 </tr>
</thead>
<xsl:for-each select="/addr/book">
    <tr bgcolor="white">
	<td align="center"><xsl:value-of select="sr" /></td>
	<td align="center"><xsl:value-of select="name/fname" /></td>
	<td align="center"><xsl:value-of select="name/lname" /></td>
	<td align="center"><xsl:value-of select="dob" /></td>
	<td align="center"><xsl:value-of select="phone" /></td>
	<td align="center"><xsl:value-of select="contact/dno" /></td>
	<td align="center"><xsl:value-of select="contact/street" /></td>
	<td align="center"><xsl:value-of select="contact/city" /></td>
    </tr>
</xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>