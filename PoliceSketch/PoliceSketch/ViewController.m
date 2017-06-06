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

@property (nonatomic) int eyesCounter;
@property (nonatomic) int noseCounter;
@property (nonatomic) int mouthCounter;

@end

@implementation ViewController

- (void)decrementEyes {
    self.eyesCounter--;
    if(self.eyesCounter < 0)
    {
        self.eyesCounter = 4;
    }
}

- (void)incrementEyes {
    self.eyesCounter++;
    if(self.eyesCounter > 4)
    {
        self.eyesCounter = 0;
    }
}

-(IBAction)leftEyeArrow
{
    [self decrementEyes];
    UIImage *eyesImg = [self.eyes imageAtIndex:_eyesCounter];
    [eyesImageView setImage:eyesImg];
}

-(IBAction)rightEyeArrow
{
    [self incrementEyes];
    UIImage *eyesImg = [self.eyes imageAtIndex:_eyesCounter];
    [eyesImageView setImage:eyesImg];
}

- (void)decrementNose {
    self.noseCounter--;
    if(self.noseCounter < 0)
    {
        self.noseCounter = 4;
    }
}

- (void)incrementNose {
    self.noseCounter++;
    if(self.noseCounter > 4)
    {
        self.noseCounter = 0;
    }
}

-(IBAction)leftNoseArrow
{
    [self decrementNose];
    UIImage *noseImg = [self.nose imageAtIndex:_noseCounter];
    [noseImageView setImage:noseImg];
}

-(IBAction)rightNoseArrow
{
    [self incrementNose];
    UIImage *noseImg = [self.nose imageAtIndex:_noseCounter];
    [noseImageView setImage:noseImg];
}
- (void)decrementMouth {
    self.mouthCounter--;
    if(self.mouthCounter < 0)
    {
        self.mouthCounter = 4;
    }
}

- (void)incrementMouth {
    self.mouthCounter++;
    if(self.mouthCounter > 4)
    {
        self.mouthCounter = 0;
    }
}

-(IBAction)leftMouthArrow
{
    [self decrementMouth];
    UIImage *mouthImg = [self.mouth imageAtIndex:_mouthCounter];
    [mouthImageView setImage:mouthImg];
}

-(IBAction)rightMouthArrow
{
    [self incrementMouth];
    UIImage *mouthImg = [self.mouth imageAtIndex:_mouthCounter];
    [mouthImageView setImage:mouthImg];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.eyesCounter = 1;
    self.noseCounter = 1;
    self.mouthCounter = 1;
    
    self.eyes = [[ImageCollection alloc] initWithType:eyes];
    self.nose = [[ImageCollection alloc] initWithType:nose];
    self.mouth = [[ImageCollection alloc] initWithType:mouth];
    
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
