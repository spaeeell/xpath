<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <p>
                    Всего занятий на Курской:
                    <xsl:value-of select="count(//lesson[@complex='КУ'])"/>
                </p>
                <p>
                    Всего занятий на ВДНХ:
                    <xsl:value-of select="count(//lesson[@complex='ВТ'])"/>
                </p>
                <p>
                    Всего занятий в 10:00:
                    <xsl:value-of select="count(//time[.='10:00'])"/>
                </p>
                <p>
                    Всего занятий в 15:30:
                    <xsl:value-of select="count(//time[.='15:30'])"/>
                </p>
                <p>
                    Всего занятий в 17:20:
                    <xsl:value-of select="count(//time[.='17:20'])"/>
                </p>
                <p>
                    Первое занятие по списку:
                    <xsl:value-of select="//lesson[@no=1]/thema"/>
                    ,
                    <xsl:value-of select="//lesson[@no=1]/date"/>
                </p>
                <p>
                    Последнее занятие по списку:
                    <xsl:value-of select="//lesson[last()]/thema"/>
                    ,
                    <xsl:value-of select="//lesson[last()]/date"/>
                </p>
                <p>
                    Занятий по DTD:
                    <xsl:value-of select="count(//lesson[starts-with(thema, 'DTD')])"/>
                </p>
                <p>
                    Четных занятий на Курской:
                    <xsl:value-of select="count(//lesson[@complex='КУ' and @no mod 2 = 0])"/>
                </p>
                <p>
                    Четных занятий на Курской:
                    <xsl:value-of select="count(//lesson[@complex='ВТ' and @no mod 2 != 0])"/>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>