package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.domain.BuildingName;
import com.droptables.relieveme.domain.Feedback;
import com.droptables.relieveme.domain.FloorPlan;
import com.droptables.relieveme.service.BuildingNameService;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api")
public class RelievemeController {

    private BuildingService buildingService;
    private FloorPlanService floorPlanService;
    private BuildingNameService buildingNameService;

    @Autowired
    public RelievemeController(BuildingService buildingService, FloorPlanService floorPlanService,
                               BuildingNameService buildingNameService) {
        this.buildingService = buildingService;
        this.floorPlanService = floorPlanService;
        this.buildingNameService = buildingNameService;
    }

    /**
     * @return a list of names nicknames and official names for a building. Returns empty list if there are none.
     */
    @GetMapping("/buildingNames")
    public List<String> getAllBuildingNames() {
        return buildingNameService.getAllBuildingNames().stream()
                .map(buildingName -> buildingName.getBuildingNameKey().getName()).collect(Collectors.toList());
    }

    /**
     * Matches the given building name to a building.
     *
     * @param buildingName - non-null name of a building; must correspond to a name in the building_name table;
     *                     case-insensitive
     * @return the building with the corresponding name, case insensitive. Null if none could be found.
     */
    @GetMapping("/{buildingName}")
    public Building getBuilding(@PathVariable String buildingName) {
        BuildingName matchingBuildingName = buildingNameService.getBuildingWithName(buildingName);
        if (null == matchingBuildingName) {
            return null;
        }
        return buildingService
                .getBuildingWithId(matchingBuildingName.getBuildingNameKey().getBuildingId());
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
    }

    @PostMapping("/submit")
    public String submitFeedback(@RequestBody Feedback feedback) {
        return "Received your feedback!";
    }
}