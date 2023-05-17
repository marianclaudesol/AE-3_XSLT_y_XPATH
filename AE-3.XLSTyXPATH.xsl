<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<?xml-stylesheet type="text/xsl" href="AE-3.XLSTyXPATH.xsl"?>
<xsl:template match="/">
    <html>
        <head>
           <title>Instituto Tecnológico Edix</title>
        </head>
        <body>
         <h1><xsl:value-of select="ite/empresa"/></h1>
         <xsl:for-each select="ite">

         <h3>Profesores</h3>

            <table border="1">
                <thead>
                    <tr>
                      <th>id</th>
                      <th>nombre</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="profesores/profesor">
                        <tr>
                           <td><xsl:value-of select="id"/></td>
                           <td><xsl:value-of select="nombre"/></td>
                        </tr>
                   </xsl:for-each>
                </tbody>
            </table>
            <h4>Ciclos</h4>
            <table border="1">
                <thead>
                    <tr>
                       <th>Ciclo</th>
                       <th>nombre</th>
                       <th>grado</th>
                       <th>decretoTitulo</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="ciclos/ciclo">
                        <tr>
            	            <td><xsl:value-of select="@id"/></td>
				            <td><xsl:value-of select="nombre"/></td>
				            <td><xsl:value-of select="grado"/></td>
				            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>

            <h1>Oferta Formativa</h1>
            <ul>
                <xsl:for-each select="ciclos/ciclo">
                  <li><xsl:value-of select="nombre"/></li>
                </xsl:for-each>      
            </ul>

            <h1>Profesores</h1>
            <ol>
                <xsl:for-each select="profesores/profesor">
                  <li><xsl:value-of select="nombre"/></li>
                </xsl:for-each>
            </ol>

            <h1>Despachos</h1>
            <xsl:for-each select="director">
              <a href="https://www.google.es/maps/place/Pol%C3%ADgono+N%C2%BA+31,+3,+46410+Sueca,+Valencia/@39.2519764,-0.2665302,17z/data=!4m5!3m4!1s0xd61ca33e3b945ed:0x8046b9237f624a4d!8m2!3d39.2519764!4d-0.2665302">Director: <xsl:value-of select="despacho"/></a>
            </xsl:for-each>
            <br/>
            <xsl:for-each select="jefe_estudios">
              <a href="https://www.google.es/maps/place/Calle+N%C2%BA+Veintisiete,+2,+24310+Folgoso+de+la+Ribera,+Le%C3%B3n/@42.6188318,-6.3440779,17z/data=!3m1!4b1!4m6!3m5!1s0xd374b8d358dcd9b:0x48929d1171149841!8m2!3d42.6188318!4d-6.3440779!16s%2Fg%2F11c5pq37vc">Jefe de Estudios: <xsl:value-of select="despacho"/></a>
            </xsl:for-each>

            <h3>Formulario de Contacto</h3>
                <xsl:for-each select="ciclos">
                    <form action="procesarPeticion.jsp" method="get">
                        <main>
                            <section>

                                <div>
                                  <h1>Cuentanos tus dudas</h1>
                                </div>
                                <div>
                                   <h2>¿Deseas recibir más información?</h2>
                                   <p>Mediante el siguiente formulario, podrás enviarnos cualquier consulta </p>
                                </div>

                        
                                <form class="div_form" action="procesar.jsp" method="post">

                                    <fieldset>
                                        <legend>Formulario de contacto</legend>

                                        <label for="nombre">Nombre:</label>
                                        <input id="nombre" type="text" name="name" />
                                        <br/>
                                        <br/>
                                        <label for="email">Email:</label>
                                        <input id="email" type="email" name="email" placeholder="email@adress.com"/>
                                        <br/>
                                        <br/>
                                        <label for="telefono">Teléfono:</label>
                                        <input id="telefono" type="tel" name="telefono" placeholder="+34" maxlength=""/>
                                        <br/>
                                        <br/>
                                        <label for="edad">Edad:</label>
                                        <input id="edad" type="number" step="1" name="edad"/>
                                        <br/>
                                        <br/>
                                        <label for="residencia">Dónde resides:</label>
                                        <br/>
                                        <input type="radio" name="residencia" value="p"/>Península<br/>
                                        <input type="radio" name="residencia" value="c"/>Canarias<br/>
                                        <input type="radio" name="residencia" value="e"/>Fuera de España<br/>
                                        <br/>
                                        <label for="elegir">Elige el ciclo  sobre el que deseas hacer la consulta:</label>
                                        <br/>
                                        <xsl:for-each select="ciclo[1]">
                                          <input type="checkbox" name="elegir" value="dam" /><xsl:value-of select="@id"/><br/>
                                        </xsl:for-each> 
                                        <xsl:for-each select="ciclo[2]">
                                          <input type="checkbox" name="elegir" value="daw"/><xsl:value-of select="@id"/><br/>
                                        </xsl:for-each> 
                                        <xsl:for-each select="ciclo[3]">
                                         <input type="checkbox" name="elegir" value="asir"/><xsl:value-of select="@id"/><br/>
                                        </xsl:for-each>  
                                        <br/>
                                        <label for="día">Mejor franja horaria y fecha para ser contactado:</label>
                                        <select name="día"> 
                                          <option value="mon">09:00-14:00</option>
                                          <option value="tue">17:00 - 20:00</option>
                                        </select>
                                        <br/>
                                        <input type="date" name="calendario"/>
                                        <br/>
                                        <br/>

                                        <label for="mensaje">Mensaje:</label>
                                        <br/>
                                        <textarea class="mensaje" name="mensaje"></textarea>
                                        <br/>
                                        <br/>
                                        <label for="términos"></label>
                                        <input type="checkbox" name="términos" value="y"/>He leído y acepto las condiciones de privacidad y protección de datos.<br/>
                                
                                        <br/>
                                        <br/>
                                        <input type="submit" value="Enviar datos"/>
                                        <input type="reset" value="Limpiar formulario"/>
                                    </fieldset>
                                </form>
                            </section>
                        </main>
                    </form>  
                </xsl:for-each>     
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>