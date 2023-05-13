<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="ite/@nombre"/></title>
            </head>
            <body>
                <header><xsl:value-of select="ite/@nombre"/></header>
                <table>
                    <caption>Personal</caption>
                    <tr>
                        <td>Rango</td>
                        <td>Información</td>
                    </tr>
                    <tr>
                        <td>Profesores</td>
                        <td>
                            
                            <ul>
                                <xsl:for-each select="ite/profesores/profesor">
                                    <li>
                                        <xsl:value-of select="id"/>-<xsl:value-of select="nombre"/>
                                    </li>
                                </xsl:for-each>
                            </ul>

                        </td>
                    </tr>
                    <tr>
                        <td>Director</td>
                        <td>
                            <xsl:value-of select="ite/director/nombre"/>
                            <br/>
                            <xsl:value-of select="ite/director/despacho"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Jefe de estudios</td>
                        <td>
                            <xsl:value-of select="ite/jefe_estudios/nombre"/>
                            <br/>
                            <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </td>
                    </tr>
                   
                </table>
                <table>
                    <caption>Ciclos</caption>
                    <tr>
                        <td>Ciclo</td>
                        <td>Nombre</td>
                        <td>Grado</td>
                        <td>Año incorporación</td>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <br/>
                <p>Si tiene alguna consulta, no dude en contactarnos.</p>
                <a href= "Marian_HTML_Formulario.html">Formulario de contacto.</a>
            </body>
            <footer>
                <xsl:value-of select="ite/@nombre"/>
                <br/>
                <xsl:value-of select="ite/empresa"/>
                <br/>
                <xsl:value-of select="ite/telefono"/>
                <br/>
                <xsl:value-of select="ite/@web"/>
                <br/>
                <a href= "{ite/@web}">Más información aquí</a>

            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>