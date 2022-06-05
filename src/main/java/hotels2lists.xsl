<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent = "yes"/>
    <xsl:template match="/">
            <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="/">
        <Lists>
        <Names>
            <xsl:variable name="nameWithHilton">Hilton</xsl:variable>
            <xsl:variable name="place1">NY</xsl:variable>
            <xsl:variable name="place2">New York</xsl:variable>
            <xsl:for-each select="Hotels/Hotel">
            <xsl:variable name="nameOfHotel"><xsl:value-of select="Name"/></xsl:variable>
                <xsl:variable name="city"><xsl:value-of select="Address/City"/></xsl:variable>
            <xsl:if test="contains($nameOfHotel,$nameWithHilton)">
                <xsl:if test="contains($city,$place1) or contains($city, $place2)">
                <Name>
            <xsl:value-of select="Name"/>
                </Name>
            </xsl:if>
            </xsl:if>
            </xsl:for-each>
        </Names>
            <Prices>
                <xsl:variable name="nameWithHilton">Hilton</xsl:variable>
                <xsl:variable name="place1">NY</xsl:variable>
                <xsl:variable name="place2">New York</xsl:variable>
                <xsl:for-each select="Hotels/Hotel">
                    <xsl:variable name="nameOfHotel"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="city"><xsl:value-of select="Address/City"/></xsl:variable>
                    <xsl:if test="contains($nameOfHotel,$nameWithHilton)">
                        <xsl:if test="contains($city,$place1) or contains($city, $place2)">
                            <Price>
                                <xsl:value-of select="@Price"/>
                            </Price>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </Prices>
        <Addresses>
            <xsl:variable name="nameWithHilton">Hilton</xsl:variable>
            <xsl:variable name="place1">NY</xsl:variable>
            <xsl:variable name="place2">New York</xsl:variable>
            <xsl:for-each select="Hotels/Hotel">
                <xsl:variable name="nameOfHotel"><xsl:value-of select="Name"/></xsl:variable>
                <xsl:variable name="city"><xsl:value-of select="Address/City"/></xsl:variable>
                <xsl:if test="contains($nameOfHotel,$nameWithHilton)">
                    <xsl:if test="contains($city,$place1) or contains($city, $place2)">
                    <Address>
                        <xsl:value-of select="Address/AddressLine"/>
                    </Address>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
        </Addresses>
        </Lists>
    </xsl:template>

</xsl:stylesheet>