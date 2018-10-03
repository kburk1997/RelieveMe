package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.Region;
import com.droptables.relieveme.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class RegionService {
    private RegionRepository regionRepository;

    /**
     * The Service layer for the regions table.
     *
     * @param regionRepository - automatically injected by the Spring framework
     */
    @Autowired
    public RegionService(RegionRepository regionRepository) {
        this.regionRepository = regionRepository;
    }

    /**
     * Calls the regionRepository to access the regions table to get the name of the region with the given id.
     *
     * @param regionId - the integer id of a region
     * @return the corresponding name of the region where region_id == regionId; null if no matching region exists
     */
    public String returnNameOfRegionWithRegionId(int regionId) {
        Optional<Region> possibleRegion = regionRepository.findById(regionId);
        return possibleRegion.map(Region::getName).orElse(null);
    }

}