package com.droptables.relieveme.repository;

import com.droptables.relieveme.domain.BuildingName;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuildingNameRepository extends JpaRepository<BuildingName, Long> {

    /**
     * Get all building names in table building_name for a given building.
     *
     * @param buildingId - id of the building to find names for
     * @return a list of all objects in table building_name where building_id == buildingId.
     */
    List<BuildingName> findByBuildingId(Integer buildingId);
}
