<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:tp="http://www.plazi.org/taxpub"
>

<xsl:output method='html' version='1.0' encoding='utf-8' indent='yes'/>

<xsl:template match="/">
       <html>
            <head>
                <style type="text/css">	
body {
	margin: 10;
	padding: 10;	
	font-family: Arial, sans-serif;
}
               </style>
            </head>
            <body>

	<xsl:apply-templates />
	
	</body>
	</html>
</xsl:template>

<xsl:template match="//dataset">
	<h1><xsl:value-of select="title" /></h1>
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="abstract">
	<h2>Abstract</h2>
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="intellectualRights">
	<h2>Intellectual Rights</h2>
	<xsl:apply-templates />
</xsl:template>


<xsl:template match="additionalMetadata">
	<h2>Additional Metadata</h2>
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="metadata">
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="bibliography">
	<ul>
	<xsl:apply-templates />
	</ul>
</xsl:template>

<xsl:template match="citation">
<li>
	  <a>
  	<xsl:attribute name="href"><xsl:value-of select="@identifier"/></xsl:attribute>
  	<xsl:value-of select="." />
  </a>
  </li>
</xsl:template>


<!--
<additionalMetadata>
  <metadata>
    <gbif>
    <dateStamp>2016-08-18T17:50:40Z</dateStamp>
    <citation>International Barcode of Life project (iBOL)</citation>
    
    <bibliography>
    	<citation identifier="http://doi.org/10.1111/j.1471-8286.2007.01678.x">RATNASINGHAM, S., &amp; HEBERT, P. D. N. (2007, January 24). BARCODING: bold: The Barcode of Life Data System (http://www.barcodinglife.org). Molecular Ecology Notes. Wiley-Blackwell. http://doi.org/10.1111/j.1471-8286.2007.01678.x</citation>
    
    <citation identifier="http://doi.org/10.1371/journal.pone.0066213">Ratnasingham, S., &amp; Hebert, P. D. N. (2013, July 8). A DNA-Based Registry for All Animal Species: The Barcode Index Number (BIN) System. (D. Fontaneto, Ed.)PLoS ONE. Public Library of Science (PLoS). http://doi.org/10.1371/journal.pone.0066213</citation>

    </bibliography>
    
    </gbif>
  </metadata>
</additionalMetadata>
-->


<xsl:template match="para">
  <p>
	<xsl:apply-templates />
  </p>
</xsl:template>

<xsl:template match="ulink">
  <a>
  	<xsl:attribute name="href"><xsl:value-of select="@url"/></xsl:attribute>
  	<xsl:value-of select="citetitle" />
  </a>
</xsl:template>




</xsl:stylesheet>

  

