package com.droptables.relieveme.controller;

import com.droptables.relieveme.converter.HttpServletRequestToJsonConverter;
import com.droptables.relieveme.domain.*;
import com.droptables.relieveme.email.EmailService;
import com.droptables.relieveme.service.BathroomService;
import com.droptables.relieveme.service.BuildingNameService;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import com.github.mkopylec.recaptcha.validation.RecaptchaValidator;
import com.github.mkopylec.recaptcha.validation.ValidationResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("${rest-controller-prefix}")
public class RelievemeController {

    private final BuildingService buildingService;
    private final FloorPlanService floorPlanService;
    private final BuildingNameService buildingNameService;
    private final BathroomService bathroomService;

    @Autowired
    public RelievemeController(BuildingService buildingService, FloorPlanService floorPlanService,
                               BuildingNameService buildingNameService,
                               BathroomService bathroomService) {
        this.buildingService = buildingService;
        this.floorPlanService = floorPlanService;
        this.buildingNameService = buildingNameService;
        this.bathroomService = bathroomService;
    }

    /**
     * @return a list of names nicknames and official names for a building. Returns
     * empty list if there are none.
     */
    @GetMapping("/buildingNames")
    public List<String> getAllBuildingNames() {
        return buildingNameService.getAllBuildingNames().stream()
                .map(buildingName -> buildingName.getBuildingNameKey().getName()).collect(Collectors.toList());
    }

    /**
     * Matches the given building name to a building.
     *
     * @param buildingName - non-null name of a building; must correspond to a name
     *                     in the building_name table; case-insensitive
     * @return the building with the corresponding name, case insensitive. Null if
     * none could be found.
     */
    @GetMapping("/{buildingName}")
    public Building getBuilding(@PathVariable String buildingName) {
        BuildingName matchingBuildingName = buildingNameService.getBuildingWithName(buildingName);
        if (null == matchingBuildingName) {
            return null;
        }
        return buildingService.getBuildingWithId(matchingBuildingName.getBuildingNameKey().getBuildingId());
    }

    /**
     * Returns all floor plans corresponding to a building with the given name.
     *
     * @param buildingProperName - official name of a building
     * @return a list of all floor plans corresponding to a building where the
     * building's proper name is equal to the arg. Returns empty list if the
     * building cannot be found.
     */
    @GetMapping("/{buildingProperName}/floorplans")
    public List<FloorPlan> getFloorPlans(@PathVariable String buildingProperName) {
        Building targetBuilding = buildingService.getBuildingWithProperName(buildingProperName);

        if (null == targetBuilding) {
            return Collections.emptyList();
        }
        return floorPlanService.getFloorPlansForBuildingId(targetBuilding.getBuildingId());
    }

    /**
     * @return a list of all buildings
     */
    @GetMapping("/buildings")
    public List<Building> getAllBuildings() {
        return buildingService.getAllBuildings();
    }

    /**
     * Increases the positive rating for a bathroom.
     *
     * @param bathroomId non-null identifier of a bathroom
     */
    @PostMapping("/bathroom/{bathroomId}/increasePositiveRating")
    public void increaseBathroomPositiveRating(@PathVariable Integer bathroomId) {
        bathroomService.incrementNumPositiveRating(bathroomId);
    }

    /**
     * Increases the negative rating for a bathroom.
     *
     * @param bathroomId non-null identifier of a bathroom
     */
    @PostMapping("/bathroom/{bathroomId}/increaseNegativeRating")
    public void increaseBathroomNegativeRating(@PathVariable Integer bathroomId) {
        bathroomService.incrementNumNegativeRating(bathroomId);
    }
}