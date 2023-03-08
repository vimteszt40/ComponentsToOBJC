
#import "PaddingLabel.h"

@implementation PaddingLabel

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
    CGRect insectRect = UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(_paddingTop, _paddingLeft, _paddingBottom, _paddingRight));
    CGRect textRect = [super textRectForBounds:insectRect limitedToNumberOfLines:numberOfLines];
  
    UIEdgeInsets invertedInsets = UIEdgeInsetsMake(-_paddingTop, -_paddingLeft, -_paddingBottom, -_paddingRight);
    
    return UIEdgeInsetsInsetRect(textRect, invertedInsets);

}

- (void)drawTextInRect:(CGRect)rect
{
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, UIEdgeInsetsMake(_paddingTop, _paddingLeft, _paddingBottom, _paddingRight))];
    [self drawCorner];
}

-(void)drawCorner{
    
        UIBezierPath *cornersPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds  byRoundingCorners:(UIRectCornerBottomLeft|UIRectCornerBottomRight|UIRectCornerTopLeft|UIRectCornerTopRight) cornerRadii:CGSizeMake(_radius, _radius)];

           CAShapeLayer *maskLayer = [CAShapeLayer layer];
           maskLayer.path = cornersPath.CGPath;
           self.layer.mask = maskLayer;
           self.layer.masksToBounds = TRUE;
}

-(void)prepareForInterfaceBuilder{
     
}

-(void)setRadius:(CGFloat)radius{
    _radius = radius;
    [self cTextInsets];
}

-(void)setPaddingTop:(CGFloat)paddingTop{
    _paddingTop = paddingTop;
    [self cTextInsets];
}

-(void)setPaddingLeft:(CGFloat)paddingLeft{
    _paddingLeft = paddingLeft;
    [self cTextInsets];
}

-(void)setPaddingBottom:(CGFloat)paddingBottom{
    _paddingBottom = paddingBottom;
    [self cTextInsets];
}

-(void)setPaddingRight:(CGFloat)paddingRight{
    _paddingRight = paddingRight;
    [self cTextInsets];
}

-(void)cTextInsets{
    [self invalidateIntrinsicContentSize];
}

@end
