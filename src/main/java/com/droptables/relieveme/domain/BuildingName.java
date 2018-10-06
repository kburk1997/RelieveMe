package com.droptables.relieveme.domain;

import javax.persistence.*;

@Entity
@Table(name = "building_name")
public class BuildingName {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long buildingNameId;

    private String name;
    private Integer buildingId;

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
