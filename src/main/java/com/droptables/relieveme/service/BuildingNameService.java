package com.droptables.relieveme.service;

import com.droptables.relieveme.domain.BuildingName;
import com.droptables.relieveme.repository.BuildingNameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuildingNameService {

    private BuildingNameRepository buildingNameRepository;

    /**
     * Service layer for the building table.
     *
     * @param buildingNameRepository - automatically injected by the Spring framework
     */
    @Autowired
    public BuildingNameService(BuildingNameRepository buildingNameRepository) {
        this.buildingNameRepository = buildingNameRepository;
    }

//    /**
//     * returns building names in table building_name for a given building.
//     *
//     * @param buildingId - id of the building to find names for
//     * @return a list of all buildings names in the building name table; empty list if there aren't any building names
//     */
//    public List<BuildingName> getByBuildingid(int buildingId) {
//        return buildingNameRepository.findByBuildingNameKeyBuildingId(buildingId);
//    }

    public List<BuildingName> getAllBuildingNames() {
        return buildingNameRepository.findAll();
    }

    /**
     * returns the BuildingName corresponding to the name of a building.
     *
     * @param name - non-null name of the building. Case insensitive
     * @return the BuildingName entry associated with that name; null if it cannot be found
     */
    public BuildingName getBuildingWithName(String name) {
        return buildingNameRepository.findByBuildingNameKeyNameIgnoreCase(name);
    }
}
