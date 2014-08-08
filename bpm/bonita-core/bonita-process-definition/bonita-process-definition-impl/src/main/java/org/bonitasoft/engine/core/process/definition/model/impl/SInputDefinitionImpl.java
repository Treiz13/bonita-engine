/**
 * Copyright (C) 2014 BonitaSoft S.A.
 * BonitaSoft, 32 rue Gustave Eiffel - 38000 Grenoble
 * This library is free software; you can redistribute it and/or modify it under the terms
 * of the GNU Lesser General Public License as published by the Free Software Foundation
 * version 2.1 of the License.
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public License along with this
 * program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
 * Floor, Boston, MA 02110-1301, USA.
 **/
package org.bonitasoft.engine.core.process.definition.model.impl;

import org.bonitasoft.engine.bpm.contract.InputDefinition;
import org.bonitasoft.engine.core.process.definition.model.SInputDefinition;

/**
 * @author Matthieu Chaffotte
 */
public class SInputDefinitionImpl extends SNamedElementImpl implements SInputDefinition {

    private static final long serialVersionUID = -4947430801791009535L;

    private String description;

    private String type;

    public SInputDefinitionImpl(final String name) {
        super(name);
    }

    public SInputDefinitionImpl(final InputDefinition input) {
        super(input.getName());
        description = input.getDescription();
        type = input.getType();
    }

    @Override
    public String getDescription() {
        return description;
    }

    public void setDescription(final String description) {
        this.description = description;
    }

    @Override
    public String getType() {
        return type;
    }

    public void setType(final String type) {
        this.type = type;
    }

}
