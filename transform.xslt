<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.topografix.com/GPX/1/1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd">

  <xsl:output indent="yes" method="xml"/>

  <xsl:template match="/">
    <gpx version="1.1">
      <xsl:apply-templates/>
    </gpx>
  </xsl:template>

  <xsl:template match="/api/query/pages/page">
    <wpt>
      <xsl:attribute name="lat">
        <xsl:value-of select="coordinates/co/@lat" />
      </xsl:attribute>
      <xsl:attribute name="lon">
        <xsl:value-of select="coordinates/co/@lon" />
      </xsl:attribute>
      <link>
        <xsl:attribute name="href">
          <xsl:value-of select="concat(imageinfo/ii/@url, '#.jpg')" />
        </xsl:attribute>
        <type>image/jpeg</type>
      </link>
    </wpt>
  </xsl:template>

</xsl:stylesheet>
