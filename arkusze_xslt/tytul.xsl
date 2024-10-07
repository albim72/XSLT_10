<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>strona z tytułem</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                <span style="color:red; font-size:14pt;">Tytuł sprawozdania:</span><br />
                <xsl:value-of select="sprawozdanie/tytul"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
