package com.droptables.relieveme.repository;

import com.droptables.relieveme.domain.Floor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FloorRepository extends JpaRepository<Floor, Long> {

    /**
     * Returns a list of floors from floor where building_id column matches the given buildingId.
     * Spring parses the method name as a SQL query.
     *
     * @param buildingId - the id of the building to get floor plans for
     * @return number of floors in given building, must be greater than 0
     */
    List<Floor> findByBuildingId(Integer buildingId);
}