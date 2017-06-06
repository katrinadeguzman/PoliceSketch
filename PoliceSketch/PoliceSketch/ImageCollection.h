//
//  ImageCollection.h
//  PoliceSketch
//
//  Created by Katrina de Guzman on 2017-06-05.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit.UIImage;

typedef NS_ENUM(NSInteger)
{   eyes,
    nose,
    mouth
} ImageType;

@interface ImageCollection : NSObject

@property (nonatomic) int counter;
- (instancetype)initWithType:(ImageType)type;

- (UIImage *)imageAtIndex:(int)index;

-(void)previous;
-(void)next;

@end
