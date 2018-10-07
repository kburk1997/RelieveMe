package com.droptables.relieveme.repository;

import com.droptables.relieveme.domain.Region;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegionRepository extends JpaRepository<Region, Integer> {

    /**
     * Get all building names in table building_name for a given building.
     *
     * @param regionId - id of the region
     * @return name of region with given id
     */
    String findById(Integer regionId);
}