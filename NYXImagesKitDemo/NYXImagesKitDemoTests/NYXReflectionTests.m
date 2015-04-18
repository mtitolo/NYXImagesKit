//
//  NYXReflectionTests.m
//  NYXImagesKit
//
//  Created by Michele Titolo on 4/18/15.
//  Copyright (c) 2015 MacGeneration. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import "NYXImagesKitTestHelper.h"

#import "UIImage+Reflection.h"

@interface NYXReflectionTests : FBSnapshotTestCase

@end

@implementation NYXReflectionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerformanceExample {
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage reflectedImageWithHeight:200 fromAlpha:0.7f toAlpha:0.0];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

@end
