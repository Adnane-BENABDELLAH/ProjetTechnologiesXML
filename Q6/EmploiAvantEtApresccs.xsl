<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    
    <xsl:template match="/">
        
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            
            <fo:layout-master-set>
                
                <fo:simple-page-master master-name="simple" 
                    page-height="18cm" page-width="35cm" 
                    margin-top="0.5cm" margin-bottom="1cm"
                    margin-left="0cm" margin-right="1cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
                <fo:page-sequence master-reference="simple">
                    <fo:flow flow-name="xsl-region-body">
                        <fo:block font-size="16pt"
                            font-family="sans-serif"
                            line-height="20pt"
                            text-align="center"
                            margin-bottom="0.5cm">EMPLOI DU TEMPS GINF2</fo:block>
                        <fo:block>
                            <xsl:for-each select="//Semaine">
                            <fo:table border="1pt solid black" text-align="center" border-spacing="10pt" table-layout="fixed">
                                <fo:table-column column-width="170px"/>
                                <fo:table-column column-width="250px" />
                                <fo:table-column column-width="250px" />
                                <fo:table-column column-width="250px" />
                                <fo:table-column column-width="250px" />
                                <fo:table-column column-width="250px" />
                                <fo:table-column column-width="230px" />
                                
                                <!-- HEADER -->
                                <fo:table-header>        
                                    <fo:table-row>
                                        <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1" number-columns-spanned="7">
                                            <xsl:if test="@num = 4">
                                            <fo:block text-align="center" font-weight="bold">
                                                4ème semaine (Avant CCS)
                                            </fo:block>
                                            </xsl:if>
                                            <xsl:if test="@num = 6">
                                                <fo:block text-align="center" font-weight="bold">
                                                    6ème semaine (Apres CCS)
                                                </fo:block>
                                            </xsl:if>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-header>
                                
                                <!-- BODY -->
                                <fo:table-body>
                                    <!-- 1er ligne -->
                                    <fo:table-row>
                                        <fo:table-cell padding="10pt" border="1pt solid black" background-color="#98bbed" number-rows-spanned="1">
                                            <fo:block text-align="center"  font-weight="bold">Jours</fo:block>
                                            <fo:block text-align="center"  font-weight="bold">Heures</fo:block>
                                        </fo:table-cell>
                                        
                                        <xsl:for-each select="./Heure[1]">
                                            <xsl:for-each select="./Jour">
                                                <fo:table-cell padding="10pt" border="1pt solid black" number-columns-spanned="1" background-color="#98bbed">
                                                    <fo:block font-weight="bold"><xsl:value-of select="@name" /></fo:block>
                                                    <fo:block font-weight="bold"><xsl:value-of select="@j"/>/<xsl:value-of select="@m" /></fo:block>
                                                </fo:table-cell> 
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </fo:table-row>
                                    
                                    <xsl:for-each select="./Heure">
                                        <fo:table-row>
                                            <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1" background-color="#98bbed">
                                                <fo:block text-align="center" margin-top="0.7cm" font-weight="bold"><xsl:value-of select="@duree" /></fo:block>
                                            </fo:table-cell>
                                            
                                            <xsl:for-each select="./Jour">
                                                <fo:table-cell  padding="10pt" border="1pt solid black" number-rows-spanned="1">
                                                    <xsl:choose>
                                                        <xsl:when test="Cours/@genre='CM'">
                                                            <fo:block background-color="#7865d6" border="1pt solid blue" ><xsl:value-of select="Cours" /></fo:block>
                                                        </xsl:when>
                                                        <xsl:when test="Cours/@genre='TP'">
                                                            <fo:block background-color="#7df0ad" border="1pt solid blue"><xsl:value-of select="Cours" /></fo:block>
                                                        </xsl:when>
                                                        <xsl:when test="Cours/@genre='TD'">
                                                            <fo:block background-color="#f8ff91" border="1pt solid blue"><xsl:value-of select="Cours" /></fo:block>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <fo:block><xsl:value-of select="Cours" /></fo:block>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                    <fo:block font-size="11pt" font-weight="bold"><xsl:value-of select="Matiere" /></fo:block>
                                                    <fo:block font-size="9pt" font-family="sans-serif"><xsl:value-of select="Prof" /></fo:block>
                                                    <fo:block font-size="7pt" font-family="sans-serif"><xsl:value-of select="Salle" /></fo:block>
                                                </fo:table-cell>
                                            </xsl:for-each>
                                        </fo:table-row>
                                    </xsl:for-each>
                                </fo:table-body>
                            </fo:table>
                            </xsl:for-each>
                        </fo:block>
                    </fo:flow>
                </fo:page-sequence>
                
            
            
        </fo:root>
        
    </xsl:template>
    
    
</xsl:stylesheet>