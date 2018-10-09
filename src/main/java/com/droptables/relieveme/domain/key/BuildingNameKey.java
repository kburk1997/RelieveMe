package com.droptables.relieveme.domain.key;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class BuildingNameKey implements Serializable {

    private String name;
    private Integer buildingId;

    /**
     * Default constructor for JPA
     */
    public BuildingNameKey() {
    }

    /**
     * Composite key for BuildingName
     *
     * @param name - nickname
     * @param buildingId - id of the building that this.name is associated with
     */
    public BuildingNameKey(String name, Integer buildingId) {
        this.name = name;
        this.buildingId = buildingId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }
}
