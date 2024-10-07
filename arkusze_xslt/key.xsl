<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:key name="indeks_okres" match="//dane/pozycja" use="@okres"></xsl:key>
    <xsl:template match="/">
        <html>
            <head>
                <title>strona z kluczem</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                <xsl:apply-templates select="//autorzy/"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="autorzy">
        <xsl:for-each select="autor">
            <xsl:value-of select="imie"></xsl:value-of>
            <xsl:text>  </xsl:text>
            <xsl:value-of select="nazwisko"></xsl:value-of>
            <br/>
            <xsl:for-each select="key('index_okres','miesiąc')">
                OKRES: <xsl:value-of select="nr_okresu" /><br/>
                KWOTA: <xsl:value-of select="wartosc" /><br/>
            </xsl:for-each>
        </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>
