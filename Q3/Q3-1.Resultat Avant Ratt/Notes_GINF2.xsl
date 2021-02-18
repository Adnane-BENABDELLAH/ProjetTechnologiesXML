<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0">
    <xsl:template match='/'>
        <html>
            <body>
                <h3>Resultat du module UML et IHM avant le rattrapage:</h3>
                <table border="1" cellspacing="0" cellpadding="3">
                    <tr bgcolor="#ADD8E6">
                        <td>CNE</td>
                        <td>FirstName</td>
                        <td>LastName</td>
                        <td>ModuleName</td>
                        <td>UML</td>
                        <td>IHM</td>
                        <td>Moyenne</td>
                        <td>Resultat</td>
                    </tr>
                    <xsl:for-each select="Notes/Note">
                        <tr>
                            <td><xsl:value-of select="CNE"/></td>
                            <td><xsl:value-of select="FirstName"/></td>
                            <td><xsl:value-of select="LastName"/></td>
                            <td><xsl:value-of select="ModuleName"/></td>
                            <td><xsl:value-of select="UML"/></td>
                            <td><xsl:value-of select="IHM"/></td>
                            <xsl:choose>
                                <xsl:when test="(UML+IHM) div 2 &lt; 8">
                                    <td bgcolor="red"><xsl:value-of select="(UML+IHM) div 2"/></td>
                                    <td bgcolor="red">R</td>
                                </xsl:when>
                                <xsl:when test="(UML+IHM) div 2 &gt; 8 and (UML+IHM) div 2 &lt; 12">
                                    <td bgcolor="orange"><xsl:value-of select="(UML+IHM) div 2"/></td>
                                    <td bgcolor="orange">R</td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="green"><xsl:value-of select="(UML+IHM) div 2"/></td>
                                    <td bgcolor="green">V</td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h3>Les etudiants qui doivent passer le rattrapage:</h3>
                <table border="1" cellspacing="0" cellpadding="3">
                    <tr bgcolor="#ADD8E6">
                        <td>CNE</td>
                        <td>FirstName</td>
                        <td>LastName</td>
                        <td>ModuleName</td>
                        <td>UML</td>
                        <td>IHM</td>
                        <td>Moyenne</td>
                        <td>Resultat</td>
                    </tr>
                    <xsl:for-each select="Notes/Note">
                        <xsl:if test="(UML+IHM) div 2 &lt; 12">
                            <tr>
                                 <td><xsl:value-of select="CNE"/></td>
                                 <td><xsl:value-of select="FirstName"/></td>
                                 <td><xsl:value-of select="LastName"/></td>
                                 <td><xsl:value-of select="ModuleName"/></td>
                                 <td><xsl:value-of select="UML"/></td>
                                 <td><xsl:value-of select="IHM"/></td>
                                <td><xsl:value-of select="(UML+IHM) div 2"/></td>
                                <td>R</td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>