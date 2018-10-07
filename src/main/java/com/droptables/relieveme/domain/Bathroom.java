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

    public int getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(int floorNumber) {
        this.floorNumber = floorNumber;
    }

    public int getGenderType() {
        return genderType;
    }
  
    public void setGenderType(int genderType) {
        this.genderType = genderType;
    }

    public boolean getWheelchairAccessibility() {
        return wheelchairAccessible;
    }

    public void setWheelchairAccessibility(int wheelchairAccessible) {
        this.wheelchairAccessible = wheelchairAccessible;
    }

    public string getLocation() {
        return location;
    }

    public void setLocation(string location) {
        this.location = location;
    }

    public boolean getShelves() {
        return shelves;
    }

    public void setShelves(boolean shelves) {
        this.shelves = shelves;
    }

    public boolean getMenstrualDisposal() {
        return menstrualDisposal;
    }

    public void setMenstrualDisposal(boolean menstrualDisposal) {
        this.menstrualDisposal = menstrualDisposal;
    }

    public int getMenstrualProductType() {
        return menstrualProductType;
    }

    public void setMenstrualProductType() {
        this.menstrualProductType = menstrualProductType;
    }

    public int getNegativeRatings() {
        return numNegativeRating;
    }

    public void setNegativeRatings(int numNegativeRating) {
        this.numNegativeRating = numNegativeRating;
    }

    public int getPositiveRatings() {
        return numPositiveRating;    
    }

    public void setPositiveRatings(int numPositiveRating) {
        this.numPositiveRating = numPositiveRating;
    }

    public int getMaintenceIssueNumber() {
        retrun maintenanceIssueNum;
    }
    public void setMaintenceIssueNumber(int maintenanceIssueNum) {
        this.maintenanceIssueNum = maintenanceIssueNum;
    }

    public boolean getBabyChangingStation() {
        return babyChangingStation;
    }

    public void setBabyChangingStation() {
        this.babyChangingStation = babyChangingStation;
    }
    
    public boolean getFrangranceFreeSoap() {
        return frangranceFreeSoap;
    }

    public void setFragranceFreeSoap(boolean frangranceFreeSoap) {
        this.frangranceFreeSoap = frangranceFreeSoap;
    }

    public boolean getSingleStall() {
        return singleStall;
    }

    public void setSingleStall(boolean singleStall) {
        this.singleStall = singleStall;
    }
    
    public Building getBuilding() {
        return building;
    }

    public void setBuilding(Building building) {
        this.building = building;
    }
}
