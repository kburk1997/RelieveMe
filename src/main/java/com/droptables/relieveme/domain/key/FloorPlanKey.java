package com.droptables.relieveme.domain.key;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class FloorPlanKey implements Serializable {
    private Integer buildingId;
    private Integer floorNumber;

    /**
     * Default constructor for JPA
     */
    public FloorPlanKey() {
    }

    /**
     * Composite key for FloorPlan
     *
     * @param buildingId  - id of the building the floor is in
     * @param floorNumber - id of the floor number the floor is in
     */
    public FloorPlanKey(Integer buildingId, Integer floorNumber) {
        this.buildingId = buildingId;
        this.floorNumber = floorNumber;
    }

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }

    public Integer getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(Integer floorNumber) {
        this.floorNumber = floorNumber;
    }
}
