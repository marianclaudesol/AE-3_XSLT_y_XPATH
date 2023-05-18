<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
                <link rel="stylesheet" href="styles.css"/>
            </head>
            <body>
                <header>
                     <h1><xsl:value-of select="ite/@nombre" /></h1>
                </header>
                <section class="general">
                <div class="general-1">
                <xsl:for-each select="ite/director">
                    <p>Director: <xsl:value-of select="nombre" /></p>
                    <p>Despacho: <xsl:value-of select="despacho" /></p>
                </xsl:for-each>
                <xsl:for-each select="ite/jefe_estudios">
                    <p>Jefe de estudios: <xsl:value-of select="nombre" /></p>
                    <p>Despacho: <xsl:value-of select="despacho" /></p>
                </xsl:for-each>
                </div>
                <div class="general-2"></div>
                </section>
               <section class="general">
                <div class="general-3">
                <table  border="1">
                    <thead>
                        <th bgcolor="blue" colspan="2" style="text-align: center;">Profesores</th>
                        <tr bgcolor="blue">
                            <th>Id</th>
                            <th>Profesor</th>
                        </tr>
                    </thead>
                    <tbody>

                        <xsl:for-each select="ite/profesores/profesor">

                            <tr>
                                <td><xsl:value-of select="id" /></td>
                                <td><xsl:value-of select="nombre" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                </div>
                </section>
                <br />
                <section class="general">
                <div class="general-4">
                <table  border="1">
                    <thead>
                        <th bgcolor="blue" colspan="4" style="text-align: center;">Ciclos</th>
                        <tr bgcolor="blue">
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Año</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="@id" /></td>
                                <td><xsl:value-of select="nombre" /></td>
                                <td><xsl:value-of select="grado" /></td>
                                <td><xsl:value-of select="decretoTitulo/@año" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                </div>
                </section>
                <p>Para consultas:  </p>
                <a href="">Formulario de contacto</a>
            </body>
            <footer>
                <p><xsl:value-of select="ite/@nombre" /></p>
                <a href=""><xsl:value-of select="ite/@web" /></a>
                <p><xsl:value-of select="ite/telefono" /></p>
                <p><xsl:value-of select="ite/empresa" /></p>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>