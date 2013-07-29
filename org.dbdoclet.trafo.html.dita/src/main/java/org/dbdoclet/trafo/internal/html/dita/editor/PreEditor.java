/* 
 * ### Copyright (C) 2008 Michael Fuchs ###
 * ### All Rights Reserved.             ###
 *
 * Author: Michael Fuchs
 * E-Mail: michael.fuchs@dbdoclet.org
 * URL:    http://www.michael-a-fuchs.de
 */
package org.dbdoclet.trafo.internal.html.dita.editor;

import org.dbdoclet.tag.dita.DitaElement;
import org.dbdoclet.tag.dita.DitaTagFactory;
import org.dbdoclet.tag.docbook.DocBookElement;
import org.dbdoclet.tag.docbook.Entry;
import org.dbdoclet.tag.docbook.Example;
import org.dbdoclet.tag.docbook.InformalExample;
import org.dbdoclet.tag.docbook.SectionElement;
import org.dbdoclet.tag.html.HtmlElement;
import org.dbdoclet.trafo.html.EditorException;
import org.dbdoclet.trafo.html.EditorInstruction;

public class PreEditor extends DitaEditor {

	@Override
	public EditorInstruction edit(EditorInstruction values)
			throws EditorException {

		setValues(super.edit(values));
		DitaTagFactory tagFactory = getTagFactory();
		return finalizeValues();
	}
}