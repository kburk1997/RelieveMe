package com.droptables.relieveme.domain;

import javax.persistence.*;

@Entity
@Table(name = "building")
public class Building {
    @Id
    private Integer buildingId;

    private String properName;

    @ManyToOne
    @JoinColumn(name = "region_id")
    private Region region;

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }

    public String getProperName() {
        return properName;
    }

    public void setProperName(String properName) {
        this.properName = properName;
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }
}
