//
//  ViewController.m
//  PoliceSketch
//
//  Created by Katrina de Guzman on 2017-06-05.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "ViewController.h"
#import "ImageCollection.h"

@interface ViewController ()

@property (nonatomic, strong) ImageCollection * eyes;
@property (nonatomic, strong) ImageCollection * nose;
@property (nonatomic, strong) ImageCollection * mouth;

@end

@implementation ViewController

-(IBAction)leftEyeArrow
{
    [self.eyes previous];
    [eyesImageView setImage:[self.eyes imageAtIndex:self.eyes.counter]];
}

-(IBAction)rightEyeArrow
{
    [self.eyes next];
    [eyesImageView setImage:[self.eyes imageAtIndex:self.eyes.counter]];
}
-(IBAction)leftNoseArrow
{
    [self.nose previous];
    [noseImageView setImage:[self.nose imageAtIndex:self.nose.counter]];
}

-(IBAction)rightNoseArrow
{
    [self.nose next];
    [noseImageView setImage:[self.nose imageAtIndex:self.nose.counter]];
}
-(IBAction)leftMouthArrow
{
    [self.mouth previous];
    [mouthImageView setImage:[self.mouth imageAtIndex:self.mouth.counter]];
}

-(IBAction)rightMouthArrow
{
    [self.mouth next];
    [mouthImageView setImage:[self.mouth imageAtIndex:self.mouth.counter]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.eyes = [[ImageCollection alloc] initWithType:eyes];
    self.nose = [[ImageCollection alloc] initWithType:nose];
    self.mouth = [[ImageCollection alloc] initWithType:mouth];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
