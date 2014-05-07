package org.bonitasoft.engine.profile.impl;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class ExportedProfileEntryTest {

    private static final String OTHER_NAME = "other name";

    private static final String NAME = "name";

    private ExportedProfileEntry entry1;

    private ExportedProfileEntry entry2;

    private ExportedProfileEntry entry3;

    @Test
    public void testEqual_sameEntry() throws Exception {
        // given
        entry1 = new ExportedProfileEntry(NAME);
        entry2 = new ExportedProfileEntry(NAME);
        entry3 = new ExportedProfileEntry(OTHER_NAME);

        // when
        shouldBeEquals(entry1, entry2);
        // then
        shouldNotBeEquals(entry1, entry3);

    }

    private void shouldBeEquals(final ExportedProfileEntry entryA, final ExportedProfileEntry entryB) {
        assertThat(entryA).as("should be equals").isEqualTo(entryB);
        assertThat(entryA.hashCode()).as("hash code should be equals").isEqualTo(entryB.hashCode());
    }

    private void shouldNotBeEquals(final ExportedProfileEntry entryA, final ExportedProfileEntry entryB) {
        if (null != entryA && null != entryB)
        {
            assertThat(entryA).as("should not be equals").isNotEqualTo(entryB);
            assertThat(entryA.hashCode()).as("hash code should not be equals").isNotEqualTo(entryB.hashCode());
        }
    }

    @Test
    public void testEqual_with_null() throws Exception {
        // given
        entry1 = new ExportedProfileEntry(NAME);

        // when then
        shouldNotBeEquals(entry1, null);
        shouldNotBeEquals(null, null);
        shouldNotBeEquals(null, entry1);

    }
}
