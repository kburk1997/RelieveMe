package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.Floor;
import com.droptables.relieveme.repository.FloorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FloorService {
    private FloorRepository floorRepository;

    /**
     * The Service layer for the floor table.
     *
     * @param floorRepository - automatically injected by the Spring framework
     */
    @Autowired
    public FloorService(FloorRepository floorRepository) {
        this.floorRepository = floorRepository;
    }

    /**
     * Calls the floorRepository to access the floor table to get the floors corresponding to a building.
     *
     * @param buildingId - the integer id of a building
     * @return a list of floors corresponding to a building; cannot return an empty list
     */
    public List<Floor> getFloorsForBuildingId(int buildingId) {
        return floorRepository.findByBuildingId(buildingId);
    }
}
