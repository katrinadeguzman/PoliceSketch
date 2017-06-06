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

- (instancetype)initWithType:(ImageType)type;

//- (UIImage *)next;
//- (UIImage *)previous;
- (UIImage *)imageAtIndex:(int)index;

@end
