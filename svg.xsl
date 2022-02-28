<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title></title>
        </head>
        <body><xsl:apply-templates/></body>
    </html>
</xsl:template>
<xsl:template match="графика">
    <svg>
        <xsl:attribute name="width">
            <xsl:value-of select="@ширина"/>
        </xsl:attribute>
        <xsl:attribute name="height">
            <xsl:value-of select="@высота"/>
        </xsl:attribute>
        <xsl:apply-templates/>
    </svg>
</xsl:template>
<xsl:template match="эллипс">
    <ellipse>
        <xsl:attribute name="id">
            <xsl:value-of select="@id"/>
        </xsl:attribute>
        <xsl:attribute name="cx">
            <xsl:value-of select="@cx"/>
        </xsl:attribute>
        <xsl:attribute name="cy">
            <xsl:value-of select="@cy"/>
        </xsl:attribute>
        <xsl:attribute name="rx">
            <xsl:value-of select="@rx"/>
        </xsl:attribute>
        <xsl:attribute name="ry">
            <xsl:value-of select="@ry"/>
        </xsl:attribute>
        <xsl:attribute name="style"><xsl:text>fill:</xsl:text><xsl:value-of select="@заливка" /><xsl:text>;stroke:</xsl:text>
        <xsl:value-of select="@ободок" /><xsl:text>;stroke-width:</xsl:text><xsl:value-of select="@ширина-ободка" /><xsl:text>;</xsl:text>
        </xsl:attribute>
    </ellipse>
</xsl:template>
</xsl:stylesheet>