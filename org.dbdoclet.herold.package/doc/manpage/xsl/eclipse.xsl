<xsl:stylesheet exclude-result-prefixes="#default" version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/eclipse/eclipse3.xsl"/>  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/highlight.xsl"/>  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/autoidx-kosek.xsl"/>  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/html/autoidx-kimber.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/functions.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/html/synopsis.xsl"/>  <xsl:include href="http://dbdoclet.org/xsl/html/themes/color.xsl"/>   <xsl:param name="admon.graphics">0</xsl:param>
  <xsl:param name="admon.graphics.extension">.png</xsl:param>
  <xsl:param name="admon.graphics.path">images/</xsl:param>
  <xsl:param name="admon.style"/>  <xsl:param name="admon.textlabel">1</xsl:param>
  <xsl:param name="annotate.toc">1</xsl:param>
  <xsl:param name="appendix.autolabel">A</xsl:param>
  <xsl:param name="autotoc.label.in.hyperlink">1</xsl:param>
  <xsl:param name="autotoc.label.separator">. </xsl:param>
  <xsl:param name="base.dir">./build/eclipse/</xsl:param>
  <xsl:param name="bibliography.collection">http://docbook.sourceforge.net/release/bibliography/bibliography.xml</xsl:param>
  <xsl:param name="bibliography.numbered">0</xsl:param>
  <xsl:param name="bridgehead.in.toc">0</xsl:param>
  <xsl:param name="callout.defaultcolumn">60</xsl:param>
  <xsl:param name="callout.graphics">1</xsl:param>
  <xsl:param name="callout.graphics.extension">.png</xsl:param>
  <xsl:param name="callout.graphics.number.limit">15</xsl:param>
  <xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
  <xsl:param name="callout.list.table">1</xsl:param>
  <xsl:param name="callout.unicode">0</xsl:param>
  <xsl:param name="callout.unicode.number.limit">10</xsl:param>
  <xsl:param name="callout.unicode.start-character"/>  <xsl:param name="callouts.extension">1</xsl:param>
  <xsl:param name="chapter.autolabel">1</xsl:param>
  <xsl:param name="chunk.first.sections">0</xsl:param>
  <xsl:param name="chunk.section.depth">1</xsl:param>
  <xsl:param name="collect.xref.targets">no</xsl:param>
  <xsl:param name="component.label.includes.part.label">0</xsl:param>
  <xsl:param name="current.docid"/>  <xsl:param name="dbdoclet.version">1</xsl:param>
  <xsl:param name="default.table.frame">all</xsl:param>
  <xsl:param name="ebnf.assignment"/>  <xsl:param name="ebnf.statement.terminator"/>  <xsl:param name="ebnf.table.bgcolor">#f5dcb3</xsl:param>
  <xsl:param name="ebnf.table.border">1</xsl:param>
  <xsl:param name="eclipse.plugin.id">herold manpage</xsl:param>
  <xsl:param name="eclipse.plugin.name">herold manpage</xsl:param>
  <xsl:param name="eclipse.plugin.provider"/>  <xsl:param name="eclipse.plugin.version">1.0.0</xsl:param>
  <xsl:param name="footer.rule">1</xsl:param>
  <xsl:param name="funcsynopsis.decoration">1</xsl:param>
  <xsl:param name="generate.index">1</xsl:param>
  <xsl:param name="generate.section.toc.level">0</xsl:param>
  <xsl:param name="generate.toc"> appendix toc,title article/appendix nop article toc,title book toc,title,figure,table,example,equation chapter toc,title part toc,title preface toc,title qandadiv toc qandaset toc reference toc,title sect1 toc sect2 toc sect3 toc sect4 toc sect5 toc section toc set toc,title </xsl:param>
  <xsl:param name="glossary.collection"/>  <xsl:param name="glossterm.auto.link">0</xsl:param>
  <xsl:param name="graphic.default.extension"/>  <xsl:param name="header.rule">1</xsl:param>
  <xsl:param name="highlight.default.language"/>  <xsl:param name="highlight.source">0</xsl:param>
  <xsl:param name="highlight.xslthl.config">file:/usr/share/dbdoclet/docbook/xsl/highlighting/xslthl-config.xml</xsl:param>
  <xsl:param name="html.stylesheet"/>  <xsl:param name="ignore.image.scaling">0</xsl:param>
  <xsl:param name="img.src.path"/>  <xsl:param name="index.links.to.section">1</xsl:param>
  <xsl:param name="index.method">basic</xsl:param>
  <xsl:param name="index.number.separator"/>  <xsl:param name="index.on.role">0</xsl:param>
  <xsl:param name="index.on.type">0</xsl:param>
  <xsl:param name="index.prefer.titleabbrev">0</xsl:param>
  <xsl:param name="index.range.separator"/>  <xsl:param name="index.term.separator"/>  <xsl:param name="insert.xref.page.number">no</xsl:param>
  <xsl:param name="keep.relative.image.uris">1</xsl:param>
  <xsl:param name="l10n.gentext.use.xref.language">0</xsl:param>
  <xsl:param name="label.from.part">0</xsl:param>
  <xsl:param name="linenumbering.everyNth">5</xsl:param>
  <xsl:param name="linenumbering.extension">1</xsl:param>
  <xsl:param name="linenumbering.separator"/>  <xsl:param name="linenumbering.width">3</xsl:param>
  <xsl:param name="make.index.markup">0</xsl:param>
  <xsl:param name="make.single.year.ranges">0</xsl:param>
  <xsl:param name="manifest.in.base.dir">1</xsl:param>
  <xsl:param name="manual.toc"/>  <xsl:param name="navig.graphics">0</xsl:param>
  <xsl:param name="navig.graphics.extension">.gif</xsl:param>
  <xsl:param name="navig.graphics.path">images/</xsl:param>
  <xsl:param name="navig.show.titles">1</xsl:param>
  <xsl:param name="nominal.table.width">6.00in</xsl:param>
  <xsl:param name="olink.base.uri"/>  <xsl:param name="part.autolabel">I</xsl:param>
  <xsl:param name="preface.autolabel">0</xsl:param>
  <xsl:param name="preferred.mediaobject.role"/>  <xsl:param name="process.empty.source.toc">0</xsl:param>
  <xsl:param name="process.source.toc">0</xsl:param>
  <xsl:param name="qanda.in.toc">0</xsl:param>
  <xsl:param name="quandadiv.autolabel">0</xsl:param>
  <xsl:param name="reference.autolabel">I</xsl:param>
  <xsl:param name="rootid"/>  <xsl:param name="section.autolabel">0</xsl:param>
  <xsl:param name="section.autolabel.max.depth">8</xsl:param>
  <xsl:param name="section.label.includes.component.label">0</xsl:param>
  <xsl:param name="segmentedlist.as.table">0</xsl:param>
  <xsl:param name="shade.verbatim">0</xsl:param>
  <xsl:param name="simplesect.in.toc">0</xsl:param>
  <xsl:param name="suppress.footer.navigation">0</xsl:param>
  <xsl:param name="suppress.header.navigation">0</xsl:param>
  <xsl:param name="suppress.navigation">0</xsl:param>
  <xsl:param name="table.borders.with.css">0</xsl:param>
  <xsl:param name="table.cell.border.color">#000000</xsl:param>
  <xsl:param name="table.cell.border.style">solid</xsl:param>
  <xsl:param name="table.cell.border.thickness">0.50pt</xsl:param>
  <xsl:param name="table.frame.border.color">#000000</xsl:param>
  <xsl:param name="table.frame.border.style">solid</xsl:param>
  <xsl:param name="table.frame.border.thickness">0.50pt</xsl:param>
  <xsl:param name="tablecolumns.extension">1</xsl:param>
  <xsl:param name="target.database.document">olinkdb.xml</xsl:param>
  <xsl:param name="targets.filename">target.db</xsl:param>
  <xsl:param name="toc.indent.width">2</xsl:param>
  <xsl:param name="toc.list.type">dl</xsl:param>
  <xsl:param name="toc.max.depth">8</xsl:param>
  <xsl:param name="toc.section.depth">2</xsl:param>
  <xsl:param name="ulink.target">_top</xsl:param>
  <xsl:param name="use.id.as.filename">0</xsl:param>
  <xsl:param name="use.role.as.xrefstyle">1</xsl:param>
  <xsl:param name="use.role.for.mediaobject">1</xsl:param>
  <xsl:param name="variablelist.as.table">0</xsl:param>
  <xsl:param name="variablelist.term.break.after">0</xsl:param>
  <xsl:param name="variablelist.term.separator">, </xsl:param>
  <xsl:param name="xref.label-page.separator"/>  <xsl:param name="xref.label-title.separator">: </xsl:param>
  <xsl:param name="xref.title-page.separator"/>  <xsl:param name="xref.with.number.and.title">1</xsl:param>
  <xsl:template name="manifest.content">
    <xsl:text>Manifest-Version: 1.0</xsl:text>
    <xsl:text>&#x0A;</xsl:text>
    <xsl:text>Bundle-Version: </xsl:text>
    <xsl:value-of select="$eclipse.plugin.version"/>    <xsl:text>&#x0A;</xsl:text>
    <xsl:text>Bundle-Name: </xsl:text>
    <xsl:value-of select="$eclipse.plugin.name"/>    <xsl:text>&#x0A;</xsl:text>
    <xsl:text>Bundle-SymbolicName: </xsl:text>
    <xsl:value-of select="$eclipse.plugin.id"/>    <xsl:text>&#x0A;</xsl:text>
    <xsl:text>Bundle-Vendor: </xsl:text>
    <xsl:value-of select="$eclipse.plugin.provider"/>    <xsl:text>&#x0A;</xsl:text>
    <xsl:text>Bundle-Localization: plugin</xsl:text>
    <xsl:text>&#x0A;</xsl:text>
    <xsl:text>Require-Bundle: org.eclipse.help</xsl:text>
    <xsl:text>&#x0A;</xsl:text>
  </xsl:template>
</xsl:stylesheet>
