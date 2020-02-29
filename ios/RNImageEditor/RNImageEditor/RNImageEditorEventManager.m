//
//  RNImageEditorEventManager.m
//  RNImageEditor
//
//  Created by Bo Wang on 2020-02-26.
//  Copyright © 2020 Terry. All rights reserved.
//

// #import <Foundation/Foundation.h>
// CalendarManager.m
#import "RNImageEditorEventManager.h"

@implementation RNImageEditorEventManager
{
  bool hasListeners;
}

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"EventReminder"];
}

- (void)emitEventInternal:(NSString *)selectedText
{
    //  NSString *text = selectedText;
    if (hasListeners) {
        [self sendEventWithName:@"EventReminder" body:@{@"selectedText": selectedText}];
    }
}

// Will be called when this module's first listener is added.
- (void)startObserving {
    hasListeners = YES;
    // Set up any upstream listeners or background tasks as necessary
}

// Will be called when this module's last listener is removed, or on dealloc.
- (void)stopObserving {
    hasListeners = NO;
    // Remove upstream listeners, stop unnecessary background tasks
}

+ (id)allocWithZone:(NSZone *)zone {
    static RNImageEditorEventManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}

@end
