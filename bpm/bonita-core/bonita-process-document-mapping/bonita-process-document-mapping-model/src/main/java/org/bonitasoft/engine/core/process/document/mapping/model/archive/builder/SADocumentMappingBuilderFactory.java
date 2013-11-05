/**
 * Copyright (C) 2012 BonitaSoft S.A.
 * BonitaSoft, 32 rue Gustave Eiffel - 38000 Grenoble
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2.0 of the License, or
 * (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package org.bonitasoft.engine.core.process.document.mapping.model.archive.builder;

import org.bonitasoft.engine.core.process.document.mapping.model.SDocumentMapping;
import org.bonitasoft.engine.core.process.document.mapping.model.archive.SADocumentMapping;

/**
 * @author Nicolas Chabanoles
 * @author Zhang Bole
 */
public interface SADocumentMappingBuilderFactory {

    String getIdKey();

    String getProcessInstanceIdKey();

    String getSourceObjectIdKey();

    String getArchiveDateKey();

    String getDocumentNameKey();

    String getDocumentAuthorKey();

    String getDocumentCreationDateKey();

    String getDocumentHasContentKey();

    String getDocumentContentFileNameKey();

    String getDocumentContentMimeTypeKey();

    String getContentStorageIdKey();

    String getDocumentURLKey();

    SADocumentMappingBuilder createNewInstance();

    SADocumentMappingBuilder createNewInstance(SDocumentMapping documentMapping);

}
