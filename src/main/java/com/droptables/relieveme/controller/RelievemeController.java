package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.*;
import com.droptables.relieveme.email.EmailService;
import com.droptables.relieveme.service.BuildingNameService;
import com.droptables.relieveme.service.BuildingService;
import com.droptables.relieveme.service.FloorPlanService;
import com.droptables.relieveme.service.RegionService;
import com.github.mkopylec.recaptcha.validation.RecaptchaValidator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api")
public class RelievemeController {

    private BuildingService buildingService;
    private FloorPlanService floorPlanService;
    private BuildingNameService buildingNameService;
    private RegionService regionService;
    private EmailService emailService;

    @Autowired
    private RecaptchaValidator recaptchaValidator;

    @Autowired
    public RelievemeController(BuildingService buildingService, FloorPlanService floorPlanService,
            BuildingNameService buildingNameService, RegionService regionService, EmailService emailService) {
        this.buildingService = buildingService;
        this.floorPlanService = floorPlanService;
        this.buildingNameService = buildingNameService;
        this.regionService = regionService;
        this.emailService = emailService;
    }

    /**
     * @return a list of all regions. Empty list if there are none.
     */
    @GetMapping("/regions")
    public List<Region> getAllRegions() {
        return regionService.getAllRegions();
    }

    /**
     * @return a list of names nicknames and official names for a building. Returns
     *         empty list if there are none.
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
     *         none could be found.
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
     *         building's proper name is equal to the arg. Returns empty list if the
     *         building cannot be found.
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
    public List<Building> getAllBuildings() {
        return buildingService.getAllBuildings();
    }

    @PostMapping("/submitFeedback")
    public ResponseEntity submitFeedback(HttpServletRequest request) {
        // check captcha first
        // if (recaptchaValidator.validate(request).isSuccess()) {
        System.out.println(request.getParameterNames());
        System.out.println(request.getParameter("email"));
        System.out.println(request.getParameter("category"));
        System.out.println(request.getParameter("subject"));
        System.out.println(request.getParameter("description"));
        this.submitFeedback(new Feedback(request.getParameter("email"), request.getParameter("category"),
                request.getParameter("subject"), request.getParameter("description")));

        return new ResponseEntity<>(HttpStatus.OK);
        // } else {
        // return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        // }
    }

    @PostMapping("/submitIssue")
    public void submitIssue(@RequestBody Issue issue) {
        emailService.sendIssueEmail(issue.getEmail(), issue.getCategory(), issue.getBathroomId(), issue.getSubject(),
                issue.getDescription());
    }

    private void submitFeedback(Feedback feedback) {
        emailService.sendFeedbackEmail(feedback.getEmail(), feedback.getCategory(), feedback.getSubject(),
                feedback.getDescription());
    }

}