package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.domain.FloorPlan;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.List;

import static com.droptables.relieveme.TestUtils.givenBuilding;
import static com.droptables.relieveme.TestUtils.givenFloorPlan;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RelievemeControllerTest {

    @Mock
    private BuildingService buildingService;

    @Mock
    private FloorPlanService floorPlanService;

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
}