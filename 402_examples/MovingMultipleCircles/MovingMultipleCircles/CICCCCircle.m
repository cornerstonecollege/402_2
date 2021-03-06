//
//  CICCCCircle.m
//  Circles
//
//  Created by CICCC1 on 2016-02-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "CICCCCircle.h"

@interface CICCCCircle ()

@end

@implementation CICCCCircle

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        _color = [UIColor redColor];
    }
    
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGPoint center = CGPointMake(bounds.size.width / 2, bounds.size.height / 2);
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
 
    [path addArcWithCenter:center
                    radius:bounds.size.width / 2 - 10
                startAngle:0
                  endAngle:2 * M_PI
                 clockwise:YES];
    
    path.lineWidth = 10;
    [self.color setStroke];
    
    [path stroke];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if (self.delegate)
    {
        [self.delegate circleMoved:self andTouch:touch];
    }
}


@end
