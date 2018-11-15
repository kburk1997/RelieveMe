package com.droptables.relieveme.service;

import com.droptables.relieveme.repository.BathroomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BathroomService {

    private BathroomRepository bathroomRepository;

    /**
     * The Service layer for the bathroom table.
     *
     * @param bathroomRepository - automatically injected by the Spring framework
     */
    @Autowired
    public BathroomService(BathroomRepository bathroomRepository) {
        this.bathroomRepository = bathroomRepository;
    }

    /**
     * Increments the positive rating of the bathroom in the database with given id.
     * @param bathroomId non-null bathroom identifier
     */
    public void incrementNumPositiveRating(Integer bathroomId) {
        bathroomRepository.incrementNumPositiveRating(bathroomId);
    }

    /**
     * Increments the negative rating of the bathroom in the database with given id.
     * @param bathroomId non-null bathroom identifier
     */
    public void incrementNumNegativeRating(Integer bathroomId) {
        bathroomRepository.incrementNumNegativeRating(bathroomId);
    }

    /**
     * Sets the maintenance issue flag of the bathroom in the database with given id to true.
     * @param bathroomId non-null bathroom identifier
     */
    public void setOngoingBathroomIssueToTrue(Integer bathroomId) {
        bathroomRepository.setOngoingBathroomIssueToTrue(bathroomId);
    }

//    /**
//     * Calls the bathroomRepository to access the bathroom table to get the bathrooms corresponding to a building.
//     *
//     * @param buildingId - the integer id of a building
//     * @return a list of floors corresponding to a building; cannot return an empty list
//     */
//    public List<Bathroom> getBathroomsForBuildingId(int buildingId) {
//        return bathroomRepository.findByBuildingId(buildingId);
//    }
//
//    /**
//     * Calls the bathroomRepository to access the bathroom table to get the bathrooms corresponding to a building and floor.
//     *
//     * @param buildingId  - the integer id of a building
//     * @param floorNumber - the integer floor level
//     * @return a list of bathrooms on given floor in given building
//     */
//
//
//    public List<Bathroom> getBathroomsForFloorNum(int buildingId, int floorNumber) {
//        return bathroomRepository.findByFloorNum(buildingId);
//    }
//
//    /**
//     * Calls the bathroomRepository to access the bathroom table to get the wheelchair accessible bathrooms in given region.
//     *
//     * @param regionId             - the integer id of a region
//     * @param wheelchairAccessible - boolean for wheelchair accessibility
//     * @return a list of bathrooms on given floor in given region that are wheelchair accessible
//     */
//    public List<Bathroom> getBathroomsForWheelchairAccessibility(int regionId, int wheelchairAccessible) {
//        return bathroomRepository.findByWheelchairAccesibility(regionId, wheelchairAccessible);
//    }
//
//    /**
//     * Calls the bathroomRepository to access the bathroom table to get the wheelchair accessible bathrooms in given region.
//     *
//     * @param regionId   - the integer id of a region
//     * @param genderType - integer representing gender type, 2 corresponds w/ gender neutral
//     * @return a list of bathrooms on given floor in given region that are wheelchair accessible
//     */
//    public List<Bathroom> getBathroomsForGenderNeutral(int regionId, int genderType) {
//        return bathroomRepository.findByGenderNeutral(regionId, genderType);
//    }
}


