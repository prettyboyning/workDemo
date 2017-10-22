//
//  UIColor+Hex.h
//  Pods
//
//  Created by Arvin on 16/9/5.
//
//

#import <UIKit/UIKit.h>


@interface UIColor (Hex)

+ (UIColor *)zbj_colorFromHexValue:(unsigned long)hexValue;
+ (UIColor *)zbj_colorFromHexValue:(unsigned long)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)zbj_colorFromRedValue:(NSInteger)redValue
                        greenValue:(NSInteger)greenValue
                         blueValue:(NSInteger)blueValue;
+ (UIColor *)zbj_colorFromRedValue:(NSInteger)redValue
                        greenValue:(NSInteger)greenValue
                         blueValue:(NSInteger)blueValue
                             alpha:(CGFloat)alpha;

/**钉耙*/
/**
 *  从十六进制字符串获取颜色
 *
 *  @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @return color
 */
+ (UIColor *)colorWithHexString:(NSString *)color NS_DEPRECATED_IOS(2_0, 7_0, "使用zbj_colorFromHexValue");


/**
 *  从十六进制字符串获取颜色
 *
 *  @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *  @param alpha 透明度
 *
 *  @return color
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha NS_DEPRECATED_IOS(2_0, 7_0, "使用zbj_colorFromHexValue alpha");


#pragma mark - 适配买家版老版本api
+ (UIColor *)colorWithHex:(NSString *)color NS_DEPRECATED_IOS(2_0, 7_0, "使用zbj_colorFromHexValue");


+ (UIColor *)colorWithHex:(NSString *)color alpha:(CGFloat)alpha NS_DEPRECATED_IOS(2_0, 7_0, "使用zbj_colorFromHexValue alpha");

@end
