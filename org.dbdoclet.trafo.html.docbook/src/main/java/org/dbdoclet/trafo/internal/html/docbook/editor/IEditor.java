/* 
 * ### Copyright (C) 2008 Michael Fuchs ###
 * ### All Rights Reserved.             ###
 *
 * Author: Michael Fuchs
 * E-Mail: michael.fuchs@dbdoclet.org
 * URL:    http://www.michael-a-fuchs.de
 */
package org.dbdoclet.trafo.internal.html.docbook.editor;

import org.dbdoclet.tag.docbook.Emphasis;
import org.dbdoclet.trafo.html.EditorException;
import org.dbdoclet.trafo.html.EditorInstruction;
import org.dbdoclet.trafo.internal.html.docbook.DbtConstants;

public class IEditor extends EmEditor {

    @Override
    public EditorInstruction edit(EditorInstruction values) throws EditorException {

        EditorInstruction evo = super.edit(values);
        
        Emphasis emphasis = getEmphasis();
        
		if (emphasis != null) {
            emphasis.setRole(DbtConstants.DEFAULT_EMPHASIS_ROLE_ITALIC);
        }
        
        return evo;
    }
}
