package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.Region;
import com.droptables.relieveme.repository.RegionRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Optional;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RegionServiceTest {
    @Mock
    private RegionRepository regionRepository;

    @InjectMocks
    private RegionService regionService;

    @Test
    public void givenExistingRegionIdThenReturnName() {
        int existingId = 12;
        Region region = new Region(existingId, "Hello world!");
        when(regionRepository.findById(existingId)).thenReturn(Optional.of(region));
        assertEquals("Hello world!", regionService.returnNameOfRegionWithRegionId(existingId));
    }

    @Test
    public void givenNonExistentRegionIdThenReturnnull() {
        assertNull(regionService.returnNameOfRegionWithRegionId(1));
    }
}