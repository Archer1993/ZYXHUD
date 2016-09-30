//
//  ZYXHUD.h
//  ZYXHUD
//
//  Created by mac mini on 16/9/29.
//  Copyright © 2016年 Archer_Z. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ZYXHUDMode) {
    /** 转圈动画模式，默认值 */
    ZYXHUDModeIndeterminate,
    
    /** 只显示标题 */
    ZYXHUDModeText
};

@interface ZYXHUD : UIView

@property (nonatomic, assign) ZYXHUDMode mode;

@property (nonatomic, strong) NSString *labelText;

- (instancetype)initWithView:(UIView *)view;

- (void)show;

- (void)hide;

@end
