package com.droptables.relieveme.domain;

import javax.persistence.*;

@Entity
@Table(name = "bathroom")
public class Bathroom {
    @Id
    private Integer bathroomId;
    @Column(name = "floor_number")
    private Integer floorNumber;
    private Integer genderType;
    private Boolean wheelchairAccessible;
    private String locationString;
    private Boolean shelves;
    private Boolean menstrualDisposal;
    private Integer menstrualProductType;
    private Integer numNegativeRating;
    private Integer numPositiveRating;
    private Integer maintenanceIssueNum;
    private Boolean babyChangingStation;
    private Boolean fragranceFreeSoap;
    private Boolean singleStall;
    @Column(name = "building_id")
    private Integer buildingId;

    public Integer getBathroomId() {
        return bathroomId;
    }

    public void setBathroomId(Integer bathroomId) {
        this.bathroomId = bathroomId;
    }

    public Integer getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(Integer floorNumber) {
        this.floorNumber = floorNumber;
    }

    public Integer getGenderType() {
        return genderType;
    }

    public void setGenderType(Integer genderType) {
        this.genderType = genderType;
    }

    public Boolean getWheelchairAccessible() {
        return wheelchairAccessible;
    }

    public void setWheelchairAccessible(Boolean wheelchairAccessible) {
        this.wheelchairAccessible = wheelchairAccessible;
    }

    public String getLocationString() {
        return locationString;
    }

    public void setLocationString(String locationString) {
        this.locationString = locationString;
    }

    public Boolean getShelves() {
        return shelves;
    }

    public void setShelves(Boolean shelves) {
        this.shelves = shelves;
    }

    public Boolean getMenstrualDisposal() {
        return menstrualDisposal;
    }

    public void setMenstrualDisposal(Boolean menstrualDisposal) {
        this.menstrualDisposal = menstrualDisposal;
    }

    public Integer getMenstrualProductType() {
        return menstrualProductType;
    }

    public void setMenstrualProductType(Integer menstrualProductType) {
        this.menstrualProductType = menstrualProductType;
    }

    public Integer getNumNegativeRating() {
        return numNegativeRating;
    }

    public void setNumNegativeRating(Integer numNegativeRating) {
        this.numNegativeRating = numNegativeRating;
    }

    public Integer getNumPositiveRating() {
        return numPositiveRating;
    }

    public void setNumPositiveRating(Integer numPositiveRating) {
        this.numPositiveRating = numPositiveRating;
    }

    public Integer getMaintenanceIssueNum() {
        return maintenanceIssueNum;
    }

    public void setMaintenanceIssueNum(Integer maintenanceIssueNum) {
        this.maintenanceIssueNum = maintenanceIssueNum;
    }

    public Boolean getBabyChangingStation() {
        return babyChangingStation;
    }

    public void setBabyChangingStation(Boolean babyChangingStation) {
        this.babyChangingStation = babyChangingStation;
    }

    public Boolean getFragranceFreeSoap() {
        return fragranceFreeSoap;
    }

    public void setFragranceFreeSoap(Boolean fragranceFreeSoap) {
        this.fragranceFreeSoap = fragranceFreeSoap;
    }

    public Boolean getSingleStall() {
        return singleStall;
    }

    public void setSingleStall(Boolean singleStall) {
        this.singleStall = singleStall;
    }

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }
}
