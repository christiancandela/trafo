/* 
 * ### Copyright (C) 2008 Michael Fuchs ###
 * ### All Rights Reserved.             ###
 *
 * Author: Michael Fuchs
 * E-Mail: michael.fuchs@dbdoclet.org
 * URL:    http://www.michael-a-fuchs.de
 */
package org.dbdoclet.trafo.internal.html.docbook.editor;

import org.dbdoclet.tag.docbook.DocBookTagFactory;
import org.dbdoclet.tag.docbook.Title;
import org.dbdoclet.trafo.html.EditorException;
import org.dbdoclet.trafo.html.EditorInstruction;

public class CaptionEditor extends Editor {

    @Override
	public EditorInstruction edit(EditorInstruction values) throws EditorException {

	setValues(super.edit(values));
	DocBookTagFactory dbfactory = values.getTagFactory();

	Title title = dbfactory.createTitle();

	getParent().getTrafoParentNode().insertChild(0, title);
	setCurrent(title);

	traverse(true);

	return finalizeValues();
    }
}
