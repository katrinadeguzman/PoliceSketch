//
//  ImageCollection.m
//  PoliceSketch
//
//  Created by Katrina de Guzman on 2017-06-05.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "ImageCollection.h"

@interface ImageCollection ()

@property (nonatomic, strong) NSArray * images;

@end

@implementation ImageCollection

- (instancetype)initWithType:(ImageType)type
{
    self = [super init];
    _counter = 1;
    if (self)
    {
        switch (type)
        {
            case eyes:
                
                self.images = [ImageCollection all:@"eyes"];
                break;
            case nose:
                self.images = [ImageCollection all:@"nose"];
                break;
            case mouth:
                self.images = [ImageCollection all:@"mouth"];
                break;
        }
    }
    return self;
}

- (UIImage *)imageAtIndex:(int)index
{
    return [self.images objectAtIndex:index];
}

+(NSArray*)all:(NSString*)type
{
    NSString* imgName = [NSString stringWithFormat:@"%@", type];
    return  @[[UIImage imageNamed:[imgName stringByAppendingString:@"_1.jpg"]],
              [UIImage imageNamed:[imgName stringByAppendingString:@"_2.jpg"]],
              [UIImage imageNamed:[imgName stringByAppendingString:@"_3.jpg"]],
              [UIImage imageNamed:[imgName stringByAppendingString:@"_4.jpg"]],
              [UIImage imageNamed:[imgName stringByAppendingString:@"_5.jpg"]]];
}

-(void)previous
{
    self.counter--;
    if(self.counter < 0)
    {
        self.counter = 4;
    }
}
-(void)next
{
    self.counter++;
    if(self.counter > 4)
    {
        self.counter = 0;
    }
}
@end
