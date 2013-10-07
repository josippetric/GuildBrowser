//
//  WoWUtilTests.m
//  GuildBrowser
//
//  Created by Josip Petric on 10/7/13.
//  Copyright (c) 2013 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WoWUtils.h"

@interface WoWUtilTests : XCTestCase

@end

@implementation WoWUtilTests

-(void)testCharacterClassNameLookup
{
    XCTAssertEqualObjects(@"Warrior",
                          [WoWUtils classFromCharacterType:1],
                          @"ClassType should be Warrior");
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  @"This should be Paladin");
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"This should be human");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"This should be Orc");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]], @"This should not be night elf");
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    XCTAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1], @"This should be Grey");
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], @"This should be Purple");
    // add the rest as an exercise
}

@end
