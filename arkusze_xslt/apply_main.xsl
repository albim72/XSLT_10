<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>wzorce</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                <xsl:apply-templates select="//pozycja"></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pozycja[1]">
        Pozycja 1 -- okres: <xsl:value-of select="nr_okresu"></xsl:value-of>
        <br></br><br></br>
    </xsl:template>
    <xsl:template match="pozycja[2]">
        Pozycja 2 -- okres: <xsl:value-of select="nr_okresu"></xsl:value-of>
        <br></br><br></br>
    </xsl:template>
    <xsl:template match="pozycja[3]">
        Pozycja 3 -- okres: <xsl:value-of select="nr_okresu"></xsl:value-of>
        <br></br><br></br>
    </xsl:template>
</xsl:stylesheet>
