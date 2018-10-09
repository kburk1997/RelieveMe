package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.BuildingName;
import com.droptables.relieveme.domain.key.BuildingNameKey;
import com.droptables.relieveme.repository.BuildingNameRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static com.droptables.relieveme.TestUtils.givenExpectedBuildingName;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class BuildingNameServiceTest {
    @Mock
    BuildingNameRepository buildingNameRepository;

    @InjectMocks
    BuildingNameService buildingNameService;

    private BuildingName expectedBuildingName;

    @Before
    public void setUp() {
    }

    @Test
    public void givenNonExistentBuildingNameReturnNull() {
        assertNull(buildingNameService.getBuildingWithName("blah"));
    }

    @Test
    public void givenExistingBuildingNameReturnNonNull() {
        String expectedName = "test";
        when(buildingNameService.getBuildingWithName(expectedName))
                .thenReturn(givenExpectedBuildingName(expectedName, 1));
        BuildingNameKey retBuildingNameKey = buildingNameService.getBuildingWithName(expectedName).getBuildingNameKey();
        assertEquals(expectedName, retBuildingNameKey.getName());
        assertEquals((Integer) 1, retBuildingNameKey.getBuildingId());

    }
}