<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:m="http://shirtshop.com/Servizi/Ordini" >
  <xsl:template match="/">
  	<m:Ordini>
  		<xsl:apply-templates />
  	</m:Ordini>
  </xsl:template>
  <xsl:template match="Instance">
    <m:Ordine>
      <xsl:apply-templates select="oid|dataOraConferma"/>
    </m:Ordine>
  </xsl:template>
  <xsl:template match="oid">
    <m:oid>
      <xsl:copy-of select="text()"/>
    </m:oid>
  </xsl:template>
  <xsl:template match="dataOraConferma">
    <m:dataOraConferma>
      <xsl:copy-of select="concat(substring(child::text()[1],1,10),'T',substring(child::text()[1],12))"/>
    </m:dataOraConferma>
  </xsl:template>
</xsl:stylesheet>