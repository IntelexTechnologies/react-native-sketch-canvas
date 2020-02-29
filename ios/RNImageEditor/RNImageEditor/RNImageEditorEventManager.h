//
//  RNImageEditorEventManager.h
//  RNImageEditor
//
//  Created by Bo Wang on 2020-02-26.
//  Copyright © 2020 Terry. All rights reserved.
//

// CalendarManager.h
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RNImageEditorEventManager : RCTEventEmitter <RCTBridgeModule>
- (void)emitEventInternal:(NSString *)selectedText;
@end

