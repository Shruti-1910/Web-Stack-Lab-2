<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Employee List</title>
        </head>
        <body>
            <h1>Employee List</h1>
            <table border="1">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>DOB</th>
                    <th>Age</th>
                    <th>Gender</th>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Position</th>
                    <th>Salary</th>
                </tr>
                <tr>
                    <th>Email</th>
                    <th>Phone Number</th>
                </tr>
                <xsl:for-each select="employees/employee">
                <tr>
                 <td><xsl:value-of select="First Name"/></td>
              <td><xsl:value-of select="Last Name"/></td>
              <td><xsl:value-of select="DOB"/></td>
              <td><xsl:value-of select="Age"/></td>
              <td><xsl:value-of select="Gender"/></td>
            </tr>
            <tr>
                 <td><xsl:value-of select="ID"/></td>
              <td><xsl:value-of select="Position"/></td>
              <td><xsl:value-of select="Salary"/></td>
            </tr>
            <tr>
                <td><xsl:value-of select="email"/></td>
                <td><xsl:value-of select="Phone Number"/></td>
              </tr>
            </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
    </xsl:stylesheet>