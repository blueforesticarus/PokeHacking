<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">

<xsl:apply-templates select="emlib" />

</xsl:template>

<xsl:template match="emlib">

<html>
 <head>
  <title><xsl:value-of select="@name" /></title>
 </head>
 <body>
  <font face="Tahoma" size="2">

   <h1> <xsl:value-of select="@name" /> </h1>

<xsl:value-of select="readme" />
<xsl:apply-templates select="library" />

   <hr />

<xsl:apply-templates select="lastupdate" />

  </font>
 </body>
</html>
	
</xsl:template>

<xsl:template match="library">

   <h3> <xsl:value-of select="@name"/> </h3>

<xsl:for-each select="item">
  
   <img align="left"> <xsl:attribute name="src"><xsl:value-of select="@id" />.bmp</xsl:attribute> </img>
   <b> <xsl:value-of select="@name"/> </b> - <xsl:value-of select="@aka"/> <br />
   Author: <xsl:value-of select="@author"/> <br />
   Base: <xsl:value-of select="@base"/> <br />
   Fun Fact: <xsl:value-of select="@fact"/> <br />

</xsl:for-each>

</xsl:template>

<xsl:template match="lastupdate">
 <font size="1">Last update: <xsl:value-of select="@timestamp" /></font>
</xsl:template>

</xsl:stylesheet>

