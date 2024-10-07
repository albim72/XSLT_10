<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <xsl:output method="html"/>

  <xsl:attribute-set name="atrybuty">
    <xsl:attribute name="style">
        color:white; background-color:black; font-size:14pt;
    </xsl:attribute>
    <xsl:attribute name="height">50</xsl:attribute>
    <xsl:attribute name="width">50</xsl:attribute>
    <xsl:attribute name="align">center</xsl:attribute>
  </xsl:attribute-set>

  <xsl:template match="/">
    <html>
        <head></head>
        <body>
          
            <table xsl:use-attribute-sets = "atrybuty">
                <tr>
                    <td><xsl:value-of select="//autor[1]/imie" /></td>
                    <td><xsl:value-of select="//autor[1]/nazwisko" /></td>
                </tr>
                <tr>
                    <td><xsl:value-of select="//autor[2]/imie" /></td>
                    <td><xsl:value-of select="//autor[2]/nazwisko" /></td>
                </tr>
            </table>
        </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
