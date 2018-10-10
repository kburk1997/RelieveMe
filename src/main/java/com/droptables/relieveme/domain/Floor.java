package com.droptables.relieveme.domain;

import com.droptables.relieveme.domain.key.FloorKey;

import javax.persistence.*;

@Entity
@Table(name = "floor")
public class Floor {

    @EmbeddedId
    private FloorKey floorKey;

    public FloorKey getFloorKey() {
        return floorKey;
    }

    public void setFloorKey(FloorKey floorKey) {
        this.floorKey = floorKey;
    }
}
