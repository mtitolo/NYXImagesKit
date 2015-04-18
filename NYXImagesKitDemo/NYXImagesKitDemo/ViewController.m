//
//  ViewController.m
//  NYXImagesKitDemo
//
//  Created by Michele Titolo on 4/18/15.
//  Copyright (c) 2015 MacGeneration. All rights reserved.
//

#import "ViewController.h"
#import <NYXImagesKit/NYXImagesKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *originalImage = [UIImage imageNamed:@"cat.jpg"];
    UIImage *blurred = [originalImage gaussianBlurWithBias:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
