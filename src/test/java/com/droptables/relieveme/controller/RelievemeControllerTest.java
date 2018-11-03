package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.*;
import com.droptables.relieveme.email.EmailService;
import com.droptables.relieveme.service.BuildingNameService;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import com.droptables.relieveme.service.RegionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static com.droptables.relieveme.TestUtils.*;
import static org.junit.Assert.*;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RelievemeControllerTest {

    @Mock
    private BuildingService buildingService;

    @Mock
    private FloorPlanService floorPlanService;

    @Mock
    private BuildingNameService buildingNameService;

    @Mock
    private RegionService regionService;

    @Mock
    private EmailService emailService;

    @InjectMocks
    private RelievemeController relievemeController;

    @Test
    public void givenBuildingNameReturnsCorrespondingFloorPlans() {
        int expectedBuildingId = 1;
        List<FloorPlan> expectedFloorPlans = Arrays.asList(givenFloorPlan(expectedBuildingId, 3),
                givenFloorPlan(expectedBuildingId, 4));
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

    @Test
    public void getAllRegionsReturnsRegions() {
        when(regionService.getAllRegions()).thenReturn(Collections.singletonList(new Region(65, "1")));
        assertEquals((Integer) 65, relievemeController.getAllRegions().get(0).getRegionId());
    }

    @Test
    public void givenFeedbackThenCallEmailService() {
        Feedback feedback = new Feedback("email", "cat", "sub", "bod");
        relievemeController.submitFeedback(feedback);
        verify(emailService).sendFeedbackEmail("email", "cat", "sub", "bod");
    }

    @Test
    public void givenIssueThenCallEmailService() {
        Issue issue = new Issue("from", "issue", 0, "cats roosting in bathroom", "THERE ARE CATS");
        relievemeController.submitIssue(issue);
        verify(emailService).sendIssueEmail("from", "issue", 0, "cats roosting in bathroom","THERE ARE CATS");
    }
}