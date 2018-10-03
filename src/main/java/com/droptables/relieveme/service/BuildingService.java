package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.repository.BuildingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuildingService {
    private BuildingRepository buildingRepository;

    /**
     * Service layer for the building table.
     *
     * @param buildingRepository - automatically injected by the Spring framework
     */
    @Autowired
    public BuildingService(BuildingRepository buildingRepository) {
        this.buildingRepository = buildingRepository;
    }

    /**
     * Returns all buildings in the building table.
     *
     * @return a list of all buildings in the building table; empty list if there aren't any buildings
     */
    public List<Building> getAllBuildings() {
        return buildingRepository.findAll();
    }
}