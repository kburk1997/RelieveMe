package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.FloorPlan;
import com.droptables.relieveme.repository.BuildingRepository;
import com.droptables.relieveme.repository.FloorPlanRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class FloorPlanServiceTest {
    @Mock
    private FloorPlanRepository floorPlanRepository;

    @InjectMocks
    private FloorPlanService floorPlanService;

    @Test
    public void givenExistingBuildingIdReturnsCorrespondingFloorPlans() {
        List<FloorPlan> expectedFloorPlans = Arrays.asList(new FloorPlan(), new FloorPlan());
        int existingBuildingId = 13;
        when(floorPlanRepository.findByBuildingId(existingBuildingId)).thenReturn(expectedFloorPlans);
        assertSame(floorPlanService.getFloorPlansForBuildingId(existingBuildingId), expectedFloorPlans);
    }

    @Test
    public void givenNonexistentBuildingIdReturnsEmptyList() {
        int nonExistentBuildingId = 1;
        when(floorPlanRepository.findByBuildingId(nonExistentBuildingId)).thenReturn(Collections.emptyList());
        assertTrue(floorPlanService.getFloorPlansForBuildingId(nonExistentBuildingId).isEmpty());
    }
}