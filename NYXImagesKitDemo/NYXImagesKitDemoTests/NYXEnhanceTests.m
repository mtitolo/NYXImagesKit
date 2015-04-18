//
//  NYXEnhanceTests.m
//  NYXImagesKit
//
//  Created by Michele Titolo on 4/18/15.
//  Copyright (c) 2015 MacGeneration. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import "NYXImagesKitTestHelper.h"

#import "UIImage+Enhancing.h"

@interface NYXEnhanceTests : FBSnapshotTestCase

@end

@implementation NYXEnhanceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAutoEnhance
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *enhanced = [originalImage autoEnhance];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:enhanced];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testRedEye
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"dog-redeye" type:@"jpg"];
    UIImage *enhanced = [originalImage redEyeCorrection];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:enhanced];
    FBSnapshotVerifyView(imageView, nil);
}


@end
