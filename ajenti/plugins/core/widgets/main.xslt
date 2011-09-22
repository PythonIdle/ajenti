<xsl:template match="topcategory">
    <a class="ui-el-top-category{x:iif(@selected, ' selected', '')}" href="#" onclick="return Ajenti.selectCategory('{@id}');" id="{@id}">
        <img src="{@icon}" class="icon" />
        <xsl:value-of select="@text"/>
            <xsl:if test="@counter != 'None'">
                <div class="counter">
                    <xsl:value-of select="@counter"/>
                </div>
            </xsl:if>
    </a>
</xsl:template>

<xsl:template match="category">
    <a href="#" onclick="return Ajenti.selectCategory('{@id}');">
	    <div id="{@id}" class="ui-el-category {x:iif(@selected, 'selected', '')}">
            <img src="{@icon}" class="icon" />
            <span class="text">
                <xsl:value-of select="@name"/>
            </span>
            <xsl:if test="@counter != 'None'">
                <div class="counter">
                    <xsl:value-of select="@counter"/>
                </div>
            </xsl:if>
        </div>
    </a>
</xsl:template>

<xsl:template match="categoryfolder">
    <div class="ui-el-categoryfolder" id="{@id}">
        <xsl:value-of select="@text"/>
    </div>
    <div class="ui-el-categoryfolder-children">
        <xsl:apply-templates />
    </div>
</xsl:template>


<xsl:template match="toolbar">
        <div class="ui-el-toolbar">
            <xsl:apply-templates />
        </div>
</xsl:template>

<xsl:template match="topprogressbox">
        <div class="ui-progress-box">
                <img class="ajax" src="/dl/core/ui/ajax-light.gif"/>
                <img src="{@icon}"/>
                <label text="{@title}" bold="True"/>
                <div class="ui-progress-box-text"><label text="{@text}"/></div>
                <xsl:if test="@can_abort = 'True'">
                <div style="float:right; display: inline-block">
                    <button text="Abort" id="aborttask" warning="Abort the background task for {@title}"/>
                </div>
                </xsl:if>
                <refresh time="3000" />
        </div>
</xsl:template>


<xsl:template match="systemmessage">
    <div class="ui-el-message ui-el-message-{@cls}">
        <xsl:value-of select="@text" />
    </div>
</xsl:template>
