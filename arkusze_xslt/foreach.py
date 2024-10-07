<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>strona z pętlą</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
               <xsl:apply-templates select="//dane/"></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="dane">
        <xsl:for-each select="pozycja">
            <xsl:sort data-type="number" order="descending" select="wartosc"></xsl:sort>
            <br></br><br></br>
            Kwota rozliczenia: <xsl:value-of select="wartosc"></xsl:value-of>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
