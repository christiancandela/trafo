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
import org.dbdoclet.tag.docbook.Para;
import org.dbdoclet.trafo.TrafoConstants;
import org.dbdoclet.trafo.html.EditorException;
import org.dbdoclet.trafo.html.EditorInstruction;
import org.dbdoclet.xiphias.dom.NodeImpl;

public class TextEditor extends DocBookEditor {

	@Override
	public EditorInstruction edit(EditorInstruction values)
			throws EditorException {

		try {

			setValues(super.edit(values));
			
			DocBookTagFactory dbfactory = getTagFactory();
			NodeImpl current = getCurrent();
			NodeImpl parent = getParent();
			
			if (isSection(parent)) {

				if (getCharacterDataNode().getNodeType() == NodeImpl.TEXT_NODE) {

					Para para = dbfactory.createPara();
					parent.appendChild(para);

					setParent(para);
					parent = para;

					setCurrent(para);
					current = para;
				}
			}

			String text = getCharacterDataNode().getData();

			if (script.isParameterOn(TrafoConstants.SECTION_DOCBOOK,
					TrafoConstants.PARAM_COLLAPSE_PROTECTED_SPACE, false)) {
				text = text.replace('\u00a0', ' ');
			}

			current.appendChild(text);
			return finalizeValues();

		} catch (Exception oops) {

			throw new EditorException(oops);
		}
	}
}
