//
//  NYXFilteringTests.m
//  NYXImagesKit
//
//  Created by Michele Titolo on 4/18/15.
//  Copyright (c) 2015 MacGeneration. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import "NYXImagesKitTestHelper.h"

#import "UIImage+Filtering.h"

@interface NYXFilteringTests : FBSnapshotTestCase

@end

@implementation NYXFilteringTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.recordMode = YES;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBrighten
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage brightenWithValue:0.5];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testContrast
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage contrastAdjustmentWithValue:0.5];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testEdgeDetection
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage edgeDetectionWithBias:10];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testEmboss
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage embossWithBias:10];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testGamma
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage gammaCorrectionWithValue:10];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testGrayscale
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage grayscale];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testInvert
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage invert];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testOpacity
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage opacity:0.5];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testSepia
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage sepia];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testSharpen
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage sharpenWithBias:10];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

- (void)testUnsharpen
{
    UIImage *originalImage = [NYXImagesKitTestHelper bundledImageNamed:@"cat" type:@"jpg"];
    UIImage *processed = [originalImage unsharpenWithBias:10];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:processed];
    FBSnapshotVerifyView(imageView, nil);
}

@end
