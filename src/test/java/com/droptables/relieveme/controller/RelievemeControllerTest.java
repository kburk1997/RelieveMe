package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.domain.FloorPlan;
import com.droptables.relieveme.service.BuildingNameService;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.List;

import static com.droptables.relieveme.TestUtils.*;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RelievemeControllerTest {

    @Mock
    private BuildingService buildingService;

    @Mock
    private FloorPlanService floorPlanService;

    @Mock
    private BuildingNameService buildingNameService;

    @InjectMocks
    private RelievemeController relievemeController;

    @Test
    public void givenBuildingNameReturnsCorrespondingFloorPlans() {
        int expectedBuildingId = 1;
        List<FloorPlan> expectedFloorPlans =
                Arrays.asList(givenFloorPlan(expectedBuildingId, 3), givenFloorPlan(expectedBuildingId, 4));
        Building expectedBuilding = givenBuilding(expectedBuildingId);
        String buildingName = "Poop";
        when(buildingService.getBuildingWithProperName(buildingName)).thenReturn(expectedBuilding);
        when(floorPlanService.getFloorPlansForBuildingId(expectedBuildingId)).thenReturn(expectedFloorPlans);
        List<FloorPlan> result = relievemeController.getFloorPlans(buildingName);
        assertEquals((Integer) 4, result.get(1).getFloorPlanKey().getFloorNumber());
    }

    @Test
    public void givenBuildingNameWithNoFloorPlansReturnsEmptyList() {
        String buildingName = "Poop";
        when(buildingService.getBuildingWithProperName(buildingName)).thenReturn(givenBuilding(2));
        assertTrue(relievemeController.getFloorPlans(buildingName).isEmpty());
    }

    @Test
    public void givenNonExistentBuildingNameReturnsEmptyList() {
        assertTrue(relievemeController.getFloorPlans("blob").isEmpty());
    }

    @Test
    public void givenNonEmptyBuildingNamesThenReturnAllBuildingNames() {
        when(buildingNameService.getAllBuildingNames()).thenReturn(
                Arrays.asList(givenExpectedBuildingName("notExpected", 1), givenExpectedBuildingName("expected", 100)));
        assertEquals("expected", relievemeController.getAllBuildingNames().get(1));
    }

    @Test
    public void givenExistingBuildingNameReturnsCorrespondingBuilding() {
        when(buildingNameService.getBuildingWithName("POop")).thenReturn(givenExpectedBuildingName("POop", 100));
        Building expBuilding = new Building();
        when(buildingService.getBuildingWithId(100)).thenReturn(expBuilding);
        expBuilding.setBuildingId(100);
        assertEquals((Integer) 100, relievemeController.getBuilding("POop").getBuildingId());
    }

    @Test
    public void givenNonExistentBuildingNameReturnsNull() {
        assertNull(relievemeController.getBuilding("nothing is expected"));
    }
}