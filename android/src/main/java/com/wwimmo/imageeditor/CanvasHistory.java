package com.wwimmo.imageeditor.utils;

import com.wwimmo.imageeditor.SketchData;
import com.wwimmo.imageeditor.utils.entities.MotionEntity;

public class CanvasHistory {
    public SketchData prevStroke =null, currStroke = null;
    public MotionEntity prevEntity=null, currEntity = null;

    public CanvasHistory(SketchData prevStroke, SketchData currStroke) {
    this.prevStroke = prevStroke;
    this.currStroke = currStroke;
    }

    public CanvasHistory(MotionEntity prevEntity, MotionEntity currEntity) {

        this.prevEntity = prevEntity;
        this.currEntity = currEntity;
    }
}
