<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
       <empresa>
         <xsl:attribute name="nombre">
            <xsl:value-of select="/ite/empresa"/>
         </xsl:attribute>
         <xsl:attribute name="telefono">
            <xsl:value-of select="/ite/telefono"/>
         </xsl:attribute>
       </empresa>
       <ciclos>
            <xsl:for-each select="/ite/ciclos/ciclo">
                <ciclo id="{@id}">
                    <nombre>
                        <xsl:value-of select="nombre" /> 
                    </nombre>
                    <grado>
                        <xsl:value-of select="grado" /> 
                    </grado>
                                    
                   <xsl:attribute name="id">
                        <xsl:value-of select="/ite/ciclos/ciclo[@id]"/>
                    </xsl:attribute>
                    
                    <profesores>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <profesor id="{id}" nombre="{nombre}"/>        
                    </xsl:for-each>
                    </profesores>
                    <director>
                        <xsl:value-of select="/ite/director"></xsl:value-of>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="/ite/director/nombre"/>
                             </xsl:attribute>
                             <xsl:attribute name="despacho">
                                <xsl:value-of select="/ite/director/despacho"/>
                             </xsl:attribute>
                        
                    </director>
                    <jefe_estudios>
                        <xsl:value-of select="/ite/jefe_estudios"></xsl:value-of>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="/ite/jefe_estudios/nombre"/>
                             </xsl:attribute>
                             <xsl:attribute name="despacho">
                                <xsl:value-of select="/ite/jefe_estudios/despacho"/>
                             </xsl:attribute>
                    </jefe_estudios>
                    
                </ciclo>
            </xsl:for-each>
        
       
       </ciclos>

    </xsl:template>
</xsl:stylesheet>