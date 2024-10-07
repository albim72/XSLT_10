<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>Sprawozdanie</title>
                <link rel="stylesheet" href="out.css"></link>
            </head>
            <body>
                <h2>Okresy i kwoty</h2>
                <table border="1">
                    <tr>
                        <th>Nr okresu</th>
                        <th>Wartośc</th>
                        <th>Waluta</th>
                        <th>Okres</th>
                    </tr>
                    <xsl:for-each select="//pozycja">
                        <tr>
                            <td><xsl:value-of select="nr_okresu"></xsl:value-of></td>
                            <td><xsl:value-of select="wartosc"></xsl:value-of></td>
                            <td><xsl:value-of select="@waluta"></xsl:value-of></td>
                            <td><xsl:value-of select="@okres"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
