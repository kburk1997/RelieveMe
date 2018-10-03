package com.droptables.relieveme.repository;

import com.droptables.relieveme.domain.Building;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuildingRepository extends JpaRepository<Building, Integer> {

    /**
     * Finds the building in the building table with the given name.
     * Spring parses the method name as a SQL query.
     *
     * @param properName - name of the building
     * @return the building with proper_name.equals(properName). Null otherwise
     */
    Building findByProperName(String properName);
}