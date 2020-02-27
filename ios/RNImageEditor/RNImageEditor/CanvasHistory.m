//
//  CanvasHistory.m
//  RNImageEditor
//
//  Created by Mariya Tsymbal on 2020-02-26.
//  Copyright © 2020 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNImageEditorData.h"
#import "entities/base/MotionEntity.h"
#import "CanvasHistory.h"

@interface CanvasHistory ()

@property (nonatomic, readwrite) RNImageEditorData *prevStroke;
@property (nonatomic, readwrite) RNImageEditorData *currStroke;
@property (nonatomic, readwrite) MotionEntity *prevEntity;
@property (nonatomic, readwrite) MotionEntity *currEntity;

@end

@implementation CanvasHistory


- (instancetype)initWithPreviousStroke:(RNImageEditorData*) prevStroke currentStroke:(RNImageEditorData*) currStroke {
    self = [super init];
    if (self) {
        _prevStroke = prevStroke;
        _currStroke = currStroke;
    }
    return self;
}

- (instancetype)initWithPreviousEntity:(MotionEntity*) prevEntity currentEntity:(MotionEntity*) currEntity {
    self = [super init];
    if (self) {
        _prevEntity = prevEntity;
        _currEntity = currEntity;
    }
    return self;
}

@end
