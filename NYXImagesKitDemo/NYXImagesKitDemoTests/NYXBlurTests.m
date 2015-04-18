//
//  NYXImagesKitDemoTests.m
//  NYXImagesKitDemoTests
//
//  Created by Michele Titolo on 4/18/15.
//  Copyright (c) 2015 MacGeneration. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

#import "UIImage+Blurring.h"

@interface NYXBlurTests : FBSnapshotTestCase

@end

@implementation NYXBlurTests

- (UIImage *)bundledImageNamed:(NSString *)name type:(NSString *)type
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:name ofType:type];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    return [[UIImage alloc] initWithData:data];
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBlur
{
    UIImage *originalImage = [self bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *blurred = [originalImage gaussianBlurWithBias:100];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:blurred];
    FBSnapshotVerifyView(imageView, nil);
}

@end
