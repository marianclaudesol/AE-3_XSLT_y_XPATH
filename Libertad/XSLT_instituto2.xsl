<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <ite>
      <xsl:for-each select="ite">
        <nombre>
          <xsl:value-of select="@nombre" />
        </nombre>

        <web>
          <xsl:value-of select="@web" />
        </web>

        <empresa>
          <nombre_empresa>
            <xsl:value-of select="empresa" />
          </nombre_empresa>

          <telefono>
            <xsl:value-of select="telefono" />
          </telefono>
        </empresa>

        <gestion_centro>
          <xsl:for-each select="//profesor">
            <profesor>
              <id>
                <xsl:value-of select="id" />
              </id>
              <nombre>
                <xsl:value-of select="nombre" />
              </nombre>
            </profesor>
          </xsl:for-each>
          <xsl:for-each select="//director">
            <director>
              <nombre>
                <xsl:value-of select="nombre" />
              </nombre>
              <despacho>
                <xsl:value-of select="despacho" />
              </despacho>
            </director>
          </xsl:for-each>
          <xsl:for-each select="//jefe_estudios">
            <jefe_estudios>
              <nombre>
                <xsl:value-of select="nombre" />
              </nombre>
              <despacho>
                <xsl:value-of select="despacho" />
              </despacho>
            </jefe_estudios>
          </xsl:for-each>
        </gestion_centro>

        <ciclos_formativos>
          <xsl:for-each select="//ciclo">
            <id>
              <xsl:value-of select="@id" />
            </id>
            <nombre>
              <xsl:value-of select="nombre" />
            </nombre>
            <grado>
              <xsl:value-of select="grado" />
            </grado>
            <decretoTitulo>
              <xsl:value-of select="decretoTitulo/@año" />
            </decretoTitulo>
          </xsl:for-each>
        </ciclos_formativos>
      </xsl:for-each>
    </ite>
  </xsl:template>
</xsl:stylesheet>