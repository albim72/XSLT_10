<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>apply-mode</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                <xsl:apply-templates select="//autorzy" mode="drugi"></xsl:apply-templates><br/>
                <xsl:apply-templates select="//autorzy" mode="pierwszy"></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="autorzy" mode="pierwszy">
        <i>
            <xsl:value-of select="autor[1]/imie"></xsl:value-of>
            <xsl:text>  </xsl:text>
            <xsl:value-of select="autor[1]/nazwisko"></xsl:value-of>
        </i>
    </xsl:template>
    <xsl:template match="autorzy" mode="drugi">
        <i>
            <xsl:value-of select="autor[2]/imie"></xsl:value-of>
            <xsl:text>  </xsl:text>
            <xsl:value-of select="autor[2]/nazwisko"></xsl:value-of>
        </i>
    </xsl:template>
</xsl:stylesheet>
