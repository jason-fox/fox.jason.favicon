<?xml version="1.0" encoding="utf-8"?>
<!--
	This file is part of the DITA-OT Favicon Plug-in project.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  version="2.0"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="xs dita-ot"
>

  <xsl:param name="FAVICON" select="''"/>
  <xsl:param name="FAVICON_PATH" select="''"/>

	<xsl:template match="/ | @* | node()" mode="processHDF">
    <!--xsl:if test="string-length($HDFFILE) > 0">
      <xsl:apply-templates select="document($HDFFILE, /)" mode="add-HDF"/>
    </xsl:if-->


    <xsl:variable name="urltest">
      <xsl:call-template name="url-string">
        <xsl:with-param name="urltext">
          <xsl:value-of select="concat($FAVICON_PATH,$FAVICON)"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:variable>


    <xsl:variable name="relpath">
      <xsl:choose>
        <xsl:when test="$FILEDIR='.'">
          <xsl:text>.</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select=" replace($FILEDIR,'[^/]+','..')"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:choose>
      <xsl:when test="$urltest = true()">
        <link rel="shortcut icon" href="{$FAVICON_PATH}{$FAVICON}"/>
      </xsl:when>
      <xsl:otherwise>
        <link rel="shortcut icon" href="{$relpath}/{$FAVICON_PATH}{$FAVICON}"/>
      </xsl:otherwise>
    </xsl:choose>

    <xsl:next-match/>  
  </xsl:template>
</xsl:stylesheet>
