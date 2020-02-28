//
//  CanvasHistory.h
//  RNImageEditor
//
//  Created by Mariya Tsymbal on 2020-02-26.
//  Copyright © 2020 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RNImageEditorData.h"
#import "entities/base/MotionEntity.h"

@interface CanvasHistory : NSObject

@property (nonatomic, readonly) RNImageEditorData *prevStroke;
@property (nonatomic, readonly) RNImageEditorData *currStroke;
@property (nonatomic, readonly) MotionEntity *prevEntity;
@property (nonatomic, readonly) MotionEntity *currEntity;

- (instancetype)initWithPreviousStroke:(RNImageEditorData*) prevStroke currentStroke:(RNImageEditorData*) currStroke;
- (instancetype)initWithPreviousEntity:(MotionEntity*) prevEntity currentEntity:(MotionEntity*) currEntity;

@end
