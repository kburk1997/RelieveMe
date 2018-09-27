package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.Building;
import com.droptables.relieveme.domain.Feedback;
import com.droptables.relieveme.repository.BuildingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class RelievemeController {

    private BuildingRepository buildingRepository;

    @Autowired
    public RelievemeController(BuildingRepository buildingRepository) {
        this.buildingRepository = buildingRepository;
    }

    // TODO: currently all skeletons. Flesh out as project progresses

    @GetMapping("/{buildingName}")
    public String getBuilding(@PathVariable String buildingName) {
        // search functionality should direct here. Match the buildingName with building name in our database
        return "Found building " + buildingName.toUpperCase() + ". Here are its bathrooms.";
    }

    @GetMapping("/{buildingName}/floorplans")
    public String getFloorPlans(@PathVariable String buildingName) {
        return "Here are floor plans for the building!";
    }

    @GetMapping("/buildings")
    public List<Building> getMatchingBuildings(@RequestParam(value = "sort") String sort,
                                               @RequestParam(value = "filter") String filter,
                                               @RequestParam(value = "region") String region) {
        return buildingRepository.findAll();
        // sortType valid values: {None, Alphabetical}
        // filterType valid values: {None, Accessible, GenderNeutral}
        // regionType valid values: {None, ECAV, Freshman Hill, Main Campus}
//        return "Here are the results for sort = " + sort + ", filter = " + filter + ", and region = " + region;
    }

    @PostMapping("/submit")
    public String submitFeedback(@RequestBody Feedback feedback) {
        return "Received your feedback!";
    }
}