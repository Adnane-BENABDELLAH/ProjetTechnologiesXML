<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
    
    <fo:layout-master-set>
        <fo:simple-page-master master-name="simpleA4" page-height="21cm" 
                               page-width="29.7cm" margin-top="0.5cm" 
                               margin-bottom="0.5cm" margin-left="0.5cm" 
                               margin-right="0.5cm">
            <fo:region-body background-color="#f2d75e"/>
        </fo:simple-page-master>
    </fo:layout-master-set>
    <fo:page-sequence master-reference="simpleA4">
        <fo:flow flow-name="xsl-region-body">
            
            <fo:block>
                <fo:table text-align="center" table-layout="fixed">
                    <fo:table-column column-width="9cm"/>
                    <fo:table-column column-width="10.7cm"/>
                    <fo:table-column column-width="9cm"/>
                    <fo:table-header>
                        <fo:table-row >
                            <fo:table-cell>
                                <fo:block margin-top="1.5cm" margin-right="1cm">
                                    <fo:external-graphic src="uae.png"  content-height="scale-to-fit" height="1.20in"  content-width="1.20in"/>
                                    
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-columns-spanned="1">
                                <fo:block font-size="10pt"
                                    font-family="sans-serif"
                                    line-height="18pt"
                                    margin-top="2cm"
                                    margin-bottom="1.5cm"
                                    text-align="center">
                                    Université de Abdelmalik Assaadi
                                </fo:block>
                                <fo:block font-size="20pt"
                                    font-family="sans-serif"
                                    line-height="24pt"
                                    margin-bottom="2.5cm"
                                    text-align="center"
                                    font-weight="bold">ATTESTATION DE RÉUSSITE
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block margin-top="2cm" margin-left="2cm">
                                    <fo:external-graphic src="ensa.png"  content-height="scale-to-fit" height="1.20in"  content-width="1.20in"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-header>
                    
                    <fo:table-body>
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="14pt"
                                font-family="sans-serif"
                                line-height="18pt"
                                margin-right="0.5cm"
                                margin-left="0.5cm"
                                margin-bottom="3cm"
                                text-align="center">
                                Le Directeur de l'ENSA de Tanger certifie que <xsl:value-of select="//nom"/> a suivi avec succès la formation
                                du 2ème année du cycle ingenieur et a reussi cette année avec mention <xsl:value-of select="//mention"/>
                            </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    
                   
                        <fo:table-row margin-right="2cm"
                            margin-left="2cm">
                            <fo:table-cell>
                                <fo:block font-size="12pt"
                                          font-family="sans-serif"
                                          line-height="20pt"
                                          font-weight="bold">Signature Directeur
                                </fo:block>
                                <fo:block font-size="12pt"
                                    font-family="sans-serif"
                                    line-height="20pt">
                                    <fo:external-graphic src="signature1.png"  content-height="scale-to-fit" height="1in"  content-width="1in"/>
                                </fo:block>
                                <fo:block font-size="12pt"
                                    font-family="sans-serif"
                                    line-height="20pt">ALAOUI Mohamed
                                </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell> <fo:block> </fo:block> </fo:table-cell>
                            <fo:table-cell>
                                <fo:block font-size="12pt"
                                    font-family="sans-serif"
                                    line-height="20pt"
                                    font-weight="bold">
                                    Signature Adjoint
                                </fo:block>
                                <fo:block font-size="12pt"
                                    font-family="sans-serif"
                                    line-height="20pt">
                                    <fo:external-graphic src="signature2.png"  content-height="scale-to-fit" height="1in"  content-width="1in"/>
                                </fo:block>
                                <fo:block font-size="12pt"
                                    font-family="sans-serif"
                                    line-height="20pt">SALAH Abdelouahab
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
    