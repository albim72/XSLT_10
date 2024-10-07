<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:decimal-format name="cyfra1" digit="X" grouping-separator=" " decimal-separator="," />
    <xsl:decimal-format name="cyfra2" digit="X" grouping-separator="," decimal-separator="," />
    <xsl:template match="/">
        <html>
            <head>
                <title>strona z formatami</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                1). <xsl:value-of select="format-number(12345,'#.0')"/><br/>
                2). <xsl:value-of select="format-number(0.12345,'##%')"/><br/>
                3). -> <xsl:value-of select="//pozycja[3]/wartosc"/><br/>
                4). <xsl:value-of select='format-number(//pozycja[3]/wartosc,"X XXX XXX,00","cyfra1")'/><br/>
                5). <xsl:value-of select='format-number(//pozycja[3]/wartosc,"X,XXX,XXX,00","cyfra2")'/><br/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
