//
//  APNumberPadDefaultStyle.m
//  APNumberPad
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Podkovyrin. All rights reserved.
//

#import "APNumberPadDefaultStyle.h"

static inline UIColor *APNP_RGBa(int r, int g, int b, CGFloat alpha) {
    return [UIColor colorWithRed:r / 255.0
                           green:g / 255.0
                            blue:b / 255.0
                           alpha:alpha];
}

@implementation APNumberPadDefaultStyle

#pragma mark - Pad

+ (CGRect)numberPadFrame {
    return CGRectMake(0.0, 0.0, 320.0, 216.0);
}

+ (CGFloat)separator {
    return [UIScreen mainScreen].scale == 2.0 ? 0.5 : 1.0;
}

+ (UIColor *)numberPadBackgroundColor {
    return APNP_RGBa(183, 186, 191, 1.0);
}

#pragma mark - Number button

+ (UIFont *)numberButtonFont {
    return [UIFont systemFontOfSize:28.0 weight:UIFontWeightLight];
}

+ (UIColor *)numberButtonTextColor {
    return [UIColor blackColor];
}

+ (UIColor *)numberButtonBackgroundColor {
    return APNP_RGBa(252, 252, 252, 1.0);
}

+ (UIColor *)numberButtonHighlightedColor {
    return APNP_RGBa(188, 192, 198, 1.0);
}

#pragma mark - Function button

+ (UIFont *)functionButtonFont {
    return [UIFont systemFontOfSize:21.0 weight:UIFontWeightLight];
}

+ (UIColor *)functionButtonTextColor {
    return [UIColor blackColor];
}

+ (UIColor *)functionButtonBackgroundColor {
    return APNP_RGBa(188, 192, 198, 1.0);
}

+ (UIColor *)functionButtonHighlightedColor {
    return APNP_RGBa(252, 252, 252, 1.0);
}

+ (UIImage *)clearFunctionButtonImage {
    NSBundle *frameWorkBundle = [NSBundle bundleForClass:[self class]];
    return [UIImage imageNamed:@"apnumberpad_backspace_icon.png" inBundle:frameWorkBundle compatibleWithTraitCollection:nil];
}

+ (UIImage *)clearFunctionButtonImageHighlighted {
    NSBundle *frameWorkBundle = [NSBundle bundleForClass:[self class]];
    return [UIImage imageNamed:@"apnumberpad_backspace_icon_highlight.png" inBundle:frameWorkBundle compatibleWithTraitCollection:nil];
}

@end
