//
//  APNumberPad.h
//  APNumberPad
//
//  Created by DianQK on 21/02/2017.
//  Copyright © 2017 dianqk. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for APNumberPad.
FOUNDATION_EXPORT double APNumberPadVersionNumber;

//! Project version string for APNumberPad.
FOUNDATION_EXPORT const unsigned char APNumberPadVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <APNumberPad/PublicHeader.h>


#import "APNumberPadStyle.h"

NS_ASSUME_NONNULL_BEGIN

@protocol APNumberPadDelegate;

///

@interface APNumberPad : UIView <UIInputViewAudioFeedback>

+ (instancetype)numberPadWithDelegate:(id<APNumberPadDelegate>)delegate;
+ (instancetype)numberPadWithDelegate:(id<APNumberPadDelegate>)delegate numberPadStyleClass:(nullable Class)styleClass;

    /**
     *  Left function button for custom configuration
     */
    @property (strong, readonly, nonatomic) UIButton *leftFunctionButton;

    /**
     *  Right function button
     */
    @property (strong, readwrite, nonatomic) UIButton *clearButton;

    /**
     *  The class to use for styling the number pad
     */
    @property (strong, readonly, nonatomic) Class<APNumberPadStyle> styleClass;

    @end

///

@protocol APNumberPadDelegate <NSObject>

    @optional

- (void)numberPad:(APNumberPad *)numberPad functionButtonAction:(UIButton *)functionButton textInput:(UIResponder<UITextInput> *)textInput;
    
    @end

NS_ASSUME_NONNULL_END
