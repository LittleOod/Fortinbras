//
//  FBHierarchyElement.h
//  Fortinbras
//
//  Created by Torsten Schlumm on 4/17/12.
//  Copyright (c) 2012 sliderule software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBHierarchyElement : NSObject 

    
@property (readonly) NSString *uuid;
@property (readonly) NSString *name;
@property (readonly) NSString *comment;

@property (readonly) NSInteger state;

@property (readonly) NSMutableDictionary *properties;

@property (copy) FBHierarchyElement  *parent;
@property (readonly) NSMutableArray   *children;


extern NSString * const FB_ELEMENT_PROPERTY_NAME;
extern NSString * const FB_ELEMENT_PROPERTY_COMMENT;
extern NSString * const FB_ELEMENT_PROPERTY_STATE;

extern NSInteger  const FB_ELEMENT_STATE_UNKNOWN;
extern NSInteger  const FB_ELEMENT_STATE_ERROR;
extern NSInteger  const FB_ELEMENT_STATE_NOT_CONFIGURED;
extern NSInteger  const FB_ELEMENT_STATE_READY;
extern NSInteger  const FB_ELEMENT_STATE_RUNNING;
extern NSInteger  const FB_ELEMENT_STATE_FINISHED;


-(id)init;
-(id)initWithName: (NSString*)name;
-(id)initWithNameAndComment: (NSString*)name comment: (NSString*)comment;

-(NSString*)description;


@end

