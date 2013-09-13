<xsl:stylesheet exclude-result-prefixes="#default" version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/dbdoclet-titlepage.xsl"/>  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/autoidx-kosek.xsl"/>  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/autoidx-kimber.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/functions.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/fo/fop1.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/fo/themes/color.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/fo/synopsis.xsl"/>  <!-- SECTION Parameter -->
   <xsl:param name="admon.graphics">1</xsl:param>
  <xsl:param name="admon.graphics.extension">.gif</xsl:param>
  <xsl:param name="admon.graphics.path">file:/usr/share/dbdoclet/docbook/xsl/images/</xsl:param>
  <xsl:param name="admon.textlabel">1</xsl:param>
  <xsl:param name="alignment">left</xsl:param>
  <xsl:param name="appendix.autolabel">A</xsl:param>
  <xsl:param name="autotoc.label.separator"> </xsl:param>
  <xsl:param name="bibliography.collection">http://docbook.sourceforge.net/release/bibliography/bibliography.xml</xsl:param>
  <xsl:param name="bibliography.numbered">0</xsl:param>
  <xsl:param name="body.end.indent">0.00pt</xsl:param>
  <xsl:param name="body.font.family">DejaVu Serif</xsl:param>
  <xsl:param name="body.font.master">12</xsl:param>
  <xsl:param name="body.margin.bottom">0.50in</xsl:param>
  <xsl:param name="body.margin.top">0.50in</xsl:param>
  <xsl:param name="body.start.indent">2.00pt</xsl:param>
  <xsl:param name="bridgehead.in.toc">0</xsl:param>
  <xsl:param name="callout.defaultcolumn">60</xsl:param>
  <xsl:param name="callout.graphics">1</xsl:param>
  <xsl:param name="callout.graphics.extension">.gif</xsl:param>
  <xsl:param name="callout.graphics.number.limit">30</xsl:param>
  <xsl:param name="callout.graphics.path">file:/usr/share/dbdoclet/docbook/xsl/images/callouts/</xsl:param>
  <xsl:param name="callout.icon.size">7.00pt</xsl:param>
  <xsl:param name="callout.unicode">0</xsl:param>
  <xsl:param name="callout.unicode.number.limit">10</xsl:param>
  <xsl:param name="callout.unicode.start-character"/>  <xsl:param name="callouts.extension">1</xsl:param>
  <xsl:param name="chapter.autolabel">1</xsl:param>
  <xsl:param name="collect.xref.targets">no</xsl:param>
  <xsl:param name="column.count.back">1</xsl:param>
  <xsl:param name="column.count.body">1</xsl:param>
  <xsl:param name="column.count.front">1</xsl:param>
  <xsl:param name="column.count.index">1</xsl:param>
  <xsl:param name="component.label.includes.part.label">0</xsl:param>
  <xsl:param name="current.docid"/>  <xsl:param name="default.table.frame">all</xsl:param>
  <xsl:param name="default.table.rules">none</xsl:param>
  <xsl:param name="double.sided">0</xsl:param>
  <xsl:param name="draft.mode">0</xsl:param>
  <xsl:param name="draft.watermark.image">file:/usr/share/dbdoclet/docbook/xsl/images/draft.png</xsl:param>
  <xsl:param name="ebnf.assignment"/>  <xsl:param name="ebnf.statement.terminator"/>  <xsl:param name="footer.column.widths">1 1 1</xsl:param>
  <xsl:param name="footer.rule">1</xsl:param>
  <xsl:param name="footer.table.height">14.00pt</xsl:param>
  <xsl:param name="footers.on.blank.pages">1</xsl:param>
  <xsl:param name="fop.extensions">0</xsl:param>
  <xsl:param name="fop1.extensions">1</xsl:param>
  <xsl:param name="funcsynopsis.decoration">1</xsl:param>
  <xsl:param name="generate.index">1</xsl:param>
  <xsl:param name="generate.section.toc.level">0</xsl:param>
  <xsl:param name="generate.toc"> /appendix toc,title article/appendix nop /article toc,title book toc,title,figure,table,example,equation /chapter toc,title part toc,title /preface toc,title reference toc,title /sect1 toc /sect2 toc /sect3 toc /sect4 toc /sect5 toc /section toc set toc,title </xsl:param>
  <xsl:param name="glossary.collection"/>  <xsl:param name="glossterm.auto.link">0</xsl:param>
  <xsl:param name="graphic.default.extension"/>  <xsl:param name="header.column.widths">1 1 1</xsl:param>
  <xsl:param name="header.rule">1</xsl:param>
  <xsl:param name="header.table.height">14.00pt</xsl:param>
  <xsl:param name="headers.on.blank.pages">1</xsl:param>
  <xsl:param name="highlight.default.language"/>  <xsl:param name="highlight.source">0</xsl:param>
  <xsl:param name="highlight.xslthl.config">file:/usr/share/dbdoclet/docbook/xsl/highlighting/xslthl-config.xml</xsl:param>
  <xsl:param name="hyphenate">true</xsl:param>
  <xsl:param name="hyphenate.verbatim">0</xsl:param>
  <xsl:param name="hyphenate.verbatim.characters"/>  <xsl:param name="ignore.image.scaling">0</xsl:param>
  <xsl:param name="img.src.path"/>  <xsl:param name="index.method">basic</xsl:param>
  <xsl:param name="index.number.separator"/>  <xsl:param name="index.on.role">0</xsl:param>
  <xsl:param name="index.on.type">0</xsl:param>
  <xsl:param name="index.range.separator"/>  <xsl:param name="index.term.separator"/>  <xsl:param name="insert.link.page.number">no</xsl:param>
  <xsl:param name="insert.xref.page.number">no</xsl:param>
  <xsl:param name="keep.relative.image.uris">0</xsl:param>
  <xsl:param name="l10n.gentext.use.xref.language">0</xsl:param>
  <xsl:param name="label.from.part">0</xsl:param>
  <xsl:param name="line-height">normal</xsl:param>
  <xsl:param name="linenumbering.everyNth">1</xsl:param>
  <xsl:param name="linenumbering.extension">1</xsl:param>
  <xsl:param name="linenumbering.separator">: </xsl:param>
  <xsl:param name="linenumbering.width">3</xsl:param>
  <xsl:param name="make.index.markup">0</xsl:param>
  <xsl:param name="make.single.year.ranges">0</xsl:param>
  <xsl:param name="marker.section.level">2</xsl:param>
  <xsl:param name="nominal.table.width">6.00in</xsl:param>
  <xsl:param name="olink.base.uri"/>  <xsl:param name="page.margin.bottom">0.50in</xsl:param>
  <xsl:param name="page.margin.top">0.50in</xsl:param>
  <xsl:param name="page.orientation">portrait</xsl:param>
  <xsl:param name="paper.type">A4</xsl:param>
  <xsl:param name="part.autolabel">I</xsl:param>
  <xsl:param name="preface.autolabel">0</xsl:param>
  <xsl:param name="preferred.mediaobject.role"/>  <xsl:param name="process.empty.source.toc">0</xsl:param>
  <xsl:param name="process.source.toc">0</xsl:param>
  <xsl:param name="qanda.in.toc">0</xsl:param>
  <xsl:param name="quandadiv.autolabel">0</xsl:param>
  <xsl:param name="reference.autolabel">I</xsl:param>
  <xsl:param name="region.after.extent">0.40in</xsl:param>
  <xsl:param name="region.before.extent">0.40in</xsl:param>
  <xsl:param name="section.autolabel">1</xsl:param>
  <xsl:param name="section.autolabel.max.depth">8</xsl:param>
  <xsl:param name="section.label.includes.component.label">0</xsl:param>
  <xsl:param name="segmentedlist.as.table">0</xsl:param>
  <xsl:param name="shade.verbatim">1</xsl:param>
  <xsl:param name="simplesect.in.toc">0</xsl:param>
  <xsl:param name="table.cell.border.color">#000000</xsl:param>
  <xsl:param name="table.cell.border.style">solid</xsl:param>
  <xsl:param name="table.cell.border.thickness">0.50pt</xsl:param>
  <xsl:param name="table.frame.border.color">#000000</xsl:param>
  <xsl:param name="table.frame.border.style">solid</xsl:param>
  <xsl:param name="table.frame.border.thickness">0.50pt</xsl:param>
  <xsl:param name="tablecolumns.extension">1</xsl:param>
  <xsl:param name="target.database.document">olinkdb.xml</xsl:param>
  <xsl:param name="targets.filename">target.db</xsl:param>
  <xsl:param name="title.margin.left">0in</xsl:param>
  <xsl:param name="toc.indent.width">24</xsl:param>
  <xsl:param name="toc.max.depth">8</xsl:param>
  <xsl:param name="toc.section.depth">1</xsl:param>
  <xsl:param name="ulink.footnotes">0</xsl:param>
  <xsl:param name="ulink.hyphenate"/>  <xsl:param name="ulink.hyphenate.chars">/</xsl:param>
  <xsl:param name="ulink.show">1</xsl:param>
  <xsl:param name="use.extensions">1</xsl:param>
  <xsl:param name="use.role.for.mediaobject">1</xsl:param>
  <xsl:param name="variablelist.as.blocks">0</xsl:param>
  <xsl:param name="variablelist.max.termlength">24</xsl:param>
  <xsl:param name="variablelist.term.break.after">0</xsl:param>
  <xsl:param name="variablelist.term.separator">, </xsl:param>
  <xsl:param name="xref.label-page.separator"/>  <xsl:param name="xref.label-title.separator">: </xsl:param>
  <xsl:param name="xref.title-page.separator"/>  <xsl:attribute-set name="admonition.title.properties">
    <xsl:attribute name="font-size">12pt</xsl:attribute>
    <xsl:attribute name="font-family">DejaVu Sans</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="background-color">#ffffff</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="monospace.verbatim.properties">
    <xsl:attribute name="font-family">DejaVu Sans Mono</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="font-size">9pt</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="background-color">#ffffff</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="normal.para.spacing">
    <xsl:attribute name="space-before.minimum">0.00pt</xsl:attribute>
    <xsl:attribute name="space-before.optimum">0.00pt</xsl:attribute>
    <xsl:attribute name="space-before.maximum">0.00pt</xsl:attribute>
    <xsl:attribute name="space-after.minimum">0.00pt</xsl:attribute>
    <xsl:attribute name="space-after.optimum">0.00pt</xsl:attribute>
    <xsl:attribute name="space-after.maximum">0.00pt</xsl:attribute>
    <xsl:attribute name="text-indent">15.00pt</xsl:attribute>
    <xsl:attribute name="font-family">DejaVu Sans</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="font-size">12pt</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="background-color">#ffffff</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="section.title.properties">
    <xsl:attribute name="space-after.minimum">10.00pt</xsl:attribute>
    <xsl:attribute name="space-after.optimum">10.00pt</xsl:attribute>
    <xsl:attribute name="space-after.maximum">10.00pt</xsl:attribute>
    <xsl:attribute name="font-family">DejaVu Sans</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="font-size">12pt</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="background-color">#ffffff</xsl:attribute>
  </xsl:attribute-set>
</xsl:stylesheet>
