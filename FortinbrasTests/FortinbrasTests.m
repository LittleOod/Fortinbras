//
//  FortinbrasTests.m
//  FortinbrasTests
//
//  Created by Torsten Schlumm on 4/17/12.
//  Copyright (c) 2012 sliderule software. All rights reserved.
//

#import "FortinbrasTests.h"
#import "FBHierarchyNode.h"
#import "FBSession.h"
#import "FBExperiment.h"
#import "FBStep.h"


@implementation FortinbrasTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testFBHierarchyNodeCreation
{

    FBHierarchyNode *node001 = [[FBHierarchyNode alloc] init];
    NSLog(@"node001 -> %@", node001);
    
    FBHierarchyNode *node002 = [[FBHierarchyNode alloc] initWithName: @"node002"];
    NSLog(@"node002 -> %@", node002);

    FBHierarchyNode *node003 = [[FBHierarchyNode alloc] initWithNameAndComment: @"node003" comment: @"comment for node003"];
    NSLog(@"node003 -> %@", node003);

}

- (void)testFBSessionCreation
{
    
    FBSession *session001 = [[FBSession alloc] init];
    NSLog(@"session001 -> %@", session001);
    
    FBSession *session002 = [[FBSession alloc] initWithName:@"session002"];
    NSLog(@"session002 -> %@", session002);
    
    FBSession *session003 = [[FBSession alloc] initWithNameAndComment:@"session003" comment:@"comment for session003"];
    NSLog(@"session003 -> %@", session003);
    
}

- (void)testFBExperimentCreation
{
    
    FBExperiment *experiment001 = [[FBExperiment alloc] init];
    NSLog(@"experiment001 -> %@", experiment001);
    
    FBExperiment *experiment002 = [[FBExperiment alloc] initWithName:@"experiment002"];
    NSLog(@"experiment002 -> %@", experiment002);
    
    FBExperiment *experiment003 = [[FBExperiment alloc] initWithNameAndComment:@"experiment003" comment:@"comment for experiment003"];
    NSLog(@"experiment003 -> %@", experiment003);
    
}

- (void)testFBStepCreation
{
    
    FBStep *step001 = [[FBStep alloc] init];
    NSLog(@"step001 -> %@", step001);
    
    FBStep *step002 = [[FBStep alloc] initWithName:@"step002"];
    NSLog(@"step002 -> %@", step002);
    
    FBStep *step003 = [[FBStep alloc] initWithNameAndComment:@"step003" comment:@"comment for step003"];
    NSLog(@"step003 -> %@", step003);
    
}

@end
