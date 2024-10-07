<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="//pozycja">
        <html>
            <head>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                OKRES: <xsl:value-of select="nr_okresu"></xsl:value-of>
                <br></br><br></br>
                KWOTA: <xsl:value-of select="wartosc"></xsl:value-of>
                <br></br>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
