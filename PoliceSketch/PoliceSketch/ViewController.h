//
//  ViewController.h
//  PoliceSketch
//
//  Created by Katrina de Guzman on 2017-06-05.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *eyesImageView;
    IBOutlet UIImageView *noseImageView;
    IBOutlet UIImageView *mouthImageView;
}
-(IBAction)leftEyeArrow;
-(IBAction)rightEyeArrow;

-(IBAction)leftNoseArrow;
-(IBAction)rightNoseArrow;

-(IBAction)leftMouthArrow;
-(IBAction)rightMouthArrow;


@end

