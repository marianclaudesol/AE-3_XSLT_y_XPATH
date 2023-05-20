<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

    <xsl:template match="/">  
        <html>
        <head> 
            <title>FP Grados Superiores EDIX</title>
        </head>
        <body>
            
            <h1><xsl:value-of select="/ite/@nombre"/></h1>
            

            <h2>PROFESORES</h2>
            <table border="1">
                <thead>
                    <tr>
                        
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>

            <h2>CICLOS FORMATIVOS</h2>
            <ul>
            <xsl:for-each select="/ite/ciclos/ciclo">
                <li><xsl:value-of select="@id"/></li>
                
            </xsl:for-each>
            </ul>
            
            <table border="1">
                <thead>
                    <tr>
                        <th>CICLO</th>
                        <th>NOMBRE</th>
                        <th>GRADO</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>    

            <h2>Contacto:</h2>
            <a href="https://www.edix.com/es/">Empresa: <xsl:value-of select="/ite/empresa"/></a>
            <br/>
            <a href="https://www.edix.com/es/">Teléfono: <xsl:value-of select="/ite/telefono"/> </a>
            
           <form action="procesar.jsp" method="post">

                            <fieldset>
                                <legend>Login</legend>
                                <label for="usuario">Usuario:</label>
                                <input id="usuario" type="text" name="usuario" autofocus=""/>
                                <br/>
                                <label for="pass">Contraseña:</label>
                                <input id="pass" type="password" name="pass"/>
                            </fieldset>
            </form>

        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!--<?xml-stylesheet type="text/xsl" href="cristian_req1.xsl"?>-->