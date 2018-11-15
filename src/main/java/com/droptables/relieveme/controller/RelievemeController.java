package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.*;
import com.droptables.relieveme.email.EmailService;
import com.droptables.relieveme.service.*;
import com.github.mkopylec.recaptcha.validation.RecaptchaValidator;
import com.github.mkopylec.recaptcha.validation.ValidationResult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.json.BasicJsonParser;
import org.springframework.boot.json.JsonParser;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("${rest-controller-prefix}")
public class RelievemeController {

    private final BuildingService buildingService;
    private final FloorPlanService floorPlanService;
    private final BuildingNameService buildingNameService;
    private final EmailService emailService;
    private final BathroomService bathroomService;

    private final RecaptchaValidator recaptchaValidator;

    private JsonParser jsonParser;

    @Autowired
    public RelievemeController(BuildingService buildingService, FloorPlanService floorPlanService,
            BuildingNameService buildingNameService, EmailService emailService,
            BathroomService bathroomService, RecaptchaValidator recaptchaValidator) {
        this.buildingService = buildingService;
        this.floorPlanService = floorPlanService;
        this.buildingNameService = buildingNameService;
        this.emailService = emailService;
        this.jsonParser = new BasicJsonParser();
        this.bathroomService = bathroomService;
        this.recaptchaValidator = recaptchaValidator;
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

    /**
     * @return a list of all buildings
     */
    @GetMapping("/buildings")
    public List<Building> getAllBuildings() {
        return buildingService.getAllBuildings();
    }

    /**
     * Receives feedback from the user and sends a feedback email to both the user
     * and the developers. A captcha is used to determine if a request is a spam
     * request.
     * 
     * @param request feedback post request
     * @return Http OK if the captcha succeeds. Http BAD REQUEST if the captcha
     *         fails.
     */
    @PostMapping("/submitFeedback")
    public ResponseEntity submitFeedback(HttpServletRequest request) {

        // get remote address
        String ipAddress = request.getRemoteAddr();

        String s = this.extractPostRequestBody(request);

        // convert to JSON
        Map<String, Object> reqBody = jsonParser.parseMap(s);

        ValidationResult captchaResult = recaptchaValidator.validate((String) reqBody.get("captcha"), ipAddress);
        if (captchaResult.isSuccess()) {
            this.submitFeedback(new Feedback((String) reqBody.get("email"), (String) reqBody.get("category"),
                    (String) reqBody.get("subject"), (String) reqBody.get("description")));
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }

    /**
     * Receives an issue report from the user and sends an issue email to both the user
     * and the developers. A captcha is used to determine if a request is a spam
     * request.
     *
     * @param request feedback post request
     * @return Http OK if the captcha succeeds. Http BAD REQUEST if the captcha
     *         fails.
     */
    @PostMapping("/submitIssue")
    public ResponseEntity submitIssue(HttpServletRequest request) {

        // get remote address
        String ipAddress = request.getRemoteAddr();

        String s = this.extractPostRequestBody(request);

        // convert to JSON
        Map<String, Object> reqBody = jsonParser.parseMap(s);

        ValidationResult captchaResult = recaptchaValidator.validate((String) reqBody.get("captcha"), ipAddress);
        if (captchaResult.isSuccess()) {
            this.submitIssue(new Issue((String) reqBody.get("email"), (String) reqBody.get("category"),
                    ((Long) reqBody.get("bathroomId")).intValue(), (String) reqBody.get("subject"),
                    (String) reqBody.get("description")));
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }

    /**
     * Take an issue report and sends an email to the user who submitted the issue and
     * the developers. Also updates maintenance issue flag on the afflicted bathroom.
     *
     * @param issue non-null issue information
     */
    protected void submitIssue(Issue issue) {
        emailService.sendIssueEmail(issue.getEmail(), issue.getCategory(), issue.getBathroomId(), issue.getSubject(),
                issue.getDescription());
        bathroomService.setOngoingBathroomIssueToTrue(issue.getBathroomId());
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

    /**
     * Take feedback and send an email to the user who submitted the feedback and
     * the developers.
     * 
     * @param feedback non-null feedback information
     */
    protected void submitFeedback(Feedback feedback) {
        emailService.sendFeedbackEmail(feedback.getEmail(), feedback.getCategory(), feedback.getSubject(),
                feedback.getDescription());
    }

    /**
     * Extracts the contents of an HttpServlet POST request.
     * 
     * @param request POST request to parse
     * @return the body of a POST request if it exists; empty string if there is no
     *         body
     */
    private static String extractPostRequestBody(HttpServletRequest request) {
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            Scanner s = null;
            try {
                s = new Scanner(request.getInputStream(), "UTF-8").useDelimiter("\\A");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return s.hasNext() ? s.next() : "";
        }
        return "";
    }

}