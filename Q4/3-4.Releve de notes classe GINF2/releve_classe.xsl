<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple" 
                    page-height="30cm" page-width="25cm" 
                    margin-top="0.5cm" margin-bottom="0.5cm"
                    margin-left="0.3cm" margin-right="0.5cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="16pt"
                        font-family="sans-serif"
                        line-height="20pt"
                        text-align="center"
                        margin-bottom="0.5cm">RELEVÉ DE NOTES GINF2</fo:block>
                    <fo:block>
                        <fo:table border="1pt solid black" text-align="center" border-spacing="10pt" table-layout="fixed">
                            <fo:table-column column-width="70px"/>
                            <fo:table-column column-width="120px" />
                            <fo:table-column column-width="120px" />
                            <fo:table-column column-width="180px" />
                            <fo:table-column column-width="180px" />
                            <fo:table-column column-width="180px" />
                            <fo:table-column column-width="180px" />
                            <fo:table-column column-width="120px" />
                            
                            <!-- HEADER -->
                            <fo:table-header>        
                                <fo:table-row>
                                    <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                                        <fo:block text-align="center" font-weight="bold">CNE</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                                        <fo:block text-align="center" font-weight="bold">FirstName</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                                        <fo:block text-align="center" font-weight="bold">LastName</fo:block>
                                    </fo:table-cell>
                                    <xsl:for-each select="//Note[1]/Module">
                                        <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                                            <fo:block text-align="center" font-weight="bold"><xsl:value-of select="@name" /></fo:block>
                                        </fo:table-cell>
                                    </xsl:for-each>
                                    <fo:table-cell padding="10pt" border="1pt solid black" background-color="#e6e4e1">
                                        <fo:block text-align="center" font-weight="bold">MOYENNE</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>
                            
                            <!-- BODY -->
                            <fo:table-body>
                                <!-- 1er ligne -->
                                <xsl:for-each select="//Note">
                                     <fo:table-row>
                                        <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                                            <fo:block text-align="center"><xsl:value-of select="./CNE" /></fo:block>
                                        </fo:table-cell>
                                         <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                                             <fo:block text-align="center"><xsl:value-of select="./FirstName" /></fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                                             <fo:block text-align="center"><xsl:value-of select="./LastName" /></fo:block>
                                         </fo:table-cell>
                                             <xsl:for-each select="./Module">
                                                 <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                                                     <fo:block text-align="center"><xsl:value-of select="@note" /></fo:block>
                                                 </fo:table-cell>
                                             </xsl:for-each>
                                         
                                         <fo:table-cell padding="10pt" border="1pt solid black" number-rows-spanned="1">
                                             <fo:block text-align="center" font-weight="bold">
                                                 <xsl:value-of select="(./Module[1]/@note + ./Module[2]/@note +./Module[3]/@note +./Module[4]/@note) div 4 "/>
                                             </fo:block>
                                         </fo:table-cell>
                                     </fo:table-row>
                                </xsl:for-each>
                                
                                <fo:table-row>
                                    <fo:table-cell padding="10pt" border="1pt solid black" number-columns-spanned="3" background-color="#e6e4e1">
                                        <fo:block text-align="center" font-weight="bold">MOYENNE PAR MODULE</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="10pt" border="1pt solid black">
                                        <fo:block text-align="center" font-weight="bold">
                                            <xsl:value-of select="((//Note[1]/Module[1]/@note) + (//Note[2]/Module[1]/@note) + (//Note[3]/Module[1]/@note)) div 3"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="10pt" border="1pt solid black">
                                        <fo:block text-align="center" font-weight="bold">
                                            <xsl:value-of select="((//Note[1]/Module[2]/@note) + (//Note[2]/Module[2]/@note) + (//Note[3]/Module[2]/@note)) div 3"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="10pt" border="1pt solid black">
                                        <fo:block text-align="center" font-weight="bold">
                                            <xsl:value-of select="((//Note[1]/Module[3]/@note) + (//Note[2]/Module[3]/@note) + (//Note[3]/Module[3]/@note)) div 3"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell padding="10pt" border="1pt solid black">
                                        <fo:block text-align="center" font-weight="bold">
                                            <xsl:value-of select="((//Note[1]/Module[4]/@note) + (//Note[2]/Module[4]/@note) + (//Note[3]/Module[4]/@note)) div 3"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
    
</xsl:stylesheet>