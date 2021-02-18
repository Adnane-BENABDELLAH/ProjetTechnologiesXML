<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0">
    <xsl:template match='/'>
        <html>
            <body>
                <h3>Resultat du module UML et IHM apres le rattrapage:</h3>
                <table border="1" cellspacing="0" cellpadding="3">
                    <tr bgcolor="#ADD8E6">
                        <td>CNE</td>
                        <td>FirstName</td>
                        <td>LastName</td>
                        <td>ModuleName</td>
                        <td>NoteAvantRatt</td>
                        <td>NoteApresRatt</td>
                        <td>NoteModule</td>
                    </tr>
                    <xsl:for-each select="Notes/Note">
                        <tr>
                            <td><xsl:value-of select="CNE"/></td>
                            <td><xsl:value-of select="FirstName"/></td>
                            <td><xsl:value-of select="LastName"/></td>
                            <td><xsl:value-of select="ModuleName"/></td>
                            <td><xsl:value-of select="NoteAvantRatt"/></td>
                            <td><xsl:value-of select="NoteApresRatt"/></td>
                            <xsl:choose>
                                <xsl:when test="(NoteAvantRatt + NoteApresRatt) div 2 &lt; 12">
                                    <td bgcolor="red"><xsl:value-of select="(NoteAvantRatt + NoteApresRatt) div 2"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="green"><xsl:value-of select="(NoteAvantRatt + NoteApresRatt) div 2"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>