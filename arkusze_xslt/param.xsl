<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
        <head></head>
        <body>
          <xsl:apply-templates select="//pozycja[1]">
            <xsl:with-param name="osoba" select="1"></xsl:with-param>
          </xsl:apply-templates>

          <xsl:apply-templates select="//pozycja[2]">
            <xsl:with-param name="osoba" select="2"></xsl:with-param>
          </xsl:apply-templates>

        </body>
    </html>

  </xsl:template>

  <xsl:template match="pozycja">
    <xsl:param name="osoba">
      <xsl:value-of select="1"></xsl:value-of>
    </xsl:param>
    <xsl:value-of select="//autor[$osoba]"></xsl:value-of>
    <br/>
    <xsl:value-of select="wartosc"></xsl:value-of>
    <br />
  </xsl:template>



</xsl:stylesheet>
