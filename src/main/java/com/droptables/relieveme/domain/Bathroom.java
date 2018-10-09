package com.droptables.relieveme.domain;

import javax.persistence.*;

@Entity
@Table(name = "bathroom")
public class Bathroom {
    @Id
    private Integer bathroomId;
    private Integer floorNumber;
    private Integer genderType;
    private Boolean wheelchairAccessible;
    private String location;
    private Boolean shelves;
    private Boolean menstrualDisposal;
    private Integer menstrualProductType;
    private Integer numNegativeRating;
    private Integer numPositiveRating;
    private Integer maintenanceIssueNum;
    private Boolean babyChangingStation;
    private Boolean frangranceFreeSoap;
    private Boolean singleStall;

    @ManyToOne
    @JoinColumn(name = "building_id")
    private Building building;

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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    public Boolean getFrangranceFreeSoap() {
        return frangranceFreeSoap;
    }

    public void setFrangranceFreeSoap(Boolean frangranceFreeSoap) {
        this.frangranceFreeSoap = frangranceFreeSoap;
    }

    public Boolean getSingleStall() {
        return singleStall;
    }

    public void setSingleStall(Boolean singleStall) {
        this.singleStall = singleStall;
    }

    public Building getBuilding() {
        return building;
    }

    public void setBuilding(Building building) {
        this.building = building;
    }
}
