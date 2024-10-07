<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
        <head></head>
        <body>
            Autorzy sprawozdania:<br></br> <xsl:apply-templates select="//autor" />

        </body>
    </html>

  </xsl:template>

  <xsl:template match="autor">
    <xsl:value-of select='imie' /><xsl:text> </xsl:text> <xsl:value-of select="nazwisko" /><br></br>
    <xsl:if test="not(position()=last())"></xsl:if>

  </xsl:template>
</xsl:stylesheet>
