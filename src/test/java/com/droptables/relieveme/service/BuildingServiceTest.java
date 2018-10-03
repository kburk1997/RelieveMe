package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.repository.BuildingRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class BuildingServiceTest {
    @Mock
    BuildingRepository buildingRepository;

    @InjectMocks
    BuildingService buildingService;

    @Test
    public void givenNoBuildingsReturnEmptyList() {
        when(buildingRepository.findAll()).thenReturn(Collections.emptyList());
        assertTrue(buildingService.getAllBuildings().isEmpty());
    }

    @Test
    public void givenBuildingsReturnsNonEmptyList() {
        List<Building> buildings = Arrays.asList(new Building());
        when(buildingRepository.findAll()).thenReturn(buildings);
        assertSame(buildingService.getAllBuildings(), buildings);
    }
}