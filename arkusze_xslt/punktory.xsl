<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
        <head></head>
        <body>
            <xsl:apply-templates select="//pozycja" />
        </body>
    </html>

  </xsl:template>
  <xsl:template match="pozycja">
    <br /><b><xsl:value-of select="@okres" /></b><br />
    <xsl:for-each select="wartosc">
        (<xsl:number level="any" count="wartosc" format="1" />)
        <xsl:if test="../@okres = 'kwartał'">
          <xsl:number level="multiple" count="wartosc|pozycja" format="A-I." />
        </xsl:if>
        <xsl:if test="../@okres = 'miesiąc'">
          <xsl:number level="multiple" count="wartosc|pozycja" format="A-1." />
        </xsl:if>
        Wartość: <xsl:value-of select="." />
    </xsl:for-each>

  </xsl:template>

  <xsl:template match="nr_okresu">
      Wartość <xsl:number level="multiple" count="nr_okresu|pozycja" format="A 1." />
      (sprawozdanie nr <xsl:number level="any" count="nr_okresu" format="1" />
  </xsl:template>

</xsl:stylesheet>
