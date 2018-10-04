package com.droptables.relieveme.service;

import com.droptables.relieveme.repository.BuildingNameRepository;
import org.springframework.stereotype.Service;

@Service
public class BuildingNameService {

    private BuildingNameRepository buildingNameRepository;

    /**
     * Service layer for the building table.
     *
     * @param buildingRepository - automatically injected by the Spring framework
     */
    @Autowired
    public BuildingNameService(BuildingNameRepository buildingNameRepository) {
        this.buildingNameRepository = buildingNameRepository;
    }

    /**
     * returns building names in table building_name for a given building.
     * @param buildingId - id of the building to find names for
     * @return a list of all buildings names in the building name table; empty list if there aren't any building names
     */
    public List<Building> getByBuildingId() {
        return buildingNameRepository.findbyBuildingID();
    }
}
