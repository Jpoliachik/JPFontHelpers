//
//  UIFont+JPFontHelpers.m
//  JPFontHelpers
//
//  Created by Justin Poliachik on 6/10/14.
//  Copyright (c) 2014 justinpoliachik. All rights reserved.
//

#import "UIFont+JPFontHelpers.h"

@implementation UIFont (JPFontHelpers)

#pragma mark - Font Setup

//Helper string to change font names easily.
//Typically, fonts all have the same prefix name.
//In the case a font type does not all contain the same
//prefix, this can be ignored and
//(NSString *)primaryFontNameForWeight:(FontWeight)weight
//must be customized with the correct prefix.
const NSString *kFontFamilyPrefix = @"HelveticaNeue";

//Primary Font
//Uses kFontFamilyPrefix by default for the font name prefix
//Font names below are not always valid
//May require customization
//To see which fonts are available, use the debugging methods below
//listFontNamesForFamily, or listAllFontNames
//Return the NSString of the font name for a weight.
+ (NSString *)primaryFontNameForWeight:(FontWeight)weight
{
    switch (weight) {
        case FontWeightBold:
            return [NSString stringWithFormat:@"%@-Bold", kFontFamilyPrefix];
            break;
        case FontWeightBoldItalic:
            return [NSString stringWithFormat:@"%@-BoldItalic", kFontFamilyPrefix];
            break;
        case FontWeightCondensedBlack:
            return [NSString stringWithFormat:@"%@-CondensedBlack", kFontFamilyPrefix];
            break;
        case FontWeightCondensedBold:
            return [NSString stringWithFormat:@"%@-CondensedBold", kFontFamilyPrefix];
            break;
        case FontWeightItalic:
            return [NSString stringWithFormat:@"%@-Italic", kFontFamilyPrefix];
            break;
        case FontWeightLight:
            return [NSString stringWithFormat:@"%@-Light", kFontFamilyPrefix];
            break;
        case FontWeightLightItalic:
            return [NSString stringWithFormat:@"%@-LightItalic", kFontFamilyPrefix];
            break;
        case FontWeightMedium:
            return [NSString stringWithFormat:@"%@-Medium", kFontFamilyPrefix];
            break;
        case FontWeightMediumItalic:
            return [NSString stringWithFormat:@"%@-MediumItalic", kFontFamilyPrefix];
            break;
        case FontWeightThin:
            return [NSString stringWithFormat:@"%@-Thin", kFontFamilyPrefix];
            break;
        case FontWeightThinItalic:
            return [NSString stringWithFormat:@"%@-ThinItalic", kFontFamilyPrefix];
            break;
        case FontWeightUltraLight:
            return [NSString stringWithFormat:@"%@-UltraLight", kFontFamilyPrefix];
            break;
        case FontWeightUltraLightItalic:
            return [NSString stringWithFormat:@"%@-UltraLightItalic", kFontFamilyPrefix];
            break;
        default:
            return [NSString stringWithFormat:@"%@", kFontFamilyPrefix];
            break;
    }
}

//Font Size by Enum
//To be customized by the programmer
//Returns CGFloat size for each FontSize identifier
+ (CGFloat)valueForFontSize:(FontSize)fontSize
{
    switch (fontSize) {
        case FontSizeExtraSmall:
            return 10;
            break;
        case FontSizeSmall:
            return 13;
            break;
        case FontSizeSmallMedium:
            return 16;
            break;
        case FontSizeMedium:
            return 19;
            break;
        case FontSizeMediumLarge:
            return 22;
            break;
        case FontSizeLarge:
            return 25;
            break;
        case FontSizeExtraLarge:
            return 30;
            break;
        default:
            return 16;
            break;
    }
    
}

#pragma mark - Public Constructors

+ (UIFont *)fontWithSize:(FontSize)size
{
    return [self fontWithWeight:FontWeightDefault size:size];
}

+ (UIFont *)fontWithSizeValue:(CGFloat)size
{
    return [self fontWithWeight:FontWeightDefault sizeValue:size];
}

+ (UIFont *)fontWithWeight:(FontWeight)weight size:(FontSize)size
{
    return [self fontWithWeight:weight size:[self valueForFontSize:size]];
}

+ (UIFont *)fontWithWeight:(FontWeight)weight sizeValue:(CGFloat)size
{
    return [self fontWithName:[self primaryFontNameForWeight:weight] size:size];
}

#pragma mark - Debugging Helpers

+ (void)listFontNamesForForFamily:(NSString *)familyName
{
    NSArray *fontNames = [self fontNamesForFamilyName:familyName];
    if(fontNames){
        for(NSString *font in fontNames){
            NSLog(@"Font Name: %@", font);
        }
    }else{
        NSLog(@"Invalid Font Family Name: %@", familyName);
    }
}

+ (void)listAllFontNames
{
    NSArray *familyNames = [UIFont familyNames];
    for (NSString *fontFamily in familyNames){
        NSArray *fontNames = [UIFont fontNamesForFamilyName:fontFamily];
        NSLog (@"%@ family with fonts: %@", fontFamily, fontNames);
    }
}

@end
