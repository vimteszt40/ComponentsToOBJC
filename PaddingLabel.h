
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE @interface PaddingLabel : UILabel

@property (nonatomic) IBInspectable CGFloat radius;
@property (nonatomic) IBInspectable CGFloat paddingTop;
@property (nonatomic) IBInspectable CGFloat paddingLeft;
@property (nonatomic) IBInspectable CGFloat paddingBottom;
@property (nonatomic) IBInspectable CGFloat paddingRight;

@end

NS_ASSUME_NONNULL_END
