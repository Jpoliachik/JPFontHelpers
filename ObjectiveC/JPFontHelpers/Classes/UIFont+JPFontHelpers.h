//
//  UIFont+JPFontHelpers.h
//  JPFontHelpers
//
//  Created by Justin Poliachik on 6/10/14.
//  Copyright (c) 2014 justinpoliachik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (JPFontHelpers)

typedef enum FontWeight{
    FontWeightBold,
    FontWeightBoldItalic,
    FontWeightCondensedBlack,
    FontWeightCondensedBold,
    FontWeightItalic,
    FontWeightLight,
    FontWeightLightItalic,
    FontWeightMedium,
    FontWeightMediumItalic,
    FontWeightUltraLight,
    FontWeightUltraLightItalic,
    FontWeightThin,
    FontWeightThinItalic,
    FontWeightDefault
}FontWeight;

typedef enum FontSize{
    FontSizeExtraSmall,
    FontSizeSmall,
    FontSizeSmallMedium,
    FontSizeMedium,
    FontSizeMediumLarge,
    FontSizeLarge,
    FontSizeExtraLarge
}FontSize;

+ (UIFont *)fontWithSize:(FontSize)size;
+ (UIFont *)fontWithSizeValue:(CGFloat)size;
+ (UIFont *)fontWithWeight:(FontWeight)weight size:(FontSize)size;
+ (UIFont *)fontWithWeight:(FontWeight)weight sizeValue:(CGFloat)size;


@end
