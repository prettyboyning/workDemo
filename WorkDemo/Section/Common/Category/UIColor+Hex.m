//
//  UIColor+Hex.m
//  Pods
//
//  Created by Arvin on 16/9/5.
//
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

#pragma mark - Hex color

+ (UIColor *)zbj_colorFromHexValue:(unsigned long)hexValue {
    return [self zbj_colorFromHexValue:hexValue alpha:1];
}

+ (UIColor *)zbj_colorFromHexValue:(unsigned long)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hexValue & 0xFF)) / 255.0
                           alpha:alpha];
}

+ (UIColor *)zbj_colorFromRedValue:(NSInteger)redValue
                        greenValue:(NSInteger)greenValue
                         blueValue:(NSInteger)blueValue
                             alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:redValue / 255.0f
                           green:greenValue / 255.0f
                            blue:blueValue / 255.0f
                           alpha:alpha];
}

+ (UIColor *)zbj_colorFromRedValue:(NSInteger)redValue
                        greenValue:(NSInteger)greenValue
                         blueValue:(NSInteger)blueValue {
    return [self zbj_colorFromRedValue:redValue greenValue:greenValue blueValue:blueValue alpha:1];
}

+ (UIColor *)colorWithHexString:(NSString *)color {
    return [self colorWithHexString:color alpha:1.0];
}


+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    //删除字符串中的空格
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6)
    {
        return [UIColor clearColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6)
    {
        return [UIColor clearColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}


+ (UIColor *)colorWithHex:(NSString *)color{
    return [self colorWithHexString:color];
}


+ (UIColor *)colorWithHex:(NSString *)color alpha:(CGFloat)alpha {
    return [self colorWithHexString:color alpha:alpha];
}
@end
