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
import org.dbdoclet.trafo.html.EditorException;
import org.dbdoclet.trafo.html.EditorInstruction;
import org.dbdoclet.xiphias.dom.NodeListImpl;

public class UlEditor extends Editor {

    @Override
    public EditorInstruction edit(EditorInstruction values) throws EditorException {

	setValues(super.edit(values));
	DocBookTagFactory dbfactory = values.getTagFactory();

	NodeListImpl children = getHtmlElement().getTrafoChildNodes();

	if (children.size() == 0) {

	    return finalizeValues();
	}

	if (getParent().isList()) {

	    setCurrent(dbfactory.createListItem());
	    getCurrent().setParentNode(getParent());
	    getParent().appendChild(getCurrent());
	    setParent(getCurrent());
	}

	setCurrent(dbfactory.createItemizedList());
	getCurrent().setParentNode(getParent());
	getParent().appendChild(getCurrent());
	traverse(true);

	return finalizeValues();
    }
}