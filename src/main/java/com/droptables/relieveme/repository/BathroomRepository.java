package com.droptables.relieveme.repository;

import com.droptables.relieveme.domain.Bathroom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Table;
import java.util.List;

@Repository()
public interface BathroomRepository extends JpaRepository<Bathroom, Long> {

    /**
     * Increments the positive rating of the bathroom in the database with given id.
     * @param bathroomId bathroom identifier
     */
    @Transactional
    @Modifying
    @Query("UPDATE Bathroom SET num_positive_rating = num_positive_rating + 1 WHERE bathroomId = ?1")
    void incrementNumPositiveRating(int bathroomId);

    /**
     * Increments the negative rating of the bathroom in the database with given id.
     * @param bathroomId bathroom identifier
     */
    @Transactional
    @Modifying
    @Query("UPDATE Bathroom SET num_negative_rating = num_negative_rating + 1 WHERE bathroomId = ?1")
    void incrementNumNegativeRating(int bathroomId);

    /**
     * Sets the maintenance issue flag to true of the bathroom in the database with given id.
     * @param bathroomId bathroom identifier
     */
    @Transactional
    @Modifying
    @Query("UPDATE Bathroom SET ongoing_bathroom_issue = true WHERE bathroomid = ?1")
    void setOngoingBathroomIssueToTrue(int bathroomId);

//    /**
//     * Returns a list of bathrooms from bathroom where building_id column matches the given buildingId.
//     * Spring parses the method name as a SQL query.
//     *
//     * @param buildingId - the id of the building to get bathrooms for
//     * @return number of bathrooms in given building
//     */
//    List<Bathroom> findByBuildingId(Integer buildingId);
//
//    /**
//     * Returns a list of bathrooms from bathroom where building_id column matches the given buildingId.
//     * and floor_number column matches the given FloorNumber
//     * Spring parses the method name as a SQL query.
//     *
//     * @param buildingId  - the id of the building to get bathrooms for
//     * @param floorNumber = the number of the floor in the given building to get bathrooms for
//     * @return number of bathrooms in given building on the given floor
//     */
//    List<Bathroom> findByFloorNum(Integer buildingId, Integer floorNumber);
//
//    /**
//     * Returns a list of bathrooms from regions where region_id column matches the given regionId.
//     * and wheelchair_accessible is True
//     * Spring parses the method name as a SQL query.
//     *
//     * @param regionId             - the id of the region to get bathrooms for
//     * @param wheelchairAccessible - is this bathroom wheelchair accessible?
//     * @return number of bathrooms in the region that are wheelchair accessible
//     */
//    List<Bathroom> findByWheelchairAccessibility(Integer regionId, Boolean wheelchairAccessible);
//
//    /**
//     * Returns a list of bathrooms from regions where region_id column matches the given regionId.
//     * and gender_type matches genderType matches 2
//     * Spring parses the method name as a SQL query.
//     *
//     * @param regionId   - the id of the region to get bathrooms for
//     * @param genderType - male is 0, female is 1, gender_neutral is 2
//     * @return number of bathrooms in the region that are gender neutral
//     */
//    List<Bathroom> findByGenderNeutral(Integer regionId, Integer gender_type);

}