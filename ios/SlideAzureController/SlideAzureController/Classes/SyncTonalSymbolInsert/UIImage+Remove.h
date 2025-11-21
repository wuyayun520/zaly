// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Remove.h
//
//  Created by tiger on 2017/2/21.
//  Copyright © 2017年 xinma. All rights reserved.
//
// https://github.com/WearFlatShoesToWalkTheWorld/WCImageCompress
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (Compress)
@interface UIImage (Remove)

//
//: - (NSData *)compressedImageData;
- (NSData *)cellByCan;


/**
 use timeline compress Strategy
 */
//: - (UIImage *)compressedImage;
- (UIImage *)shapeImage;

//: - (UIImage*)circleImage;
- (UIImage*)fasten;

//: + (NSData *)compressImage:(UIImage *)image ToFileSize:(NSInteger)fileSize;
+ (NSData *)wait:(UIImage *)image push:(NSInteger)fileSize;

/// 图片添加马赛克效果
/// @param orginImage 原图
/// @param level 马赛克等级
//: + (UIImage *)transToMosaicImage:(UIImage*)orginImage blockLevel:(NSUInteger)level;
+ (UIImage *)application:(UIImage*)orginImage past:(NSUInteger)level;

//: @end
@end