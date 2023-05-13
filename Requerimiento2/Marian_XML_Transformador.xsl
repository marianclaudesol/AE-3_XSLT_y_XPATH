<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <root enterprise="{ite/empresa}" phone="{ite/telefono}" >
            <name><xsl:value-of select="ite/@nombre"/></name>
            <sitelink><xsl:value-of select="ite/@web"/></sitelink>
            <teachers>
                <xsl:for-each select="ite/profesores/profesor">
                    <teacher info="{id}-{nombre}"/>
                </xsl:for-each>
            </teachers>
            <manager name="{ite/director/nombre}" office="{ite/director/despacho}"/>
            <head_of_studies name="{ite/jefe_estudios/nombre}" office="{ite/jefe_estudios/despacho}"/>
            <courses>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <course degree="{grado}" year="{decretoTitulo/@año}">
                        <identifier code="{@id}">
                            <name><xsl:value-of select="nombre"/></name>
                        </identifier>
                    </course>
                </xsl:for-each>
            </courses>
        </root>
    </xsl:template>
</xsl:stylesheet>