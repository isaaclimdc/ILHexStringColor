//
//  ViewController.m
//  ILHexStringColorDemo
//
//  Created by Isaac Lim on 1/11/13.
//  Copyright (c) 2013 isaacl.net. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /* Purple */
    self.box1.backgroundColor = [UIColor colorWithHexString:@"#a81be0"];
    self.label1.text = [NSString stringWithFormat:@"Box 1: %@", [UIColor hexStringFromColor:self.box1.backgroundColor]];

    /* Green */
    self.box2.backgroundColor = [UIColor colorWithHexString:@"1BE01B"];
    self.label2.text = [NSString stringWithFormat:@"Box 2: %@",[UIColor hexStringFromColor:self.box2.backgroundColor]];
}

@end
