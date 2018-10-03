package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.domain.Feedback;
import com.droptables.relieveme.domain.FloorPlan;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/api")
public class RelievemeController {

    private BuildingService buildingService;
    private FloorPlanService floorPlanService;

    @Autowired
    public RelievemeController(BuildingService buildingService, FloorPlanService floorPlanService) {
        this.buildingService = buildingService;
        this.floorPlanService = floorPlanService;
    }

    @GetMapping("/{buildingName}")
    public String getBuilding(@PathVariable String buildingName) {
        // search functionality should direct here. Match the buildingName with building name in our database
        return "Found building " + buildingName.toUpperCase() + ". Here are its bathrooms.";
    }

    /**
     * Returns all floor plans corresponding to a building with the given name.
     *
     * @param buildingProperName - official name of a building
     * @return a list of all floor plans corresponding to a building where the building's proper name is equal to the
     * arg. Returns empty list if the building cannot be found.
     */
    @GetMapping("/{buildingProperName}/floorplans")
    public List<FloorPlan> getFloorPlans(@PathVariable String buildingProperName) {
        Building targetBuilding = buildingService.getBuildingWithProperName(buildingProperName);

        if (null == targetBuilding) {
            return Collections.emptyList();
        }
        return floorPlanService.getFloorPlansForBuildingId(targetBuilding.getBuildingId());
    }

    @GetMapping("/buildings")
    public List<Building> getMatchingBuildings(@RequestParam(value = "sort") String sort,
                                               @RequestParam(value = "filter") String filter,
                                               @RequestParam(value = "region") String region) {
        return buildingService.getAllBuildings();
        // sortType valid values: {None, Alphabetical}
        // filterType valid values: {None, Accessible, GenderNeutral}
        // regionType valid values: {None, ECAV, Freshman Hill, Main Campus}
    }

    @PostMapping("/submit")
    public String submitFeedback(@RequestBody Feedback feedback) {
        return "Received your feedback!";
    }
}