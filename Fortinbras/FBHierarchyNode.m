//
//  FBHierarchyElement.m
//  Fortinbras
//
//  Created by Torsten Schlumm on 4/17/12.
//  Copyright (c) 2012 sliderule software. All rights reserved.
//

#import "FBHierarchyNode.h"

@implementation FBHierarchyNode

NSString * const FB_ELEMENT_PROPERTY_NAME    = @"fb.element.property.name";
NSString * const FB_ELEMENT_PROPERTY_COMMENT = @"fb.element.property.comment";
NSString * const FB_ELEMENT_PROPERTY_STATE   = @"fb.element.property.state";

NSInteger  const FB_ELEMENT_STATE_UNKNOWN        = 0x0;
NSInteger  const FB_ELEMENT_STATE_ERROR          = 0x1;
NSInteger  const FB_ELEMENT_STATE_NOT_CONFIGURED = 0x2;
NSInteger  const FB_ELEMENT_STATE_READY          = 0x3;
NSInteger  const FB_ELEMENT_STATE_RUNNING        = 0x4;
NSInteger  const FB_ELEMENT_STATE_FINISHED       = 0x5;


uuid_t               uuid;
NSMutableDictionary *properties;
NSMutableArray      *children;
FBHierarchyNode  *parent;


@synthesize properties=properties, parent=parent, children=children;


-(NSString*)name
{
    return [[self properties] objectForKey:FB_ELEMENT_PROPERTY_NAME];
}

-(NSString*)comment
{
    return [[self properties] objectForKey:FB_ELEMENT_PROPERTY_COMMENT];
}

-(NSInteger)state
{
    return [[[self properties] objectForKey:FB_ELEMENT_PROPERTY_STATE] integerValue];
}

-(NSString*)uuid
{
    uuid_string_t uuid_string;
    uuid_unparse(uuid, uuid_string);
    return [NSString stringWithUTF8String:uuid_string];
}

-(id)init
{
    return [self initWithName: NSStringFromClass([self class])];
}

-(id)initWithName:(NSString *)name
{
    return [self initWithNameAndComment: name comment:NSStringFromClass([self class])];
}

-(id)initWithNameAndComment:(NSString *)name comment:(NSString *)comment
{
    if(self = [super init]) {
        properties = [[NSMutableDictionary alloc] init];
        children   = [[NSMutableArray alloc] init];
        [properties setObject: name forKey: FB_ELEMENT_PROPERTY_NAME];
        [properties setObject: comment forKey: FB_ELEMENT_PROPERTY_COMMENT];
        [properties setObject: [NSNumber numberWithInteger: FB_ELEMENT_STATE_UNKNOWN] forKey: FB_ELEMENT_PROPERTY_STATE];
        uuid_generate(uuid);
    }
    
    return self;
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"%@: %@ (%@, uuid: %@, state: %i)", NSStringFromClass([self class]), [self name], [self comment], [self uuid], [self state]];
}

@end
